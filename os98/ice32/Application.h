// Application.h: interface for the CApplication class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_APPLICATION_H__9193F3E8_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_APPLICATION_H__9193F3E8_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#include "System.h"	// Added by ClassView
#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPU.h"
#include "ProcessManager.h"


// Definition of the application class.
class CApplication  
{
	// Private data members.
	static const char	m_pClassName[];
	CSystem				m_System;
	CProcessManager*	m_pProcessManager;

public:
	// Public constructor and destructor.
			CApplication();
	virtual ~CApplication();

	// Public member functions.
	SELECTOR			getCodeSegment();
	CProcessManager&	getProcessManager();
	CSystem&			getSystem();
	void				halt( char* ) const;
	int					run();
};


// Global sinbgleton application object.
extern CApplication Application;


#endif // !defined(AFX_APPLICATION_H__9193F3E8_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
