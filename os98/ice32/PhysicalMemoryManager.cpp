// PhysicalMemoryManager.cpp: implementation of the CPhysicalMemoryManager class.
//
//////////////////////////////////////////////////////////////////////

#ifdef WIN32
	#include <windows.h>
#else
	#include ".\libc\memory.h"
#endif

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "PhysicalMemoryManager.h"

// Definition of static data members.
const char		CPhysicalMemoryManager::m_pClassName[]				= "PhysicalMemoryManager::";
const bool		CPhysicalMemoryManager::m_bDebugMap					= false;
const DWORD*	CPhysicalMemoryManager::m_pPageAllocationMap		= (DWORD*)0x00010800;
const DWORD		CPhysicalMemoryManager::m_iPageSize					= 4096;
const DWORD		CPhysicalMemoryManager::m_iEntriesPerPageTable		= m_iPageSize>>2;
const DWORD		CPhysicalMemoryManager::m_iLog2PageSize				= 12;
const DWORD		CPhysicalMemoryManager::m_iLog2EntriesPerPageTable	= 10;
const DWORD		CPhysicalMemoryManager::m_iMaximumNumberOfPages		= 0x00100000;
const DWORD		CPhysicalMemoryManager::m_iReservedPageCount		= 0x00000300;
const DWORD		CPhysicalMemoryManager::m_iFirstPageOfBaseMemory	= 0x00000031;
const DWORD		CPhysicalMemoryManager::m_iLastPageOfBaseMemory		= 0x0000009f;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CPhysicalMemoryManager::CPhysicalMemoryManager()
{
	// Initialise member variables.
	m_bDebug				= false;
	m_bDebugBreak			= false;
	m_iTotalPages			= 0;
	m_pPageDirectoryTable	= NULL;
}


CPhysicalMemoryManager::~CPhysicalMemoryManager()
{

}


PAGEFRAME CPhysicalMemoryManager::allocate( CPageDirectoryEntry* pPageDirectoryTable, unsigned int iBlockSize )
{
	SPlacement sPlacement;

	// Force allocation size request to page granularity.
	iBlockSize = (((iBlockSize-1)>>m_iLog2PageSize)+1)<<m_iLog2PageSize;

	// Place block in linear address space.
	sPlacement = placeBlockInPageDirectory( pPageDirectoryTable, iBlockSize );

	// Check result of block placement.
	if( sPlacement.placed==true )
	{
		// Block placed, allocate page table entries.
		allocatePages( pPageDirectoryTable, iBlockSize, sPlacement );
	}
	else
	{
		// Allocation failed return NULL.
		sPlacement.page_address = 0;
	}

	// Return linear address of placement.
	return sPlacement.page_address<<12;
}


// Purpose	: Allocates one page of physical memory, returning
//			  the page frame.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
PAGEFRAME CPhysicalMemoryManager::allocatePage( CPageDirectoryEntry* pPageDirectoryTable )
{
	DWORD iPageFrame;
	const char pFunctionName[] = "allocatePage - ";

	// Index first page block of allocation area.
	iPageFrame = m_iLastPageOfBaseMemory + 1;

	// Search page allocation bitmap for unallocated pages.
	while( getPageAllocationBit(iPageFrame)==1 && iPageFrame<m_iTotalPages )
		iPageFrame++;

	// Test if a free page has been found.
	if( iPageFrame<m_iTotalPages )
	{
		// Mark page as allocated.
		setPageAllocationBit( iPageFrame, 1 );
		if( m_bDebug ) cout << m_pClassName << pFunctionName << "Allocated page at 0x" << (iPageFrame<<12) << endl;

		// Map page into kernel memory space with one-to-one physical to linear mapping.
		if( pPageDirectoryTable!=m_pPageDirectoryTable )
		{
			if(m_bDebug) cout << m_pClassName << pFunctionName << "Mapping non-kernel page to kernel." << endl;
			mapPage( m_pPageDirectoryTable, iPageFrame, iPageFrame );
		}
	}
	else
	{
		// Invalidate page returned.
		iPageFrame = 0xffffffff;
	}

#ifdef WIN32
	iPage = ((DWORD)VirtualAlloc( (void*)(iPage<<12), 4096, MEM_COMMIT, PAGE_READWRITE ))>>12;
	if( iPage==NULL )
		iPage = ((DWORD)VirtualAlloc( NULL, 4096, MEM_COMMIT, PAGE_READWRITE ))>>12;
#endif

	// Return page frame index.
	return iPageFrame;
}


