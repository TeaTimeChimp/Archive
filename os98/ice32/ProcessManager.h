// ProcessManager.h: interface for the CProcessManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PROCESSMANAGER_H__1CD3FA38_AF1F_11D2_B631_000000000000__INCLUDED_)
#define AFX_PROCESSMANAGER_H__1CD3FA38_AF1F_11D2_B631_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "Process.h"
#include "ThreadManager.h"
#include "TList.h"

class CProcessManager  
{
	// Private static constants.
	static const char	m_pClassName[];

	// Private data members.
	CThreadManager*		m_pThreadManager;
	TList<CProcess*>*	m_pProcesses;
	CProcess*			m_pKernelProcess;

	// Private member functions.
	CThreadManager&		getThreadManager();
	void				setKernelProcess( CProcess* );

public:
	// Constructor and destructor.
						CProcessManager();
						~CProcessManager();

	// Public member functions.
	bool				create();
	CProcess*			createProcess();
	CProcess*			getCurrentProcess();
	void				run();
};

#endif // !defined(AFX_PROCESSMANAGER_H__1CD3FA38_AF1F_11D2_B631_000000000000__INCLUDED_)
