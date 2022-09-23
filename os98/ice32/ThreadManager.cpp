// ThreadManager.cpp: implementation of the CThreadManager class.
//
//////////////////////////////////////////////////////////////////////

#include "Application.h"
#include "ThreadManager.h"

#include "TCursor.cpp"
#include "TList.cpp"

// Static data members.
CThread*			CThreadManager::m_pMainThread			= NULL;
CThread*			CThreadManager::m_pCurrentThread		= NULL;
TCursor<CThread*>*	CThreadManager::m_pThreadCursor			= NULL;
bool				CThreadManager::m_bMultiTaskingEnabled	= false;
const char			CThreadManager::m_pClassName[]			= "ThreadManager::";

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThreadManager::CThreadManager()
{
	m_pThreads		= NULL;
	m_pThreadCursor = NULL;
}

CThreadManager::~CThreadManager()
{

}


// Purpose	: Creates the initial state of the thread manager.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
bool CThreadManager::create()
{
	bool bSuccess;

	// Assume failure.
	bSuccess = false;

	// Hook into system timer for pre-emptive context switching.
	//hookTimer();

	// Allocate list for managing thread objects.
	m_pThreads = new TList<CThread*>();
	if( m_pThreads!=NULL )
		bSuccess = true;

	// Always return true(for now).
	return bSuccess;
}


// Purpose	: Creates a new thread object and adds it to the collection
//			  of managed threads.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThread* CThreadManager::createThread( CProcess* pProcess, void(*pEntryPoint)() )
{
	CThread* pThread;

	// Allocate a new thread object.
	pThread = new CThread();
	if( pThread!=NULL )
	{
		// Create initial state of thread object.
		if( pThread->create( pProcess, pEntryPoint )==false )
		{
			// Rollback thread creation.
			delete pThread;
			pThread = NULL;
		}
		else
		{
			// Add thread to collection of managed threads.
			m_pThreads->insert( pThread );
			createThreadCursor();
		}
	}

	// Return pointer to new thread object.
	return pThread;
}


// Purpose	: Creates the thread cursor on the current thread list.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::createThreadCursor()
{
	// Delete current thread cursor.
	delete m_pThreadCursor;

	// Allocate a new thread cursor.
	m_pThreadCursor = new TCursor<CThread*>(*m_pThreads);
	if( m_pThreadCursor!=NULL )
	{
		// Start cursor, else getNextThread doesn't call 'first'.
		cout << m_pClassName << "createThreadCursor()" << endl;
		m_pThreadCursor->first();
	}
}


// Purpose	: Returns a pointer to the current thread object.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThread* CThreadManager::getCurrentThread()
{
	// Return pointer to current thread object.
	cout << m_pClassName << "getCurrentThread = 0x" << (DWORD)m_pCurrentThread << endl;
	return m_pCurrentThread;
}


// Purpose	: Returns a pointer to the main thread object. The main thread
//			  executes the thread manager loop.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThread* CThreadManager::getMainThread()
{
	// Return pointer to main thread object.
	cout << m_pClassName << "getMainThread - Main thread is 0x" << (DWORD)m_pMainThread << endl;
	return m_pMainThread;
}


// Purpose	: Returns the state of multi-tasking.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
bool CThreadManager::getMultiTaskingEnabled()
{
	// Return multi-tasking flag.
	return m_bMultiTaskingEnabled;
}


// Purpose	: Returns the next thread of execution based on the current thread.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThread* CThreadManager::getNextThread()
{
	CThread* pThread;
	const char pFunctionName[] = "getNextThread - ";

	// Verify cursor existance.
	if( m_pThreadCursor==NULL )
	{
		cout << m_pClassName << pFunctionName << "No thread cursor." << endl;
		pThread = NULL;
	}
	else
	{
		// Return next thread looping to first at end.
		pThread = m_pThreadCursor->next();
		if( pThread == NULL )
		{
			pThread = m_pThreadCursor->first();
			cout << m_pClassName << pFunctionName << "First thread=0x" << (DWORD)pThread << endl;
		}
		else
			cout << m_pClassName << pFunctionName << "Next thread=0x" << (DWORD)pThread << endl;
	}

	// Return pointer to next thread object.
	return pThread;
}