bool CPhysicalMemoryManager::allocatePages( CPageDirectoryEntry* pPageDirectoryTable, unsigned int iBlockSize, SPlacement sPlacement )
{
	int iFirstDirectoryTableIndex;
	unsigned int iFirstPageTableIndex;
	int iLastDirectoryTableIndex;
	unsigned int iLastPageTableIndex;
	int iPageTableEntries;
	CPageTableEntry* spPageTable;

	// Calculate directory and page indices.
	iPageTableEntries          = (iBlockSize&0x003ff000)>>12;
	iFirstDirectoryTableIndex  = (sPlacement.page_address)>>10;
	iLastDirectoryTableIndex   = (sPlacement.page_address+iPageTableEntries)>>10;
	iFirstPageTableIndex       = sPlacement.page_address&0x003ff;
	iLastPageTableIndex        = (iFirstPageTableIndex+iPageTableEntries)&0x000003ff;
	
	// Run through first page table only partially used by this allocation.
	if( iFirstDirectoryTableIndex!=iLastDirectoryTableIndex )
	{
		// Locate first page table.
		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex++ );
		
		// Allocate all entries in page table from first.
		while( iFirstPageTableIndex<m_iEntriesPerPageTable )
			spPageTable[iFirstPageTableIndex++].setAllocated( 1 );
	}

	// Allocate all fully used page tables.
	while( iFirstDirectoryTableIndex<iLastDirectoryTableIndex )
	{
		// Get page table address.
		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex );
		
		// Allocate all entries in page table.
		iFirstPageTableIndex = 0;
		while( iFirstPageTableIndex<m_iEntriesPerPageTable )
			spPageTable[iFirstPageTableIndex++].setAllocated( true );
		
		// Next page table.
		iFirstDirectoryTableIndex++;
	}

	// Allocate pages of partially used last page table.
	if( iLastPageTableIndex>0 )
	{
		// Get page table address.
		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex );
		
		// Allocate all entries in page table.
		iFirstPageTableIndex = 0;
		while( iFirstPageTableIndex<iLastPageTableIndex )
			spPageTable[iFirstPageTableIndex++].setAllocated( true );
	}

	// Return success of page allocation.
	return true;
}


// Purpose	: Allocates a block of physical base memory. The memory allocated is
//			  of page granularity positioned anywhere in base memory and mapped
//			  to linear memory with a one-to-one address mapping.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CPhysicalMemoryManager::allocatePagesFromBaseMemory( DWORD iPagesRequired )
{
	DWORD iStartingPage;
	DWORD iContiguousPageCount;
	const char pFunctionName[] = "allocatePageFromBaseMemory - ";

	// Start allocation search at first page.
	iStartingPage = 0;
	if( m_bDebug )cout << m_pClassName << pFunctionName << "Require " << iPagesRequired << " pages." << endl;

	// Loop until pages have been placed.
	do
	{
		// Look for the next free page.
		while( getPageAllocationBit(iStartingPage)==1 && iStartingPage+iPagesRequired<m_iLastPageOfBaseMemory )
			iStartingPage++;

		if( m_bDebug ) cout << "Checking for contiguous space at page 0x" << iStartingPage << endl;

		// Abort space search if end of memory reached.
		if( iStartingPage+iPagesRequired>m_iLastPageOfBaseMemory )
			break;

		// One page has been found.
		iContiguousPageCount = 1;

		// Check pages avaiable against those required.
		while( iContiguousPageCount<iPagesRequired )
		{
			if( getPageAllocationBit(++iStartingPage)==0 )
				iContiguousPageCount++;
			else
				break;
		}

		// If contiguous page count matches the number of required pages stop.
		if( iContiguousPageCount==iPagesRequired )
			break;

		// Look for a free page after the pages just checked.
		iStartingPage += iContiguousPageCount;

	} while( 1 );

	// Invalidate starting page if contiguous pages weren't found.
	if( iContiguousPageCount!=iPagesRequired )
		iStartingPage = 0xffffffff;

	// Return stating page frame index.
	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Start page " << iStartingPage << "." << endl;
	return iStartingPage;
}


