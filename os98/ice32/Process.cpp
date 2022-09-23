// Process.cpp: implementation of the CProcess class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "Application.h"
#include "Process.h"

#include "TList.cpp"


// Static member initialisers.
const char CProcess::m_pClassName[] = "CProcess::";


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
CProcess::CProcess( CThreadManager& ThreadManager ):
m_ThreadManager(ThreadManager)
{
	// Initialise state.
	m_pThreads				= NULL;
	m_pPageDirectoryTable	= NULL;
	m_iCodeSelector			= NULL;
	m_iDataSelector			= NULL;
	m_iStackSelector		= NULL;
	m_pLDT					= NULL;
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
CProcess::~CProcess()
{

}


// Purpose	: Maps a block of the processes memory space to physical memory.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
void* CProcess::allocateMemory( const void* pBaseAddress, unsigned long iSize, EAllocationType eAllocationType, EMemoryType eMemoryType )
{
	void* pAddress;

	// Choose appropriate mapping technique.
	switch( eAllocationType )
	{
	case AT_COMMIT:
		{
			// Map the specified range of linear pages to physical memory.
			if( Application.getSystem().getPhysicalMemoryManager().commitMemory( getPageDirectoryTable(), pBaseAddress, iSize )==0 )
				pAddress = (void*)pBaseAddress;
			break;
		}
	default:
		{
			// Unsupported mapping technique.
			pAddress = NULL;
			break;
		}
	}

	// Return linear address of memory mapping.
	return pAddress;
}


// Purpose	: Creates the initial process state.
//
// Author	: Daniel J Hawkins
//
// Date		: 25/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CProcess::create()
{
	bool bSuccess;
	CPageDirectoryTable* pPageDirectoryTable;
	const char pFunctionName[] = "create - ";
	CPageDirectoryTable* pCurrentPDT;
	CPhysicalMemoryManager& PMM = Application.getSystem().getPhysicalMemoryManager();

	// Assume failure.
	bSuccess = false;
	
	// Allocate a page directory for this process.
	pPageDirectoryTable = PMM.createPageDirectory();
	if( pPageDirectoryTable==NULL )
	{
		// Failed to create a virtual memory space for the process.
		cout << m_pClassName << pFunctionName << "Failed to create PDT." << endl;
	}
	else
	{
		// Store the physical address of the page directory in the TSS.
		setPageDirectoryTable( pPageDirectoryTable );

		// Map global kernel memory into address space.
		PMM.mapGlobalPages( pPageDirectoryTable );

		// Construct LDT for process.
		m_pLDT = new CLDT( (void*)0x80000000, 512 );
		PMM.commitMemory( pPageDirectoryTable, (void*)0x80000000, 4096 );
		m_pLDT->setLDTSelector( Application.getSystem().getCPU().getGDT().addMemoryDescriptor( DT_LDT, DPL0, (void*)0x80000000, 0x00001000 ) );
		
		// Construct code segment.
		pCurrentPDT = Application.getSystem().getCPU().setPageDirectoryTable( getPageDirectoryTable() );
		setCodeSelector( getLDT()->addMemoryDescriptor( DT_EXECUTE_READ, DPL0, 0x00000000, 0xffffffff ) );
		setDataSelector( getLDT()->addMemoryDescriptor( DT_READ_WRITE, DPL0, 0x00000000, 0xffffffff ) );
		Application.getSystem().getCPU().setPageDirectoryTable( pCurrentPDT );

		// Return success.
		bSuccess = true;
	}

	// Return success of process creation.
	return bSuccess;
}


// Purpose	: Creates a thread on execution within the process.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
CThread* CProcess::createThread( void(*pEntryPoint)() )
{
	CThread* pThread;

	// Request a new thread of execution.
	pThread = m_ThreadManager.createThread( this, pEntryPoint );
	if( pThread!=NULL )
	{
		// Insert new thread into list.
		m_pThreads->insert( pThread );
	}
	// Return pointer to new thread object.
	return pThread;
}


// Purpose	: Returns the selector of the code segment.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CProcess::getCodeSelector()
{
	// Return code selector.
	return m_iCodeSelector;
}


// Purpose	: Returns the selector of the data segment.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CProcess::getDataSelector()
{
	// Return code selector.
	return m_iDataSelector;
}


// Purpose	: Returns a pointer to the local descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/07/99
//
// Modification History
// Date		Initials	Reason
//
CLDT* CProcess::getLDT()
{
	// Returns a pointer to the processes LDT.
	return m_pLDT;
}


// Purpose	: Returns a pointer to the local descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/07/99
//
// Modification History
// Date		Initials	Reason
//
CDescriptor* CProcess::getLDTDescriptor()
{
	CDescriptor* pLDTDescriptor;

	// Get descriptor holding current LDT.
	pLDTDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( m_pLDT->getLDTSelector() );

	// Returns a pointer to the processes LDT descriptor.
	return pLDTDescriptor;
}


// Purpose	: Returns the selector of the stack segment.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CProcess::getStackSelector()
{
	// Return code selector.
	return m_iStackSelector;
}


// Purpose	: Sets the code selector.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CProcess::setCodeSelector( SELECTOR iCodeSelector )
{
	// Store code segment selector.
	m_iCodeSelector = iCodeSelector;
}


// Purpose	: Sets the data selector.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CProcess::setDataSelector( SELECTOR iDataSelector )
{
	// Store data segment selector.
	m_iDataSelector = iDataSelector;
}


// Purpose	: Returns the value of the Intel CR3 register.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
CPageDirectoryTable* CProcess::getPageDirectoryTable() const
{
	// Return a pointer to the processes page directory table.
	return m_pPageDirectoryTable;
}


// Purpose	: Translates the virtual address to a physical one.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Intials		Reason
//
void* CProcess::getPhysicalAddress( const void* pVirtualAddress )
{
	// Return address through memory managers traslation.
	return Application.getSystem().getPhysicalMemoryManager().virtualToPhysical( getPageDirectoryTable(), pVirtualAddress );
}


// Purpose	: Sets the page directory table pointer.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
void CProcess::setPageDirectoryTable( CPageDirectoryEntry* pPageDirectoryTable )
{
	// Store pointer to page directory table.
	m_pPageDirectoryTable = pPageDirectoryTable;
	cout << m_pClassName << "setPageDirectoryTable(0x" << (DWORD)m_pPageDirectoryTable << ")" << endl;
}