// Purpose	: Place a hook into the system timer to allow interruption
//			  the the currently execting thread.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::hookTimer()
{
	CSystem&	System	= Application.getSystem();
	CIDT&		IDT		= System.getCPU().getIDT();
	CPIC&		PIC		= System.getPIC();
	CTimer&		Timer	= System.getTimer();

	// Register timer handler.
	IDT.registerHandler( PIC.irqToInt(Timer.getIRQ()), CThreadManager::timerISRHandler );
}


// Purpose	: Resumes execution of the specified thread.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::resumeThread( CThread* pNextThread )
{
	CThread* pCurrentThread;
	const char pFunctionName[] = "resumeThread - ";

	cout << m_pClassName << pFunctionName << "At 0x" << (DWORD)pNextThread << endl;

	// Get pointer to current thread object.
	pCurrentThread = getCurrentThread();

	// If the current task is the same as the next task then
	// don't task switch, since the next(this) task's LINK
	// field has been set to KernelTSS and would send us to
	// the 'ThreadMonitor' for termination.
	if( pNextThread!=pCurrentThread )
	{

		// Make the thread we want to switch to the current thread's return thread.
		// By returning from this thread we make the switch into the desired thread.
		pCurrentThread->setReturnThread( pNextThread );

		// Set next task type to 'Busy 386 TSS' to allow outward task switch.
		pNextThread->setBusy( true );

		// Set return thread to the kernel's thread. When the thread
		// terminates it will be return to the scheduling loop.
		pNextThread->setReturnThread( getMainThread() );

		// Set NT=1 for nested task return.
		Application.getSystem().getCPU().setNT( true );
	}

	// Place next ISR address on stack.
	Application.getSystem().getCPU().setCS( pNextThread->getTSSSelector() );
}


// Purpose	: Runs the collection of threads, only returning when all
//			  threads have terminated.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::run()
{
	CThread* pThread;
	const char pFunctionName[] = "run - ";

	// Loop while there are still threads left.
	cout << m_pClassName << pFunctionName << "Starting with " << m_pThreads->count() << " threads." << endl;
	while( m_pThreads->count()>0 )
	{
		// Iterate through all threads.
		pThread = getNextThread();
		
		// Resume execution of thread.
		resumeThread( pThread );
	}
	cout << m_pClassName << pFunctionName << "All threads have terminated." << endl;
}


// Purpose	: Sets the main current of execution.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/09/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::setCurrentThread( CThread* pThread )
{
	// Set main thread pointer.
	cout << m_pClassName << "setCurrentThread(0x" << (DWORD)pThread << ")" << endl;
	if( pThread==NULL )
		Application.halt( "NULL Pointer" );
	else
		m_pCurrentThread = pThread;
}


// Purpose	: Sets the kernel thread of execution.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/09/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::setKernelThread( CThread* pThread )
{
	// Set main thread pointer.
	cout << m_pClassName << "setKernelThread(0x" << (DWORD)pThread << ")" << endl;
	if( pThread==NULL )
		Application.halt( "NULL Pointer" );
	else
	{
		m_pMainThread = pThread;
		setCurrentThread( pThread );
	}
}


// Purpose	: Timer interrupt service request handler. Pre-empts the current thread.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThreadManager::timerISRHandler()
{
	CThread* pLastThread;
	CThread* pNextThread;
	
	if( getMultiTaskingEnabled()==true )
	{
		// Tasking is enabled so return to a different thread.

		// Get current task selector(always an application).
		pLastThread = getCurrentThread();

		// Get next task selector and update task pointer.
		pNextThread = getNextThread();
	}
	resumeThread( pNextThread );
}