// Purpose	: Commits a number of linear pages to physical memory.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CPhysicalMemoryManager::commitMemory( CPageDirectoryTable* pPageDirectoryTable, const void* pLinearBase, DWORD iBytes )
{
	unsigned long iPageCount;
	unsigned long iLinearPage;
	PAGEFRAME iPhysicalPage;
	const char pFunctionName[] = "commitMemory() - ";

	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Directory Table 0x" << (DWORD)pPageDirectoryTable << endl;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Linear Base Address 0x" << (DWORD)pLinearBase << endl;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Number of bytes 0x" << (DWORD)iBytes << endl;

	// Convert bytes to pages.
	iPageCount = iBytes/m_iPageSize;
	if( iBytes%m_iPageSize>0 )
		iPageCount++;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Number of pages 0x" << iPageCount << endl;

	// Convert linear address to linear page.
	iLinearPage = ((ADDRESS)pLinearBase&0xfffff000)>>12;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Linear page frame 0x" << iLinearPage << endl;

	// Map pages into physical memory.
	while( iPageCount>0 )
	{
		// Allocate a page of physical memory.
		iPhysicalPage = allocatePage( pPageDirectoryTable );
		if( iPhysicalPage<0 )
		{
			// Page allocation failed.
			break;
		}
		else
		{
			// Perform linear to physical mapping within specified page tables.
			if(m_bDebug) cout << m_pClassName << pFunctionName << "Allocated physical page 0x" << iPhysicalPage << endl;
			mapPage( pPageDirectoryTable, iLinearPage++, iPhysicalPage );
			iPageCount--;
		}
	}

	// Return number of pages left unmapped.
	return iPageCount;
}


// Purpose	: Counts the number of memory pages avaiable.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
unsigned long CPhysicalMemoryManager::countPages()
{
	unsigned long iTestValue;
	volatile unsigned long* pPage;

	// Start page probe above kernel.
	pPage = (unsigned long*)0x00600000;

#ifndef WIN32
	// Attempt to access pages until access fails.
	while( true )
	{
		iTestValue = *pPage;
		*pPage = ~*pPage;
		if( iTestValue==*pPage )			
			break;
		else
			pPage += 4096;
	}
#else
	// Force result to 48Mb.
	pPage = (unsigned long*)0x03000000;
#endif

	// Return avaiable pages.
	return ((unsigned long)pPage)/4096;
}


