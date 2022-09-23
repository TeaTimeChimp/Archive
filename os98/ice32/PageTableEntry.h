// PageTableEntry.h: interface for the CPageTableEntry class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PAGETABLEENTRY_H__8DD58F73_AAE1_11D1_B57F_000000000000__INCLUDED_)
#define AFX_PAGETABLEENTRY_H__8DD58F73_AAE1_11D1_B57F_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"

class CPageTableEntry  
{
	unsigned int m_iPresent         :  1;
	unsigned int m_iReadWrite       :  1;
	unsigned int user_supervisor    :  1;
	unsigned int write_through      :  1;
	unsigned int cache_disabled     :  1;
	unsigned int accessed           :  1;
	unsigned int dirty              :  1;
	unsigned int reserved           :  1;
	unsigned int global_page        :  1;
	unsigned int m_iAllocated		:  1;   // Specified by ICE.
	unsigned int avaiable           :  2;
	unsigned int m_iPageFrame		: 20;

public:
	CPageTableEntry();
	~CPageTableEntry();

	// Public member functions.
	void	clear();
	bool	getAllocated();
	void*	getPagePointer() const;
	DWORD	getPageFrame() const;
	void	setAllocated( bool );
	void	setPresent( bool );
	void	setReadWrite( bool );
	void	setPageFrame( DWORD );
};

#endif // !defined(AFX_PAGETABLEENTRY_H__8DD58F73_AAE1_11D1_B57F_000000000000__INCLUDED_)
