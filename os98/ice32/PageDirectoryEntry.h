// PageDirectoryEntry.h: interface for the CPageDirectoryEntry class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PAGEDIRECTORYENTRY_H__350767B2_AB9E_11D1_B581_000000000000__INCLUDED_)
#define AFX_PAGEDIRECTORYENTRY_H__350767B2_AB9E_11D1_B581_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000


// Application include files.
#include "CPUTypes.h"
#include "PageTableEntry.h"


// Wrapper class for the 80x86 page directory entry structure.
class CPageDirectoryEntry  
{
	DWORD m_iPresent          :  1;
	DWORD m_iReadWrite        :  1;
	DWORD m_iUserSupervisor   :  1;
	DWORD m_iWriteThrough     :  1;
	DWORD m_iCacheDisabled    :  1;
	DWORD m_iAccessed         :  1;
	DWORD m_iReserved         :  1;
	DWORD m_iPageSize         :  1;
	DWORD m_iGlobalPage       :  1;
	DWORD m_iAllocated        :  1;   // Specified by ICE.
	DWORD m_iFull             :  1;   // Specified by ICE.
	DWORD m_iAvailable        :  1;
	DWORD m_iPageTableFrame	  : 20;

public:
	// Public constructor and destructor.
						CPageDirectoryEntry();
						~CPageDirectoryEntry();
	
	// Public member functions.
	bool				getAllocated();
	bool				getFull();	
	PAGEFRAME			getPageTable();
	CPageTableEntry*	getPageTablePointer();
	void				setAllocated( bool );
	void				setAvailable( bool );
	void				setFull( bool );
	void				setPageTable( DWORD );
	void				setReadWrite( bool );
	void				setPresent( bool );
	void				setUserSupervisor( bool );
	void				setWriteThrough( bool );
	void				setCacheDisabled( bool );
	void				setAccessed( bool );
	void				setGlobalPage( bool );
	void				setPageSize( bool );
	void				setReserved( bool );
};

// Type definitions.
typedef CPageDirectoryEntry CPageDirectoryTable;

#endif // !defined(AFX_PAGEDIRECTORYENTRY_H__350767B2_AB9E_11D1_B581_000000000000__INCLUDED_)