// Purpose	: Initialises the physical memory manager,
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
ERRORCODE CPhysicalMemoryManager::create()
{
	DWORD iPage;

	// Identify the amount of physical memory available.
	m_iTotalPages = countPages();
	cout << "Available memory pages 0x" << m_iTotalPages << endl;

	// Initialise allocation map.
#ifdef WIN32
	m_pPageAllocationMap = (const DWORD*)VirtualAlloc( (void*)m_pPageAllocationMap, m_iMaximumNumberOfPages>>3, MEM_COMMIT, PAGE_READWRITE );
	if( m_pPageAllocationMap==NULL )
		m_pPageAllocationMap = (const DWORD*)VirtualAlloc( NULL, m_iMaximumNumberOfPages>>3, MEM_COMMIT, PAGE_READWRITE );
#endif
	// Clear all page allocation bits in map.
	if( m_bDebug )cout << "Allocation bitmap of 0x" << (DWORD)(m_iTotalPages>>3) << " bytes located at 0x" << (DWORD)m_pPageAllocationMap << endl;
	memset( (void*)m_pPageAllocationMap, 0x00000000, m_iMaximumNumberOfPages>>3 );
	
	// Reserve kernel pages.
	//
	// 0x00000000 - 0x000007ff IDT
	// 0x00000800 - 0x000107ff GDT
	// 0x00010800 - 0x000307ff Physical page allocation map
	// 0x00030800 - 0x00030fff Not used(overlapped by last page of allocation map)
	// 0x00031000 - 0x0009ffff Free base memory
	// 0x000A0000 - 0x000fffff IO, Video, ROM
	// 0x00100000 - 0x00200000 Heap
	// 0x00200000 - 0x00300000 This program
	// 0x00300000 - 0xffffffff Free
	//
	memset( (void*)m_pPageAllocationMap, 0xffffffff, m_iReservedPageCount>>3 );

	// Free base memory.
	for( iPage=m_iFirstPageOfBaseMemory ; iPage<m_iLastPageOfBaseMemory ; iPage++ )
		setPageAllocationBit( iPage, 0 );

	// Create page directory.
	m_pPageDirectoryTable = createPageDirectory();
	Application.getSystem().getCPU().setPageDirectoryTable( m_pPageDirectoryTable );

	// Map all physical memory to kernel linear space with one-to-one mapping.
	mapPages( m_pPageDirectoryTable, 0, 0, m_iTotalPages );

	//cout << "Page directory" << endl;
	//Application.getSystem().getCPU().dumpMemory( (unsigned char*)(Application.getSystem().getCPU().getPageDirectoryTable()) );
	//cout << "First page table" << endl;
	//Application.getSystem().getCPU().dumpMemory( (unsigned char*)((((CPageDirectoryEntry*)(Application.getSystem().getCPU().getPageDirectoryTable()))->getPageTable())<<12) );

	// Enable paging mechanism.
	Application.getSystem().getCPU().setPagingEnabled( true );

	// Always return true.
	return EC_NONE;
}


// Purpose	: Returns the bit index of the first clear bit in the
//			  given dword. Valid return values are 0 through 31,
//			  a return value of 32 indicates not clear bit was
//			  present.
//
// Author	: Daniel J Hawkins
//
// Date		: 03/03/98
//
// Modification History
// Date		Initials	Reason
//
BYTE CPhysicalMemoryManager::firstClearBit( DWORD iDWord )
{
	BYTE iBit;

	// Check byte 0.
	iBit = firstClearBitInByte( (BYTE)(iDWord&0x000000ff) );
	if( iBit==8 )
	{
		// Check byte 1.
		iBit = 8 + firstClearBitInByte( (BYTE)((iDWord&0x0000ff00)>>8) );
		if( iBit==16 )
		{
			// Check byte 2.
			iBit = 16 + firstClearBitInByte( (BYTE)((iDWord&0x00ff0000)>>16) );
			if( iBit==24 )
			{
				// Check byte 3.
				iBit = 24 + firstClearBitInByte( (BYTE)((iDWord&0xff000000)>>24) );
			}
		}
	}

	// Return bit index.
	return iBit;
}


// Purpose	: Allocates one page of physical memory, returning
//			  the page frame.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
BYTE CPhysicalMemoryManager::firstClearBitInByte( BYTE iByte )
{
	BYTE iMask;
	BYTE iBit;

	// Start scan at first bit.
	iBit = 0;
	iMask = 1;

	// Scan bits.
	while( iBit<8 )
	{
		if( (iByte&iMask)==0 )
			break;
		iMask <<= 1;
		iBit++;
	}
	
	// Return first free bit.
	return iBit;
}


// Purpose	: Frees one or more contiguous pages of physical memory.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::freePages( DWORD iStartPage, DWORD iPageCount )
{
	// Count down pages left to free.
	if( m_bDebug ) cout << m_pClassName << "freePages() - Start " << iStartPage << " count " << iPageCount << endl;
	while( iPageCount>0 )
	{
		// Reduces number of pages left to free.
		iPageCount--;

		// Free page by zeroing allocation bit.
		setPageAllocationBit( iStartPage++, 0 );
	}
}


