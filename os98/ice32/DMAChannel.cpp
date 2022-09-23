// DMAChannel.cpp: implementation of the CDMAChannel class.
//
//////////////////////////////////////////////////////////////////////

#include "libc\malloc.h"
#include "libcpp\ostream.h"

#include "Application.h"
#include "DMAController.h"
#include "PhysicalMemoryManager.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Initialise static constants.
const char CDMAChannel::m_pClassName[]	= "DMAChannel::";

CDMAChannel::CDMAChannel()
{
	m_bDebug					= false;
	m_iNumber					= 0;
	m_pAddressRegister			= NULL;
	m_pCountRegister			= NULL;
	m_pPageRegister				= NULL;
	m_pController				= NULL;
	m_iTransferAreaStartPage	= 0;
	m_iTransferAreaPageCount	= 0;
}


CDMAChannel::~CDMAChannel()
{

}


// Purpose	: Initialises the state of the object.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/02/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CDMAChannel::create( CDMAController* pController, BYTE iChannelNumber, const CIOPort* pAddressRegister, const CIOPort* pCountRegister, const CIOPort* pPageRegister )
{
	const char pFunctionName[] = "create() - ";

	// Initialise object state.
	m_iNumber					= iChannelNumber;	
	m_pController				= pController;
	m_pAddressRegister			= pAddressRegister;
	m_pCountRegister			= pCountRegister;
	m_pPageRegister				= pPageRegister;
	m_iTransferAreaStartPage	= 0;
	m_iTransferAreaPageCount	= 0;

	if( m_bDebug )
	{
		cout << m_pClassName << pFunctionName << "-----------------------------" << endl;
		cout << m_pClassName << pFunctionName << "Channel number   : 0x" << getNumber() << endl;
		cout << m_pClassName << pFunctionName << "Address register : 0x" << m_pAddressRegister->getAddress() << endl;
		cout << m_pClassName << pFunctionName << "Page register    : 0x" << m_pPageRegister->getAddress() << endl;
		for( DWORD iDelay=0 ; iDelay<200000 ; iDelay++ );
	}

	// Always return no error(for now).
	return 0;
}


// Purpose	: Returns the designated number of the DMA channel.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/02/99
//
// Modification History
// Date		Initials	Reason
//
BYTE CDMAChannel::getNumber() const 
{
	// Return channel number.
	return m_iNumber;
}


// Purpose	: Returns the physical address of the DMA transfer area.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/05/99
//
// Modification History
// Date		Initials	Reason
//
void* CDMAChannel::getTransferAreaPointer() const
{
	const char pFunctionName[] = "getTransferAreaPointer() - ";
	
	// Return DMA transfer area address.
	if(m_bDebug) cout << m_pClassName << pFunctionName << (m_iTransferAreaStartPage<<12) << endl;
	return (void*)(m_iTransferAreaStartPage<<12);
}


// Purpose	: Returns the number of byte in the transfer area.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CDMAChannel::getTransferAreaSize() const
{
	// Return number of byte in the transfer area.
	return Application.getSystem().getPhysicalMemoryManager().getBytesPerPage() * m_iTransferAreaPageCount;
}


// Purpose	: Sets the debug status.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/05/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAChannel::setDebug( bool bDebug )
{
	// Set debug status.
	m_bDebug = bDebug;
}


// Purpose	: Sets the transfer buffer address.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAChannel::setTransferAreaStartPage( DWORD iStartPage )
{
	void* pAddress;

	// Convert page to address.
	pAddress = (void*)(iStartPage<<12);
	m_iTransferAreaStartPage = iStartPage;

	// Prepare for LSB-MSB write.
	m_pController->clearFlipFlop();

	// Write 16-bit of address LSB then MSB.
	m_pAddressRegister->writeByte( (BYTE)( (DWORD)pAddress&0x000000ff) );
	m_pAddressRegister->writeByte( (BYTE)(((DWORD)pAddress&0x0000ff00)>>8) );

	// Write upper 4-bits of address to page register.
	m_pPageRegister->writeByte( (BYTE)(((DWORD)pAddress&0x000f0000)>>16) );
}


// Purpose	: Sets the minimum requirement for the size of the transfer area.
//			  This will tigger the reallocation of the DMA buffer if the
//			  current size is not sufficient.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/05/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CDMAChannel::setTransferAreaSize( DWORD iRequiredSize )
{
	DWORD iPagesRequired;
	const char pFunctionName[] = "setTransferAreaSize() - ";

	// Reference physical memory manager.
	CPhysicalMemoryManager& PMM = Application.getSystem().getPhysicalMemoryManager();

	// Convert the number of bytes required to pages.
	iPagesRequired = iRequiredSize>>12;
	if( (iPagesRequired<<12)<iRequiredSize )
		iPagesRequired++;
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Channel " << getNumber() << ", Pages required " << iPagesRequired << "." << endl;

	// Check for exiting transfer area size against required size.
	if( getTransferAreaSize()<iRequiredSize )
	{
		// Reallocate transfer area.
		PMM.freePages( m_iTransferAreaStartPage, m_iTransferAreaPageCount );
		setTransferAreaStartPage( PMM.allocatePagesFromBaseMemory(iPagesRequired) );
	}

	// Return actual size of transfer area allocated.
	return getTransferAreaSize();
}


// Purpose	: Sets the number of transfer cycles.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAChannel::setWordCount( WORD iCount )
{
	// Prepare LSB-MSB write.
	m_pController->clearFlipFlop();

	// Write LSB then MSB of count.
	m_pCountRegister->writeByte( (BYTE)(iCount&0x00ff) );
	m_pCountRegister->writeByte( (BYTE)((iCount&0xff00)>>8) );
}


// Purpose	: Initiates a DMA transfer using this channel.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAChannel::transfer( DWORD iCount, EDMAType eType, EDMADirection eDirection )
{
	setWordCount( (WORD)iCount );
	m_pController->setMode( this, eType, eDirection );
}
