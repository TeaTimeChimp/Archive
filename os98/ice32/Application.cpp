// Application.cpp: implementation of the CApplication class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "BootManager.h"

// Global constants.
const BYTE* g_pBaseAddress = (BYTE*)0x80000000;

const char CApplication::m_pClassName[] = "Application::";


// Global application object.
CApplication Application;


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CApplication::CApplication()
{
	// Initialise state.
	m_pProcessManager = NULL;
}

CApplication::~CApplication()
{

}


// Purpose	: Halts the execution of the application by entering an infinite loop.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/05/99
//
// Modification History
// Date		Initials	Reason
//
void CApplication::halt( char* pMessage ) const
{
	// Infinite loop.
	cout << m_pClassName << "halt() - " << pMessage << endl;
	while( true );
}


// Purpose	: Runs the application(OO entry point).
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
int CApplication::run()
{
	long iError;
	CBootManager* pBootManager;
	const char pFunctionName[] = "run - ";

	// Initialise system object.
	iError = m_System.create();
	if( iError==0 )
	{
		// System initialisation succeeded.
		cout << m_pClassName << pFunctionName << "System initialized." << endl;

		// Create process manager.
		m_pProcessManager = new CProcessManager();
		if( m_pProcessManager==NULL )
			cout << m_pClassName << pFunctionName << "Failed to allocate ProcessManager object." << endl;
		else
		{
			// Create initial state of process manager.
			m_pProcessManager->create();

			// Boot operating system.
			pBootManager = new CBootManager();
			pBootManager->create();
			pBootManager->boot();

			// Pass control to the process manager.
			m_pProcessManager->run();
		}
	}
	else
	{
		// Initialisation failed.
		cout << "\nInitialisation failed error " << iError;
	}

	// System will now halt.
	halt( "Application::run()" );

	// Return error code.
	return 0;
}


// Purpose	: Returns a reference to the system resource object.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
CSystem& CApplication::getSystem()
{
	// Return reference to system resource object.
	return m_System;
}


// Purpose	: Returns the current code segment.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CApplication::getCodeSegment()
{
	SELECTOR iCS;

	__asm	mov	ax, cs
	__asm	mov	iCS, ax

	return iCS;
}


// Purpose	: Returns the process manager.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
CProcessManager& CApplication::getProcessManager()
{
	// Return process manager reference.
	return *m_pProcessManager;
}