// Purpose	: Returns the page allocation bit for a given page.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
inline DWORD CPhysicalMemoryManager::getPageAllocationBit( DWORD iPage )
{
	// Read allocation dword(divide by 32 as there're 32 allocation bits per dword).
	return (m_pPageAllocationMap[iPage>>5]&(1<<(iPage%32))) >> (iPage%32);
}


// Purpose	: Returns a pointer to the page directory.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageDirectoryEntry* CPhysicalMemoryManager::getPageDirectory()
{
	CPageDirectoryEntry* spPageDirectoryAddress;
	
	// Load page directory address.
	spPageDirectoryAddress = (CPageDirectoryEntry*)(Application.getSystem().getCPU().getPageDirectoryTable());
	
	// Return physical address of page directory.
	return spPageDirectoryAddress;
}


// Purpose	: Returns the number of bytes per allocation page.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CPhysicalMemoryManager::getBytesPerPage() const
{
	// Return the number of bytes in an allocation page.
	return m_iPageSize;
}


// Purpose	: Returns a pointer to the specified page table.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageTableEntry* CPhysicalMemoryManager::getPageTable( CPageDirectoryTable* pPageDirectoryTable, DWORD iPageDirectoryIndex )
{
	// Extract physical address of page table.
	return (CPageTableEntry*)((pPageDirectoryTable[iPageDirectoryIndex].getPageTable())<<12);
}


// Purpose	: Return a pointer to the page table entry that represents the
//			  specified linear page frame. 
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageTableEntry* CPhysicalMemoryManager::getPageTableEntry( CPageDirectoryTable* pPageDirectoryTable, DWORD iLinearPageFrame )
{
	CPageTableEntry* pPageTableEntry;
	const char pFunctionName[] = "getPageTableEntry() - ";

	// Get page table containing linear page frame.
	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Page Directory Table 0x" << (DWORD)pPageDirectoryTable << endl;
	pPageTableEntry = getPageTable( pPageDirectoryTable, (WORD)(iLinearPageFrame/m_iEntriesPerPageTable) );
	if( pPageTableEntry==NULL )
	{ 
		// Create a page table for the mapping.
		if( m_bDebug ) cout << m_pClassName << pFunctionName << "New PT to contain PF 0x" << iLinearPageFrame << endl;
		pPageTableEntry = createPageTable( pPageDirectoryTable, (WORD)(iLinearPageFrame/m_iEntriesPerPageTable) );
	}

	// Check validity of page table.
	if( (ADDRESS)pPageTableEntry!=0xffffffff )
		pPageTableEntry = &(pPageTableEntry[iLinearPageFrame%m_iEntriesPerPageTable]);

	// Return pointer to specified entry in page table.
	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Page table entry 0x" << (DWORD)pPageTableEntry << endl;
	return pPageTableEntry;
}


