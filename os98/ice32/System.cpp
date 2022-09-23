// System.cpp: implementation of the CSystem class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "System.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
CSystem::CSystem():
m_CPU( (void*)0x00000000, (void*)0x00000800 )
{
	// Invalidate managers.
	m_pIOManager	= NULL;
	m_pDMAManager	= NULL;
}


CSystem::~CSystem()
{

}


// Purpose	: Initialises the system hardware, returning true
//			  if successful.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/98
//
// Modification History
// Date		Initials	Reason
//
const long CSystem::create()
{
	unsigned long iError;

	// Sign-on.
	cout << "Initializing system." << endl;

	// Initialise CPU object.
	iError = m_CPU.create();

	// Initialise IO manager.
	m_pIOManager = new CIOManager();
	iError = m_pIOManager->create();

	// Initialise programmable interrupt controller.
	m_pPIC = new CPIC();
	iError = m_pPIC->create();
	
	// Initialise interval timer.
	m_pTimer = new CTimer();
	iError = m_pTimer->create();

	// Initialise physical memory manager,
	m_pPhysicalMemoryManager = new CPhysicalMemoryManager();
	iError = m_pPhysicalMemoryManager->create();

	// Enable interrupts.
	m_CPU.enableInterrupts( true );

	// Initialise DMA manager.
	m_pDMAManager = new CDMAManager();
	m_pDMAManager->create();

	// Initialise floppy disk controller.
	m_pFloppyDiskController = new CFloppyDiskController();
	m_pFloppyDiskController->create();

	// Return initialisation error code.
	return iError;
}


// Purpose	: Returns a pointer to the IO manager object.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/09/98
//
// Modification History
// Date		Initials	Reason
//
CIOManager& CSystem::getIOManager()
{
	// Return IO manager.
	return *m_pIOManager;
}


// Purpose	: Returns the physical memory manager.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/01/99
//
// Modification History
// Date		Initials	Reason
//
CPhysicalMemoryManager& CSystem::getPhysicalMemoryManager()
{
	// Return physical memory manager.
	return *m_pPhysicalMemoryManager;
}


// Purpose	: Returns a reference to the PIC object.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
// 
CPIC& CSystem::getPIC()
{
	// Return pointer to PIC object.
	return *m_pPIC;
}


// Purpose	: Returns a reference to the CPU.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
CCPU& CSystem::getCPU()
{
	// Return CPU.
	return m_CPU;
}


// Purpose	: Returns a reference to the DMA manager object.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/99
//
// Modification History
// Date		Initials	Reason
//
CDMAManager& CSystem::getDMAManager()
{
	// Return DMA manager reference.
	return *m_pDMAManager;
}


// Purpose	: Returns the floppy disk controller object.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/98
//
// Modification History
// Date		Initials	Reason
//
CFloppyDiskController& CSystem::getFloppyDiskController()
{
	// Return object reference.
	return *m_pFloppyDiskController;
}


// Purpose	: Returns a reference to the system timer.
//
// Author	: Daniel J Hawkins
//
// Date		: 08/03/98
//
// Modification History
// Date		Initials	Reason
//
CTimer& CSystem::getTimer()
{
	// Return timer.
	return *m_pTimer;
}
