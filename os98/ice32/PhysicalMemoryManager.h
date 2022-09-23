// PhysicalMemoryManager.h: interface for the CPhysicalMemoryManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PHYSICALMEMORYMANAGER_H__4887F0E2_AA41_11D1_B576_000000000000__INCLUDED_)
#define AFX_PHYSICALMEMORYMANAGER_H__4887F0E2_AA41_11D1_B576_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "Errors.h"
#include "PageTableEntry.h"
#include "PageDirectoryEntry.h"


// Memory allocation type.
enum EAllocationType { AT_NULL=0, AT_COMMIT=1 };


// Memory permission types.
enum EMemoryType	{	
						MT_NULL					= 0, 
						MT_READ					= 1, 
						MT_WRITE				= 2, 
						MT_READ_WRITE			= 3,
						MT_EXECUTE				= 4,
						MT_EXECUTE_READ			= 5,
						MT_EXECUTE_READ_WRITE	= 7
					};


// Purpose	: Definition of the page based physical memory allocation class.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
class CPhysicalMemoryManager  
{
	// Static constants.
	static const char	m_pClassName[];
	static const bool	m_bDebugMap;
	static const DWORD	m_iPageSize;
	static const DWORD	m_iEntriesPerPageTable;
	static const DWORD	m_iLog2PageSize;
	static const DWORD	m_iLog2EntriesPerPageTable;
	static const DWORD	m_iMaximumNumberOfPages;
	static const DWORD	m_iReservedPageCount;
	static const DWORD*	m_pPageAllocationMap;	
	static const DWORD	m_iFirstPageOfBaseMemory;
	static const DWORD	m_iLastPageOfBaseMemory;	

	// Allocation placement structure.
	struct SPlacement
	{
		unsigned int placed             :  1;
		unsigned int full               :  1;   
		unsigned int page_address       : 20;
	};


	struct SLinearAddress
	{
		unsigned int offset             : 12;
		unsigned int page_table_entry   : 10;
		unsigned int directory_entry    : 10;
	};

	// Private data members.
	bool					m_bDebug;
	bool					m_bDebugBreak;
	DWORD					m_iTotalPages;
	CPageDirectoryEntry*	m_pPageDirectoryTable;

	// Private member functions.
	PAGEFRAME				allocate( CPageDirectoryTable*, unsigned int );
	PAGEFRAME				allocatePage( CPageDirectoryTable* );
	bool					allocatePages( CPageDirectoryTable*, unsigned int, SPlacement );
	unsigned long			countPages();
	CPageTableEntry*		createPageTable( CPageDirectoryEntry*, WORD );
	BYTE					firstClearBit( DWORD );
	BYTE					firstClearBitInByte( BYTE );	
	DWORD					getPageAllocationBit( DWORD );
	CPageDirectoryEntry*	getPageDirectory();
	CPageTableEntry*		getPageTable( CPageDirectoryTable*, DWORD );
	CPageTableEntry*		getPageTableEntry( CPageDirectoryTable*, DWORD );
	void					mapPage( CPageDirectoryTable*, DWORD, DWORD );
	void					mapPages( CPageDirectoryTable*, DWORD, DWORD, DWORD );		
	SPlacement				placeBlockInPageDirectory( CPageDirectoryTable*, unsigned int );
	SPlacement				placeBlockInPageTable( CPageDirectoryTable*, unsigned int, unsigned int, SPlacement );
	DWORD					OLD_setBit( DWORD, BYTE );
	void					setPageAllocationBit( DWORD, DWORD );

public:
							CPhysicalMemoryManager();
	virtual					~CPhysicalMemoryManager();

	// Public member functions.
	DWORD					allocatePagesFromBaseMemory( DWORD );	
	unsigned long			commitMemory( CPageDirectoryTable*, const void*, DWORD );
	ERRORCODE				create();
	CPageDirectoryEntry*	createPageDirectory();
	void					freePages( DWORD, DWORD );
	DWORD					getBytesPerPage() const;
	void					mapGlobalPages( CPageDirectoryTable* );
	void					setDebug( bool );
	void					setDebugBreak( bool );
	void*					virtualToPhysical( CPageDirectoryTable*, const void* ) const;
};

#endif // !defined(AFX_PHYSICALMEMORYMANAGER_H__4887F0E2_AA41_11D1_B576_000000000000__INCLUDED_)