// Purpose	: Attempts to place a memory allocation block at the
//			  specified page table.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPhysicalMemoryManager::SPlacement CPhysicalMemoryManager::placeBlockInPageTable( CPageDirectoryEntry* pPageDirectoryTable, unsigned int iBlockSize, unsigned int iPageDirectoryIndex, SPlacement sPlacement )
{
	unsigned int iFirstPageIndex;
	unsigned int iLimitPageIndex;
	unsigned int iAvailableSpace;
	unsigned int iAbsolutePageIndex;
	CPageTableEntry* pPageTable;

	// Calculate linear base address represented by the first page table entry.
	iAbsolutePageIndex = iPageDirectoryIndex<<m_iLog2EntriesPerPageTable;

	// Get base address of page table.
	pPageTable = getPageTable( pPageDirectoryTable, iPageDirectoryIndex );

	// Assume this page is not full as we're trying to place a block in it.
	sPlacement.full = 0;

	// Start free page search with first entry, never allocate null page.
	if( iPageDirectoryIndex==0 )
		iFirstPageIndex = 1;
	else
		iFirstPageIndex = 0;

	// Look for free page ranges in this page table.
	while( iFirstPageIndex<m_iPageSize/sizeof(CPageTableEntry) && sPlacement.placed==0 )
	{
		// Locate starting page of free linear space.
		while( iFirstPageIndex<m_iPageSize/sizeof(CPageTableEntry) )
		{
			// Check present bit.
			if( pPageTable[iFirstPageIndex].getAllocated()==0 )
				break;
			else
			{
				// Update placement base address.
				iFirstPageIndex++;
				sPlacement.page_address = iAbsolutePageIndex+iFirstPageIndex;
			}
		}

		// First page must be valid to continue placement in the page table. 
		if( iFirstPageIndex<m_iEntriesPerPageTable )
		{
			// Locate limiting page table entry.
			iLimitPageIndex = iFirstPageIndex+1;
			while( iLimitPageIndex<m_iPageSize/sizeof(CPageTableEntry) )
			{
				// Check present bit.
				if( pPageTable[iLimitPageIndex].getAllocated()!=0 )
					break;
				iLimitPageIndex++;
			}

			// Check for page table index overrun.
			if( iLimitPageIndex==m_iPageSize/sizeof(CPageTableEntry) )
				iLimitPageIndex = m_iEntriesPerPageTable-1;

			// Calculate contiguous space limited only by page table.
			iAvailableSpace = (iAbsolutePageIndex+iLimitPageIndex+1-sPlacement.page_address)<<m_iLog2PageSize;
			
			// Flag block as placed if enough space has been found.
			if( iBlockSize<=iAvailableSpace )
			{
				// Block can be placed,
				sPlacement.placed = 1;
			}

			// Try placement at next free page entry after current limit page.
			iFirstPageIndex = iLimitPageIndex+1;
		}
		else
		{
			// Mark page table as full.
			sPlacement.full = 1;
		}
	}

	// Return success of placement.
	return sPlacement;
}


// Purpose	: Creates a new page directory table,
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageDirectoryEntry* CPhysicalMemoryManager::createPageDirectory()
{
	PAGEFRAME iPageFrame;
	CPageDirectoryEntry* pPageDirectoryTable;

	// Allocate a physical page for the page directory table.
	iPageFrame = allocatePage( m_pPageDirectoryTable );
	if( iPageFrame<0 )
	{
		// Invalid page frame index.
		pPageDirectoryTable = NULL;
	}
	else
	{
		// Convert page frame index to physical address.
		pPageDirectoryTable = (CPageDirectoryEntry*)(((unsigned long)iPageFrame)<<12);

		// Create the page directory.
		if( m_bDebug ) cout << "Creating page directory at 0x" << (DWORD)pPageDirectoryTable << endl;
		memset( (void*)pPageDirectoryTable, 0x00000000, m_iPageSize );
	}

	// Return physcial address of page directory table.
	return pPageDirectoryTable;
}


// Purpose	: Creates a new page table,
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageTableEntry* CPhysicalMemoryManager::createPageTable( CPageDirectoryEntry* pPageDirectory, WORD iPageDirectoryIndex )
{
	DWORD iPageTableFrame;
	CPageDirectoryEntry* pPageDirectoryEntry;

	// Reference page directory entry for the new page table.
	pPageDirectoryEntry = &(pPageDirectory[iPageDirectoryIndex]);

	// Allocate a page for the page table.
	iPageTableFrame = allocatePage( pPageDirectory );
	if( iPageTableFrame!=0xffffffff )
	{
		pPageDirectoryEntry->setPresent( true );
		pPageDirectoryEntry->setReadWrite( true );
		pPageDirectoryEntry->setPageTable( iPageTableFrame );
	}

	// Return first page table entry.
	return (CPageTableEntry*)(iPageTableFrame<<12);
}


