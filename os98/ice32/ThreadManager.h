// ThreadManager.h: interface for the CThreadManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_THREADMANAGER_H__6760CF82_39EB_11D3_A56C_006008569AA6__INCLUDED_)
#define AFX_THREADMANAGER_H__6760CF82_39EB_11D3_A56C_006008569AA6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "Thread.h"

#include "TCursor.h"
#include "TList.h"

class CThreadManager  
{
	// Private data members.
	static const char			m_pClassName[];
	TList<CThread*>*			m_pThreads;
	static CThread*				m_pCurrentThread;
	static CThread*				m_pMainThread;
	static TCursor<CThread*>*	m_pThreadCursor;
	static bool					m_bMultiTaskingEnabled;

	// Private member functions.
	void				createThreadCursor();
	void				hookTimer();
	void				setCurrentThread( CThread* );

	// Private static member functions.
	static CThread*		getMainThread();
	static bool			getMultiTaskingEnabled();	
	static CThread*		getNextThread();
	static void			resumeThread( CThread* );
	static void			timerISRHandler();

public:
	// Public constructor and destructor.
						CThreadManager();
						~CThreadManager();

	// Public member functions.
	bool				create();
	CThread*			createThread( class CProcess*, void(*)() );
	static CThread*		getCurrentThread();
	void				run();
	void				setKernelThread( CThread* );
};

#endif // !defined(AFX_THREADMANAGER_H__6760CF82_39EB_11D3_A56C_006008569AA6__INCLUDED_)
