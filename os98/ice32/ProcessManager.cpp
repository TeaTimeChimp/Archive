// ProcessManager.cpp: implementation of the CProcessManager class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "Application.h"
#include "ProcessManager.h"

// Include templates.
#include "TCursor.cpp"
#include "TList.cpp"


// Initialise static constants.
const char	CProcessManager::m_pClassName[] = "ProcessManager::";


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modificaiton History
// Date		Initials	Reason
//
CProcessManager::CProcessManager()
{
	// Initialise state.
	m_pProcesses		= NULL;
	m_pThreadManager	= NULL;
	m_pKernelProcess	= NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
CProcessManager::~CProcessManager()
{
}


// Purpose	: Initialises the objects state.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CProcessManager::create()
{
	bool bSuccess;

	// Assume failure.
	bSuccess = false;

	// Allocate process list.
	m_pProcesses = new TList<CProcess*>();
	if( m_pProcesses!=NULL )
	{
		// Allocate thread manager.
		m_pThreadManager = new CThreadManager();
		if( m_pThreadManager!=NULL )
		{			
			// Create initial state of thread manager.
			m_pThreadManager->create();

			// Create a process and thread for the kernel.
			setKernelProcess( createProcess() );
			getThreadManager().setKernelThread( m_pKernelProcess->createThread(NULL) );

			// Process manager successfully created.
			bSuccess = true;
		}
	}

	// Return create success.
	return bSuccess;
}


// Purpose	: Creates a new process.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
CProcess* CProcessManager::createProcess()
{
	CProcess* pProcess;
	const char pFunctionName[] = "createProcess() - ";

	// Create new process.
	pProcess = new CProcess( getThreadManager() );
	if( pProcess!=NULL )
	{
		// Process allocated, create it's initial state.
		cout << m_pClassName << pFunctionName << "Process allocated at 0x" << (DWORD)pProcess << endl;
		if(	pProcess->create()==true )
		{		
			// Insert the process into the process list.
			m_pProcesses->insert( pProcess );
			cout << m_pClassName << pFunctionName << "Success." << endl;
		}
		else
		{
			// Free failed process.
			delete pProcess;
			pProcess = NULL;
			cout << m_pClassName << pFunctionName << "Failed." << endl;
		}
	}

	// Return process pointer.
	return pProcess;
}


// Purpose	: Return a pointer to the current process object.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/08/99
//
// Modification History
// Date		Initials	Reason
//
CProcess* CProcessManager::getCurrentProcess()
{
	return NULL;
}


// Purpose	: Returns a reference to the thread manager.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThreadManager& CProcessManager::getThreadManager()
{
	// Return reference to thread manager.
	return *m_pThreadManager;
}


// Purpose	: Runs the collection of processes, only returning when all
//			  process have terminated.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CProcessManager::run()
{
	// Call thread manager to run threads.
	m_pThreadManager->run();
}


// Purpose	: Sets the kernel process object.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CProcessManager::setKernelProcess( CProcess* pProcess )
{
	if( pProcess==NULL )
		Application.halt( "ProcessManager::setKernelProcess(NULL)" );
	else
		m_pKernelProcess = pProcess;
}