// Purpose	: Maps the global address space into the specified paging structure.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::mapGlobalPages( CPageDirectoryTable* pPageDirectoryTable )
{
	// Perform 1 to 1 mapping of physical to linear address space for kernel area.
	mapPages( pPageDirectoryTable, 0x00000000, 0x00000000, m_iReservedPageCount );
}


// Purpose	: Maps a single physical pages to a linear page.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::mapPage( CPageDirectoryTable* pPageDirectoryTable, DWORD iLinearPageFrame, DWORD iPhysicalPageFrame )
{
	CPageTableEntry* pPageTableEntry;
	const char pFunctionName[] = "mapPage() - ";

	// Locate page table entry for linear page.
	if(m_bDebug) cout << m_pClassName << pFunctionName << "PDT 0x" << (DWORD)pPageDirectoryTable << " LPF 0x" << iLinearPageFrame << " PPF 0x" << iPhysicalPageFrame << endl;
	pPageTableEntry = getPageTableEntry( pPageDirectoryTable, iLinearPageFrame );
	if( (DWORD)pPageTableEntry!=0xffffffff )
	{
		// Set physical page mapping.
		if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Table Entry 0x" << (DWORD)pPageTableEntry << endl;
		pPageTableEntry->clear();
		pPageTableEntry->setAllocated( true );
		pPageTableEntry->setPresent( true );
		pPageTableEntry->setReadWrite( true );
		pPageTableEntry->setPageFrame( iPhysicalPageFrame );
	}
}


// Purpose	: Maps a range of physical pages to a range of linear pages.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::mapPages( CPageDirectoryTable* pPageDirectoryTable, DWORD iLinearPage, DWORD iPhysicalPage, DWORD iPageCount )
{
	// Map rage of pages.
	while( iPageCount>0 )
	{
		mapPage( pPageDirectoryTable, iLinearPage++, iPhysicalPage++ );
		iPageCount--;
	}
}


// Purpose	: Attempts to place a memory allocation block.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPhysicalMemoryManager::SPlacement CPhysicalMemoryManager::placeBlockInPageDirectory( CPageDirectoryEntry* pPageDirectoryTable, unsigned int iBlockSize )
{
	unsigned int iPageDirectoryIndex;
	SPlacement sPlacement;
	CPageDirectoryEntry* spPageDirectory;

	// Get base address of page directory table.
	spPageDirectory = getPageDirectory();

	// Initialise placement information.
	sPlacement.placed       = 0;
	sPlacement.page_address = 1;

	// Run though array of page directory entries.
	iPageDirectoryIndex = 0;
	while( iPageDirectoryIndex<m_iPageSize/sizeof(CPageDirectoryEntry) )
	{
		// Check present bit.
		if( spPageDirectory[iPageDirectoryIndex].getAllocated()==false )
		{
			// Edit page directory entry and allocate a page for it.
			spPageDirectory[iPageDirectoryIndex].setPresent( true );
			spPageDirectory[iPageDirectoryIndex].setReadWrite( true );
			spPageDirectory[iPageDirectoryIndex].setUserSupervisor( true );
			spPageDirectory[iPageDirectoryIndex].setWriteThrough( true );
			spPageDirectory[iPageDirectoryIndex].setCacheDisabled( true );
			spPageDirectory[iPageDirectoryIndex].setAccessed( true );
			spPageDirectory[iPageDirectoryIndex].setReserved( false );
			spPageDirectory[iPageDirectoryIndex].setPageSize( true );
			spPageDirectory[iPageDirectoryIndex].setGlobalPage( true );
			spPageDirectory[iPageDirectoryIndex].setAllocated( true );
			spPageDirectory[iPageDirectoryIndex].setFull( false );
			spPageDirectory[iPageDirectoryIndex].setAvailable( false );
			spPageDirectory[iPageDirectoryIndex].setPageTable( allocatePage(pPageDirectoryTable) );
		}

		// Place block in page table if not marked as full.
		if( spPageDirectory[iPageDirectoryIndex].getFull()==false )
		{
			sPlacement = placeBlockInPageTable( pPageDirectoryTable, iBlockSize, iPageDirectoryIndex, sPlacement );
			spPageDirectory[iPageDirectoryIndex].setFull( sPlacement.full );

			// Check placement state.
			if( sPlacement.placed==1 )
				break;
		}

		// Move to next page directory entry.
		iPageDirectoryIndex++;
	}

	// Return placement state.
	return sPlacement;
}


