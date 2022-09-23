// DMAController.cpp: implementation of the CDMAController class.
//
//////////////////////////////////////////////////////////////////////

#include "Application.h"
#include "DMAController.h"

#include "TCursor.h"
#include "TCursor.cpp"
#include "TList.cpp"

// Class constants.
const char CDMAController::m_pClassName[]					= "DMAController::";
const bool CDMAController::m_bDebug							= false;
const bool CDMAController::m_bDebugIO						= false;
const WORD CDMAController::m_iAddressPortOffset				= 0x0000;
const WORD CDMAController::m_iWordCountPortOffset			= 0x0001;
const WORD CDMAController::m_iModePortOffset				= 0x000b;
const WORD CDMAController::m_iClearFlipFlopPortOffset		= 0x000c;
const WORD CDMAController::m_iStatusPortOffset				= 0x0010;
const WORD CDMAController::m_iRequestPortOffset				= 0x0012;
const WORD CDMAController::m_iSingleMaskBitPortOffset		= 0x0014;
const WORD CDMAController::m_iMasterClearPortOffset			= 0x001a;
const WORD CDMAController::m_iClearMaskPortOffset			= 0x001c;
const WORD CDMAController::m_iWriteAllMaskBitsPortOffset	= 0x001e;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
CDMAController::CDMAController()
{
	// Initialise object state.
	m_pChannels = NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
CDMAController::~CDMAController()
{
}


// Purpose	: Clears the controllers flip-flop.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAController::clearFlipFlop() const
{
	// Write any byte to flip-flip port.
	if(m_bDebugIO) cout << m_pClassName << "clearFlipFlop() - Port 0x" << m_pClearFlipFlopPort->getAddress() << endl;
	m_pClearFlipFlopPort->writeByte( 0x00 );
}


// Purpose	: Creates the DMA controller objects internal state.
//
// Author	: Daniel J Hawkins
//
// Date		: 28/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CDMAController::create( int iControllerID, WORD iBasePort, WORD pPagePortMap[], BYTE iChannelBase, BYTE iChannelCount )
{
	bool bSuccess;
	WORD iPort;
	BYTE iChannel;
	CDMAChannel* pChannel;
	DWORD iChannelError;
	const char pFunctionName[] = "create - ";

	// Assume failure.
	bSuccess = false;

	// Store controller attributes.
	m_iID = iControllerID;
	m_iBasePort = iBasePort;
	m_iChannelBase = iChannelBase;
	m_iChannelCount = iChannelCount;

	// Reference IO manager.
	CIOManager& IOManager = Application.getSystem().getIOManager();

	// Allocate channel collection.
	m_pChannels = new TList<CDMAChannel*>();
	if( m_pChannels!=NULL )
	{
		// Request start address ports.
		for( iChannel=iChannelBase, iPort=iBasePort ; iChannel<iChannelBase+iChannelCount ; iChannel++, iPort+=2 )
		{
			// Create new channel object.
			pChannel = new CDMAChannel();
			iChannelError = pChannel->create( this, iChannel, 
								IOManager.requestPort(iPort+m_iAddressPortOffset),
								IOManager.requestPort(iPort+m_iWordCountPortOffset),
								IOManager.requestPort(pPagePortMap[iChannel]) );
			if( iChannelError==0 )
				m_pChannels->insert( pChannel );
			else
				cout << m_pClassName << "create() - Failed to create channel " << iChannel << " error " << iChannelError << "." << endl;
		}

		// Request status(read) and command(write) port.
		m_pStatusPort = IOManager.requestPort( iBasePort+m_iStatusPortOffset );
		m_pCommandPort = m_pStatusPort;

		// Request request(write) port.
		m_pRequestPort = IOManager.requestPort( iBasePort+m_iRequestPortOffset );

		// Request single mask bit(write) port.
		m_pSingleMaskBitPort = IOManager.requestPort( iBasePort+m_iSingleMaskBitPortOffset );

		// Request mode(write) port.
		m_pModePort = IOManager.requestPort( iBasePort+m_iModePortOffset );

		// Request clear LSB/MSB flip-flop(write) port.
		m_pClearFlipFlopPort = IOManager.requestPort( iBasePort+m_iClearFlipFlopPortOffset );

		// Request master clear/reset(write) and temporary(read) port.
		m_pMasterClearPort = IOManager.requestPort( iBasePort+m_iMasterClearPortOffset );
		m_pTemporaryPort = m_pMasterClearPort;

		// Request clear mask(write) port.
		if(m_bDebug) cout << m_pClassName << pFunctionName << "Request ClearMask port" << endl;
		m_pClearMaskPort = IOManager.requestPort( iBasePort+m_iClearMaskPortOffset );

		// Request write all mask bits(write) port.
		if(m_bDebug) cout << m_pClassName << pFunctionName << "Request WriteAllMaskBits port" << endl;
		m_pWriteAllMaskBitsPort = IOManager.requestPort( iBasePort+m_iWriteAllMaskBitsPortOffset );

		// Success.
		bSuccess = true;
	}

	// Return success of creation.
	return bSuccess;
}


// Purpose	: Returns the requested DMA channel if owned by the controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/02/99
//
// Modification History
// Date		Initials	Reason
//
const CDMAChannel* CDMAController::requestChannel( BYTE iChannel ) const
{
	CDMAChannel* pChannel;

	// Iterate over channels owned by this controller.
	TCursor<CDMAChannel*> Channels( *m_pChannels );
	for( pChannel=Channels.first() ; Channels.more() ; pChannel=Channels.next() )
		if( pChannel->getNumber()==iChannel )
		{
			if(m_bDebug) cout << m_pClassName << "requestChannel() - Channel found." << endl;
			break;
		}

	// Return channel object.
	return pChannel;
}



// Purpose	: Sets the channel mask.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAController::setChannelEnable( CDMAChannel* pChannel, bool bEnable )
{
	BYTE iMask;

	// Convert channel number to bit mask.
	iMask = 1;
	iMask <<= pChannel->getNumber();
	
	// Combine mask with known register state.
	if( bEnable==true )
		m_iChannelMask = m_iChannelMask|iMask;
	else
		m_iChannelMask = m_iChannelMask&(~iMask);

	// Write mask to port.
	m_pMaskPort->writeByte( m_iChannelMask );
}


// Purpose	: Sets the controllers mode.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDMAController::setMode( CDMAChannel* pChannel, EDMAType eType, EDMADirection eDirection ) const
{
	BYTE iMode;
	const char pFunctionName[] = "setMode() - ";

	if(m_bDebugIO) cout << m_pClassName << pFunctionName << "Ch=" << pChannel->getNumber() << " Typ=" << (BYTE)eType << " Dir=" << (BYTE)eDirection << endl;

	// Decode direction into but 2 and 3.
	switch( eType )
	{
	case DT_IO2RAM:	iMode = 0x04; break;
	case DT_RAM2IO: iMode = 0x08; break;
	default: cout << m_pClassName << pFunctionName << "Invalid type " << (BYTE)eType << endl; break;
	}

	// Place channel into bits 0 and 1.
	iMode |= pChannel->getNumber()&0x03;

	// Place direction into bit 5.
	switch( eDirection )
	{
	case DD_INC: iMode |= 0x00; break;
	case DD_DEC: iMode |= 0x20; break;
	default: break;
	}

	// Force bit 6 to 1 to enable DMA.
	iMode |= 0x40;

	// Write mode to port.
	if(m_bDebugIO) cout << m_pClassName << pFunctionName << "Byte 0x" << iMode << " sent to mode port 0x" << m_pModePort->getAddress() << endl;
	m_pModePort->writeByte( iMode );
}


