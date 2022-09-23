// Thread.cpp: implementation of the CThread class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "Application.h"
#include "Process.h"
#include "Thread.h"

// Static constants.
const char	CThread::m_pClassName[]		= "Thread::";
const DWORD CThread::m_iRing0StackSize	= 8192;
const DWORD CThread::m_iRing1StackSize	= 0;
const DWORD CThread::m_iRing2StackSize	= 0;
const DWORD CThread::m_iRing3StackSize	= 8192;
const void* CThread::m_pRing0StackTop	= (void*)(0x00000000 - CThread::m_iRing0StackSize);
const void* CThread::m_pRing1StackTop	= (void*)(0x00000000 - CThread::m_iRing0StackSize - CThread::m_iRing1StackSize);
const void* CThread::m_pRing2StackTop	= (void*)(0x00000000 - CThread::m_iRing0StackSize - CThread::m_iRing1StackSize - CThread::m_iRing2StackSize);
const void* CThread::m_pRing3StackTop	= (void*)(0x00000000 - CThread::m_iRing0StackSize - CThread::m_iRing1StackSize - CThread::m_iRing2StackSize - CThread::m_iRing1StackSize - CThread::m_iRing3StackSize);

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CThread::CThread()
{
	// Initialise default state.
	m_eState			= TS_STOP;
	m_pTSSDescriptor	= NULL;
}

CThread::~CThread()
{

}


// Purpose	: Creates the initial state of the thread.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
bool CThread::create( CProcess* pProcess, void(*pEntryPoint)() )
{
	// Set initial state of TSS.
	m_TSS.setPageDirectoryTable( pProcess->getPageDirectoryTable() );
	m_TSS.setLDTSelector( pProcess->getLDT()->getLDTSelector() );
	m_TSS.setRing0StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing0StackTop,m_iRing0StackSize,AT_COMMIT,MT_READ_WRITE) );
	m_TSS.setRing1StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing1StackTop,m_iRing1StackSize,AT_COMMIT,MT_READ_WRITE) );
	m_TSS.setRing2StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing2StackTop,m_iRing2StackSize,AT_COMMIT,MT_READ_WRITE) );
	m_TSS.setCurrentStackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing3StackTop,m_iRing3StackSize,AT_COMMIT,MT_READ_WRITE) );
	m_TSS.setDataSelector( pProcess->getDataSelector() );
	m_TSS.setInstructionPointer( pProcess->getCodeSelector(), pEntryPoint );

	// Create a TSS entry in the GDT for this thread.
	setTSSSelector( Application.getSystem().getCPU().getGDT().addMemoryDescriptor( DT_AVAILABLE_386_TSS, DPL3, &m_TSS, sizeof(m_TSS) ) );

	// Always return true (until something could fail).
	return true;
}


// Purpose	: Returns the selector of the TSS.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/07/99
//
// Modification History
// Date		Initials	Reason
//
CDescriptor* CThread::getTSSDescriptor()
{
	// Return pointer to descriptor of TSS within the GDT.
	cout << m_pClassName << "getTSSDescriptor - Descriptor at 0x" << (DWORD)m_pTSSDescriptor << endl;
	return m_pTSSDescriptor;
}


// Purpose	: Returns the selector value used to identify the
//		      thread's task state segment.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CThread::getTSSSelector()
{
	// Return selector value.
	return m_iTSSSelector;
}


// Purpose	: Sets the busy state of the task.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThread::setBusy( bool bSet )
{
	CDescriptor* pDescriptor;

	// Choose set or clear.
	cout << m_pClassName << "setBusy(" << (BYTE)bSet << ")" << endl;
	pDescriptor = getTSSDescriptor();
	if( pDescriptor==NULL )
	{
		// Failed to locate TSS descriptor.
		Application.halt( "Thread::setBusy - getDescriptor() returned NULL." );
	}
	else
	{
		if( bSet==false )
		{
			// Mark thread as available.
			pDescriptor->setType( DT_AVAILABLE_386_TSS );
		}
		else
		{
			// Mark thread as busy.
			pDescriptor->setType( DT_BUSY_386_TSS );
		}
	}
}


// Purpose	: Sets the return thread to return to if this thread should terminate.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
void CThread::setReturnThread( CThread* pReturnThread )
{
	// Set link field of the TSS to the selector of the return thread.
	if( pReturnThread==NULL )
		Application.halt( "CThread::setReturnThread - NULL Pointer." );
	else
	{
		cout << m_pClassName << "setReturnThread(" << (DWORD)pReturnThread << ")" << endl;
		m_TSS.setLink( pReturnThread->getTSSSelector() );
	}
}


// Purpose	: Sets the thread state flag.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
void CThread::setState( enum EThreadStatus eState )
{
	// Only allow state change if the thread is stopped.
	if( m_eState==TS_STOP )
		m_eState = eState;
}


// Purpose	: Sets the selector identifying this thread's TSS.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/08/99
//
// Modification History
// Date		Initials	Reason
//
void CThread::setTSSSelector( SELECTOR iSelector )
{
	// Set TSS selector member.
	cout << m_pClassName << "setTSSSelector(" << iSelector << ")" << endl;
	m_iTSSSelector = iSelector;
	m_pTSSDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( iSelector );
	m_pTSSDescriptor->setPointer( Application.getSystem().getCPU().getGlobalDataSelector(), this );
}