// Purpose	: Returns the specified DWORD with the specified bit
//			  set to 1.
//
// Author	: Daniel J Hawkins
//
// Date		: 03/03/98
//
// Modification History
// Date		Initials	Reason
//
DWORD CPhysicalMemoryManager::OLD_setBit( DWORD iDWord, BYTE iBit )
{
	DWORD iMask;
	
	// Create mask with bit set is specified position.
	iMask = 1<<iBit;

	// Return bit mask combined with specified dword.
	return iDWord|iMask;
}


// Purpose	: Sets the debug status of the object.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/05/99
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::setDebug( bool bDebug )
{
	// Set debug status.
	m_bDebug = bDebug;
}


// Purpose	: Sets the debug break status of the object.
//
// Author	: Daniel J Hawkins
//
// Date		: 08/06/99
//
// Modification History
// Date		Initials	Reason
//
void CPhysicalMemoryManager::setDebugBreak( bool bDebugBreak )
{
	// Set debug break status.
	m_bDebugBreak = bDebugBreak;
}


// Purpose	: Sets the page allocation bit for a given page.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
inline void CPhysicalMemoryManager::setPageAllocationBit( DWORD iPage, DWORD iBitValue )
{
	DWORD* pAllocationDWord;

	// Set bit appropriately.
	if( m_bDebugMap ) cout << "setPageAllocationBit(" << iPage << ") " << m_pPageAllocationMap[iPage>>5];
	pAllocationDWord = (DWORD*)&(m_pPageAllocationMap[iPage>>5]);
	if( iBitValue==0 )
	{
		// Clear allocation bit.
		*pAllocationDWord &= (~(1<<(iPage%32)));
	}
	else
	{
		// Set allocation bit.
		*pAllocationDWord |= 1<<(iPage%32);
	}
	if( m_bDebugMap ) cout << " => " << m_pPageAllocationMap[iPage>>5] << endl;
}


// Purpose	: Converts a virtual address withing the specified page directory
//			  to an actual physical address.
//
// Author	: Daniel J Hawkins
//
// Date		: 03/06/99
//
// Modification History
// Date		Initials	Reason
//
void* CPhysicalMemoryManager::virtualToPhysical( CPageDirectoryTable* pPageDirectoryTable, const void* pVirtualAddress ) const
{
	DWORD iPageDirectoryIndex;
	DWORD iPageTableIndex;
	DWORD iOffset;
	DWORD iVirtualAddress;
	CPageTableEntry* pPageTable;
	void* pPhysicalAddress;
	const char pFunctionName[] = "virtualToPhysical() - ";

	// Cast virtual address to a dword.
	iVirtualAddress = (DWORD)pVirtualAddress;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Directory 0x" << (DWORD)pPageDirectoryTable << endl;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Virtual address 0x" << iVirtualAddress << endl;

	// Split virtual addresss into constituent parts.
	iPageDirectoryIndex = (iVirtualAddress&0xffc00000)>>22;	// 31-22
	iPageTableIndex		= (iVirtualAddress&0x003ff000)>>12; // 21-12
	iOffset				= (iVirtualAddress&0x00000fff);		// 11-0

	// Get pointer to page table.
	pPageTable = (CPageTableEntry*)((pPageDirectoryTable[iPageDirectoryIndex].getPageTablePointer()));
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Table 0x" << (DWORD)pPageTable << endl;
	pPhysicalAddress = pPageTable[iPageTableIndex].getPagePointer();

	// Convert page to physical address.
	pPhysicalAddress = (BYTE*)pPhysicalAddress + iOffset;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Physical Address 0x" << (DWORD)pPhysicalAddress << endl;

	// Return address.
	return pPhysicalAddress;
}
