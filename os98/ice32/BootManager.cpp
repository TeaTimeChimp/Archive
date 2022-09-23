// BootManager.cpp: implementation of the CBootManager class.
//
//////////////////////////////////////////////////////////////////////

// Include language headers.
#include "libcpp\ostream.h"

// Include application headers.
#include "Application.h"
#include "BootManager.h"
#include "FloppyDiskController.h"
#include "PortableExecutable.h"
#include "Process.h"
#include "TCursor.h"

// Include templates.
#include "TCursor.cpp"
#include "TList.cpp"

// Static constants.
const char CBootManager::m_pClassName[] = "BootManager::";
const void* CBootManager::m_pVirtualLoadAddress = (void*)0x90000000;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CBootManager::CBootManager()
{

}

CBootManager::~CBootManager()
{

}


// Purpose	: Boots the operating system from a known bootable device.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CBootManager::boot()
{
	bool bSuccess;
	CProcess* pBootProcess;
	CBootDevice* pBootDevice;
	CBootController* pController;

	// Assume boot failure.
	bSuccess = false;

	// Request boot device from each controller until booted.
	TCursor<CBootController*> Controllers( *m_pControllers );
	for( pController=Controllers.first() ; Controllers.more() ; pController=Controllers.next() )
	{
		// Request boot device from controller.
		pBootDevice = pController->getBootDevice();
		if( pBootDevice!=NULL )
		{
			// Attempt boot from device.
			pBootProcess = createBootProcess( pBootDevice );
			if( pBootProcess!=NULL )
				break;
		}
	}

	// Check for successful boot.
	if( pBootProcess==NULL )
	{
		// Failed to boot.
		cout << "CBootManager::boot(0) - No bootable devices." << endl;
	}
	else
	{
		// Execute the boot process.
		bSuccess = true;
	}

	// Return boot status.
	return bSuccess;
}


// Purpose	: Creates the internal state of the object.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CBootManager::create()
{
	bool bSuccess;

	// Assume creation failure.
	bSuccess = false;

	// Allocate the boot controller list.
	m_pControllers = new TList<CBootController*>();	
	if( m_pControllers!=NULL )
	{
		// Add known boot devices.
		m_pControllers->insert( &(Application.getSystem().getFloppyDiskController()) );

		// Return success.
		bSuccess = true;
	}

	// Return creation success.
	return bSuccess;
}


// Purpose	: Boots from the specified device.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/01/99
//
// Modification History
// Date		Initials	Reason
//
CProcess* CBootManager::createBootProcess( CBootDevice* pBootDevice )
{
	long iImageSize;
	void* pPhysicalImageBase;	
	void* pAllocatedBase;
	CProcess* pProcess;
	const char pFunctionName[] = "createBootProcess() - ";

	// Get boot image requirements.
	cout << m_pClassName << pFunctionName << "Trying '" << pBootDevice->getName() << "'." << endl;
	iImageSize = pBootDevice->getImageSize();

	// Create the process to boot into.
	pProcess = Application.getProcessManager().createProcess();

	// Allocate boot image area.
	pAllocatedBase = pProcess->allocateMemory( m_pVirtualLoadAddress, iImageSize, AT_COMMIT, MT_EXECUTE_READ_WRITE );
	if( pAllocatedBase==m_pVirtualLoadAddress )
	{
		// Convert commited process space address to a physical memory address.
		cout << m_pClassName << pFunctionName << "Process load area linear address 0x" << (DWORD)pAllocatedBase << endl;
		pPhysicalImageBase = pProcess->getPhysicalAddress( m_pVirtualLoadAddress );
		cout << m_pClassName << pFunctionName << "Process load area physical address 0x" << (DWORD)pPhysicalImageBase << endl;

		// Load image into process space using physical address.
		// Cannot assume program format so device is responsible for relocation.
		pBootDevice->readBootImage( pPhysicalImageBase );

		// Map-image - this in the opposite of what it says above but is temporary.
		CPortableExecutable* pExecutable = new CPortableExecutable();
		pExecutable->initialise( pProcess, pPhysicalImageBase );

		// Dump boot image to the screen.
		//Application.getSystem().getCPU().dumpMemory( pPhysicalImageBase );

		// Prepare a thread for execution at the entry point.
		pProcess->createThread( (void(*)())(pExecutable->getEntryPoint()) );

		// Free executable parser.
		delete pExecutable;
		pExecutable = NULL;
	}
	else
	{
		// Allocate failed.
		delete pProcess;
		pProcess = NULL;
	}

	// Return process object or NULL.
	return pProcess;
}