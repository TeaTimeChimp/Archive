// BootManager.h: interface for the CBootManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BOOTMANAGER_H__1CD3FA34_AF1F_11D2_B631_000000000000__INCLUDED_)
#define AFX_BOOTMANAGER_H__1CD3FA34_AF1F_11D2_B631_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "BootController.h"
#include "Process.h"

#include "TList.h"

class CBootManager  
{
	// Private static constants.
	static const char			m_pClassName[];
	static const void*			m_pVirtualLoadAddress;

	// Private data members.
	TList<CBootController*>*	m_pControllers;

public:
	// Public constructor and destructor.
				CBootManager();
	virtual		~CBootManager();

	// Public member functions.
	bool		boot();
	bool		create();
	CProcess*	createBootProcess( CBootDevice* );
};

#endif // !defined(AFX_BOOTMANAGER_H__1CD3FA34_AF1F_11D2_B631_000000000000__INCLUDED_)
