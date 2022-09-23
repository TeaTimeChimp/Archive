// Heap.cpp: implementation of the CHeap class.
//
//////////////////////////////////////////////////////////////////////
#include "Heap.h"
#include "Null.h"

#ifdef WIN32
	#include <windows.h>
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CHeap::CHeap( void* pBase )
{
	// Initialise member variables.
	m_iAllocations	= 0;
	m_pBaseBlock	= (SAllocationBlock*)pBase;	
	m_iLimit		= 0x00100000;

#ifdef WIN32
	// Allocate virtual address space for debugging.
	VirtualAlloc( m_pBaseBlock, m_iLimit, MEM_COMMIT, PAGE_READWRITE );
#endif

	// Build first block to describe free memory space.
	m_pBaseBlock->m_iSignature	= 'HEAP';
	m_pBaseBlock->m_bInUse		= false;
	m_pBaseBlock->m_pNext		= (SAllocationBlock*)(((unsigned long)m_pBaseBlock)+m_iLimit);
}


CHeap::~CHeap()
{

}


void* CHeap::free( void* pDataSpace )
{
	SAllocationBlock* pBlock;
	
	// Validate pointer.
	if( pDataSpace!=NULL )
	{
		// Point to allocation block immediately before dataspace.
		pBlock = (SAllocationBlock*)((char*)pDataSpace-sizeof(SAllocationBlock));

		// Check allocation blocks signature.
		if( pBlock->m_iSignature=='HEAP' )
		{
			pBlock->m_bInUse = false;
			if( pBlock->m_pNext!=NULL )
			{
				if( pBlock->m_pNext->m_bInUse==false )
				{
					// Coaless space.
					pBlock->m_pNext = pBlock->m_pNext->m_pNext;
				}
			}

			// Signal block freed.
			pDataSpace = NULL;
		}
	}

	// Return pointer reset,
	return pDataSpace;

}


// Purpose	: Allocates a block of at least iSize bytes.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
void* CHeap::allocate( unsigned long iSize )
{
	void* pDataSpace;
	SAllocationBlock* pFreeBlock;
	SAllocationBlock* pNext;
	unsigned int iFreeSpace;

	// Assume allocation failure.
	pDataSpace = NULL;
	
	// Validate block size.
	if( iSize>0 )
	{
		// Granulate allocation size request.
		iSize = granulate( iSize );

		// Point to first block.
		pFreeBlock = m_pBaseBlock;
		while( pDataSpace==NULL && pFreeBlock!=m_pBaseBlock+m_iLimit )
		{
			// Check used state of block.			
			if( pFreeBlock->m_bInUse==false )
			{
				// Check avaiable size.
				iFreeSpace = (char*)(pFreeBlock->m_pNext)-(char*)pFreeBlock;
				if( iFreeSpace>=iSize )
				{
					// Enough space at this location.
					pFreeBlock->m_bInUse = true;

					// Pointer to data space.
					pDataSpace = (char*)pFreeBlock+granulate(sizeof(SAllocationBlock));

					// Insert a new allocation block if possible.
					iFreeSpace -= iSize;
					if( iFreeSpace>=granulate(sizeof(SAllocationBlock))+4 )
					{
						// Insert a new allocation block.
						pNext = pFreeBlock->m_pNext;
						pFreeBlock->m_pNext	= (SAllocationBlock*)((char*)pDataSpace+iSize);
						pFreeBlock->m_pNext->m_iSignature	= 'HEAP';
						pFreeBlock->m_pNext->m_bInUse		= false;
						pFreeBlock->m_pNext->m_pNext		= pNext;						
					}					
				}
			}
			// Move to next block.
			pFreeBlock = pFreeBlock->m_pNext;
		}
	}

	// Return a pointer to the data space.
	return pDataSpace;
}


// Purpose	: Converts a raw size to a granulated size large or equal to
//			  the input value.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/02/98
//
// Modification History
// Date		Initials	Reason
//
unsigned int CHeap::granulate( unsigned int iSize )
{
	// Granulate size.
	return (((iSize-1)>>2)+1)<<2;
}