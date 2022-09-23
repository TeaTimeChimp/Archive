// FloppyDiskController.cpp: implementation of the CFloppyDiskController class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libc\memory.h"
#include ".\libcpp\ostream.h"

#include "Application.h"
#include "FloppyDiskController.h"
#include "System.h"

// Inlcude template source.
#include "TCursor.cpp"
#include "TList.cpp"

// Static class members. 
const char			CFloppyDiskController::m_pClassName[]			= "FloppyDiskController::";
const bool			CFloppyDiskController::m_bDebug					= false;
const bool			CFloppyDiskController::m_bDebugInit				= false;
const bool			CFloppyDiskController::m_bDebugIO				= false;
const bool			CFloppyDiskController::m_bDebugCmd				= false;
const WORD			CFloppyDiskController::m_iDigitalOutputRegister	= 0x03f2;
const WORD			CFloppyDiskController::m_iMainStatusRegister	= 0x03f4;
const WORD			CFloppyDiskController::m_iDataRegister			= 0x03f5;
const WORD			CFloppyDiskController::m_iPortRetryAttempts		= 0x2000;
const BYTE			CFloppyDiskController::m_iDMAChannel			= 0x02;
const unsigned long CFloppyDiskController::MOTOR_OFF_DELAY			= 3;
const CFloppyDiskController* CFloppyDiskController::m_pSingletonInstance = NULL;
const CFloppyDiskController::CCommand CFloppyDiskController::m_pCommands[MAX_FDC_COMMANDS] = 
	{ 
		CCommand( false, 0x00, 0, 0 ),// NULL
		CCommand( false, 0x03, 2, 0 ),// SPECIFY_CHARACTERISTICS
		CCommand( false, 0x04, 1, 1 ),// SENSE_DRIVE_STATUS
		CCommand( true , 0x0f, 2, 0 ),// SEEK
		CCommand( true , 0x07, 1, 0 ),// RECALIBRATE
		CCommand( true , 0xe6, 8, 7 ),// READ_DATA
		CCommand( true , 0x4a, 1, 7 ) // READ_ID
	};


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CFloppyDiskController::CFloppyDiskController()
{
	// Initialise object state.
	m_pDMAChannel					= NULL;
	m_iCommandQueueEntries			= 0;
	m_iDigitalOutputRegisterState	= 0x0c;
	m_iResultsPending				= 0;
	m_bWaitForInterrupt				= false;
	m_pDigitalOutputRegister		= NULL;
	m_pMainStatusRegister			= NULL;
	m_pDataRegister					= NULL;
	m_iCallsToTimerHandle			= 0;
	m_pQueue						= NULL;

	// Set static instance pointer.
	m_pSingletonInstance = this;

	// Create collection of possible four drive units.
	m_pDriveUnits = new TList<CDriveUnit*>();
	m_pDriveUnits->insert( new CDriveUnit(this,0) );
	m_pDriveUnits->insert( new CDriveUnit(this,1) );
	m_pDriveUnits->insert( new CDriveUnit(this,2) );
	m_pDriveUnits->insert( new CDriveUnit(this,3) );
}


CFloppyDiskController::~CFloppyDiskController()
{

}


// Purpose	: Initialises the floppy disk controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 05/03/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CFloppyDiskController::create()
{
	int iRetry;	
	bool bEnabled;
	CDriveUnit* pDriveUnit;

	// Prolog.
	cout << "NEC765 Floppy disk controller...";

	// Get pointers to system objects.
	CPIC& PIC				= Application.getSystem().getPIC();
	CIDT& IDT				= Application.getSystem().getCPU().getIDT();
	CTimer& Timer			= Application.getSystem().getTimer();
	CIOManager&	IOManager	= Application.getSystem().getIOManager();
	CDMAManager& DMAManager	= Application.getSystem().getDMAManager();

	// Allocate IO communication queue.
	m_pQueue = new TQueue<BYTE>;

	// Request IO resources.
	m_pDigitalOutputRegister	= IOManager.requestPort( m_iDigitalOutputRegister );
	m_pMainStatusRegister		= IOManager.requestPort( m_iMainStatusRegister );
	m_pDataRegister				= IOManager.requestPort( m_iDataRegister );

	// Request DMA resources.
	m_pDMAChannel = DMAManager.requestChannel( m_iDMAChannel );

	// Hook floppy disk interrupt.
	IDT.registerHandler( PIC.irqToInt(IRQ), CFloppyDiskController::diskISR );

	// Hook timer interrupt.
	IDT.registerHandler( PIC.irqToInt(Timer.getIRQ()), CFloppyDiskController::timerISR );

	// "Reset-Enable" controller.
	iRetry = 0;
	bEnabled = false;
	while( iRetry<3 && bEnabled==false )
	{
		// Force controller reset.
		if( reset()==true )
		{
			// Read result of sense interrupt issued by ISR.
			readBytes( 2 );

			// Force enable.
			if( enable()==true )
			{
				// Read result of sense interrupt issued by ISR.
				readBytes( 2 );
				bEnabled = true;
			}
		}
		
		// Retry reset.
		iRetry++;
	}	

	// Sense interrupt status on all devices if controller is enabled.
	if( bEnabled==true )
	{
		// Sense interrupt for each drive unit.
		TCursor<CDriveUnit*> DriveUnits(*m_pDriveUnits);
		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )
		{
			//pDriveUnit->select();
			if( senseInterruptStatus()==true )
				readBytes( 2 );
		}

		// Turn motor on and sense status for all drive units.
		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )
		{
			pDriveUnit->motorOn();
			//m_pQueue->flush();
			//m_pQueue->push( 0 );
			//issueCommand( FDCC_SENSE_DRIVE_STATUS );
			//decodeStatus3( m_pQueue->pop() );
			pDriveUnit->motorOff();
		}

		// Epilog.
		cout << "Ok." << endl;
	}
	else
	{
		// Control enable failed.
		cout << "Failed." << endl;
	}

	// Return enable state of controller.
	return bEnabled;
}


// Purpose	: Decodes status register 3.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/04/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::decodeStatus3( BYTE iValue )
{
	cout << "(SR3)";
	if( iValue&0x40 )
	{
		if( iValue&0x10 )
		{
			if( iValue&0x04 )
			{
				// Success.
			}
			else
			{
				cout << "Head 1 seleceted.";
			}
		}
		else
		{	
			cout << "Track zero.";
		}
	}
	else
	{
		cout << "Write protect.";
	}
	cout << endl;
}


// Purpose	: Reads a byte from the controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 06/03/98
//
// Modification History
// Date		Initials	Reason
//
long CFloppyDiskController::readByte()
{
	long iRetry;
	long iByte;
	unsigned char iStatus;
	const char pFunctionName[] = "readByte() - ";

	// Wait for port to become ready.
	iRetry = m_iPortRetryAttempts;
	do
	{
		iStatus = m_pMainStatusRegister->readByte();
		iRetry--;
	}while( ((iStatus&0xc0)==0x80) && iRetry>0 );
		

	// Read data if ready.
	if( iRetry>0 )
	{
		// Port ready.
		iByte = m_pDataRegister->readByte();
		if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "Read byte " << iByte << endl;
	}
	else
	{
		cout << m_pClassName << pFunctionName << "No data at port" << endl;
		iByte = -1;
	}

	// Return byte read.
	return iByte;
}


// Purpose	: Reads a number of bytes from the FDC controller into
//			  the communication queue.
// 
// Author	: Daniel J Hawkins
//
// Date		: 06/03/98
//
// Modification History
// Date		Initials	Reason
//
long CFloppyDiskController::readBytes( unsigned long iCount )
{
	long iByte;
	unsigned long iBytesRead;
	const char pFunctionName[] = "readBytes() - ";

	if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "Count = " << iCount << endl;

	// Flush the data queue.
	m_pQueue->flush();

	// Read bytes from controller.
	iBytesRead = 0; 
	while( iCount>iBytesRead )
	{
		iByte = readByte();
		if( iByte<0 )
		{
			cout << m_pClassName << pFunctionName << "readByte() failed." << endl;
			iCount = 0;
		}
		else
		{
			m_pQueue->push( (BYTE)iByte );
			iBytesRead++;
		}
	}

	// Return number of bytes actually read.
	return iBytesRead;
}


// Purpose	: Handles interrupts triggered by the
//			  disk controller. Passing control to
//			  the singleton instance.
//
// Author	: Daniel J Hawkins
//
// Date		: 08/03/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::diskISR()
{
	// Call handler with instance.
	((CFloppyDiskController*)getInstance())->diskISRHandler();
}


// Purpose	: Handles interrupts from the floppy disk controller.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::diskISRHandler()
{
	long iByte;
	const char pFunctionName[] = "diskISRHandler() - ";

	// Check that interrupt was expected.
	if( m_bWaitForInterrupt==false )
		cout << m_pClassName << pFunctionName << "Unexpected FDC interrupt." << endl;
	else
	{
		// Reset wait flag.
		m_bWaitForInterrupt = false;

		// If no result expected sense interrupt.
		if( m_iResultsPending==0 )
		{
			if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "No results, sence interrupt status." << endl;
			if( senseInterruptStatus()==true )
				m_iResultsPending = 2;
		}
		else
		{
			// Read first result and put into queue.
			iByte = readByte();
			if( iByte>=0 )
			{
				m_pQueue->push( (BYTE)iByte );
				m_iResultsPending--;
			}
		}
	}

	// Send "End Of Interrupt" to PIC.
	Application.getSystem().getPIC().endOfInterrupt();
}


// Purpose	: Enables the floppy disk controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/04/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::enable()
{		
	if( m_bDebugInit ) cout << m_pClassName << "enable()" << endl;

	// Set interrupt flag.
	setWaitForInterruptFlag( true );

	// Enable controller.
	m_iResultsPending = 0;
	m_iDigitalOutputRegisterState = 0x1c;
	m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	// Hold "Enable" for at lease 10ms.
	Application.getSystem().getTimer().delayExecution( 10 );

	// Return interrupt success.
	return waitForInterrupt();
}


// Purpose	: Returns the boot device.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
CBootDevice* CFloppyDiskController::getBootDevice()
{
	CDriveUnit*	pDriveUnit;

	// Pick drive unit from list.
	TCursor<CDriveUnit*> DriveUnits( *m_pDriveUnits );	
	for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )
		if( pDriveUnit->getUnitNumber()==0 )
		{
			cout << m_pClassName << "gerBootDevice()" << endl;
			break;
		}

	// Return boot device.
	return pDriveUnit;
}


// Purpose	: Returns the singleton instance of the class.
//
// Author	: Daniel J Hawkins
// 
// Date		: 17/03/98
//
// Modification History
// Date		Initials	Reason
//
const CFloppyDiskController* CFloppyDiskController::getInstance()
{
	// Return a pointer to the singleton instance.
	return m_pSingletonInstance;
}


// Purpose	: Issues a command to the floppy disk controller.
//
// Author	: Daniel J hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CFloppyDiskController::issueCommand( EFDCCommand iCommand )
{
	long iByte;
	const CCommand* pCommand;
	int iParameterCount;
	const char pFunctionName[] = "issueCommand() - ";

	// Reference command structure.
	pCommand = &(m_pCommands[iCommand]);

	// Set interrupt state.
	setWaitForInterruptFlag( pCommand->getInterruptTriggerFlag()==true );

	// Store number of result codes expected ready for the ISR.
	m_iResultsPending = pCommand->getNumberOfResults();

	if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Command 0x" << pCommand->getCommandByte() << endl;

	// Send command byte.
	writeByte( pCommand->getCommandByte() );

	// Send command parameters.
	iParameterCount = pCommand->getNumberOfParameters();
	while( iParameterCount>0 )
	{
		writeByte( m_pQueue->pop() );
		iParameterCount--;
	}

	// Wait for interrupt if expecting.
	waitForInterrupt();

	// Read result codes(compensating for interrupt).
	if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Awaiting " << (unsigned char)m_iResultsPending << " result bytes." << endl;
	while( m_iResultsPending>0 )
	{
		iByte = readByte();
		if( iByte>=0 )
		{
			m_pQueue->push( (BYTE)iByte );
			m_iResultsPending--;
		}
	}

	// Always return no error.
	return 0;
}


// Purpose	: Immediate motor off for the specified drive unit.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::motorOff( const CDriveUnit* pDriveUnit )
{
	const char pFunctionName[] = "motorOff() - ";
	
		// Validate drive unit pointer.
	if( pDriveUnit!=NULL )
	{
		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Unit " << pDriveUnit->getUnitNumber() << endl;

		// OR motor bit with DOR state.
		m_iDigitalOutputRegisterState &= ((~(1<<(pDriveUnit->getUnitNumber()+4)))|0x0f);

		// Write status to "Digital Output Register"
		m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );
	}

	// Always returns true.
	return true;
}	


// Purpose	: Motor off request for the specified drive unit. Motor will
//			  not stop until the motor off delay reaches zero.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::requestMotorOff( const CDriveUnit* pDriveUnit )
{
	const char pFunctionName[] = "requestMotorOff() - ";
	
	// Validate drive unit pointer.
	if( pDriveUnit!=NULL )
	{
		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Unit " << pDriveUnit->getUnitNumber() << endl;

		// Flag drive unit as requesting motor off.
		((CDriveUnit*)pDriveUnit)->setMotorOffRequestFlag( true );
	}

	// Always returns true.
	return true;
}	


// Purpose	: Turns the motor on for the specified drive unit.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/04/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::requestMotorOn( const CDriveUnit* pDriveUnit )
{
	const char pFunctionName[] = "requestMotorOn() - ";

	// Validate drive unit pointer.
	if( pDriveUnit!=NULL )
	{
		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Motor ON unit " << pDriveUnit->getUnitNumber() << endl;
		
		// Turn motor on if currently off.
		if( pDriveUnit->getTimeToMotorOff()==0 )
		{
			// OR motor bit with DOR state.
			m_iDigitalOutputRegisterState |= (1<<(pDriveUnit->getUnitNumber()+4));
			if(m_bDebugIO) cout << m_pClassName << pFunctionName << "DOR=0x" << m_iDigitalOutputRegisterState << endl;

			// Write status to "Digital Output Register"
			m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

			// Wait for motor to "spin-up".
			Application.getSystem().getTimer().delayExecution( 16 );
		}
	
		// Initialise motor just turned on status.
		((CDriveUnit*)pDriveUnit)->setMotorOffRequestFlag( false );
		((CDriveUnit*)pDriveUnit)->setTimeToMotorOff( MOTOR_OFF_DELAY );
	}

	// Always returns true.
	return true;
}	


// Purpose	: Turns the motor on for the specified drive unit.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/04/98
//
// Modification History
// Date		Initials	Reason
//
unsigned long CFloppyDiskController::readBlocks( CDriveUnit* pDriveUnit, unsigned long iBlockNumber, unsigned long iBlockCount, void* pBuffer )
{
	BYTE iHeadUnit;
	BYTE iCylinder;
	DWORD iBlocksRead;
	DWORD iRetries;
	bool bDataRead;
	const char pFunctionName[] = "readBlocks() - ";

	// Not block read yet.
	iBlocksRead = 0;

	// Request motor on for drive unit.
	requestMotorOn( pDriveUnit );

	// Loop reading each block until complete.
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Reading " << iBlockCount << " blocks." << endl;
	while( iBlocksRead<iBlockCount )
	{
		// Cache common parameters.
		iHeadUnit = (((unsigned char)pDriveUnit->getHead(iBlockNumber))<<2)|(m_iDigitalOutputRegisterState&0x03);
		iCylinder = (unsigned char)pDriveUnit->getCylinder(iBlockNumber);

		// Initilise retry counter.
		iRetries = 3;

		do	
		{
			// Data not yet read.
			bDataRead = false;

			// Seek drive head to cylinder.
			m_pQueue->flush();
			m_pQueue->push( iHeadUnit );
			m_pQueue->push( iCylinder );
			issueCommand( FDCC_SEEK );

			// Check result of seek using sense interrupt status issued by the ISR.
			setStatusRegister0( m_pQueue->pop() );		
			pDriveUnit->setCurrentCylinder( m_pQueue->pop() );
			if( pDriveUnit->getCurrentCylinder()==iCylinder )
			{
				// Prepare DMA transfer for disk read.
				m_pDMAChannel->setTransferAreaSize( pDriveUnit->getBytesPerBlock() );
				m_pDMAChannel->transfer( pDriveUnit->getBytesPerBlock()-1, DT_IO2RAM, DD_INC );

				// Place read command parameter in queue.
				m_pQueue->flush();
				m_pQueue->push( iHeadUnit );
				m_pQueue->push( iCylinder );
				m_pQueue->push( (unsigned char)pDriveUnit->getHead(iBlockNumber) );
				m_pQueue->push( (unsigned char)pDriveUnit->getSector(iBlockNumber) );
				m_pQueue->push( (unsigned char)pDriveUnit->getDataBytesPerSector() );
				m_pQueue->push( (unsigned char)pDriveUnit->getEndOfTrack() );
				m_pQueue->push( (unsigned char)pDriveUnit->getGapLength() );
				m_pQueue->push( (unsigned char)pDriveUnit->getDataLength() );
				issueCommand( FDCC_READ_DATA );

				// Copy data from DMA transfer area to application buffer.
				if(m_bDebug) cout << m_pClassName << pFunctionName << "Copying 0x" << pDriveUnit->getBytesPerBlock() << " bytes from 0x" << (DWORD)(m_pDMAChannel->getTransferAreaPointer()) << " to 0x" << (DWORD)pBuffer << endl;
				memcpy( pBuffer, m_pDMAChannel->getTransferAreaPointer(), pDriveUnit->getBytesPerBlock() );
				pBuffer = (BYTE*)pBuffer + pDriveUnit->getBytesPerBlock();
				
				// Block has been read.
				bDataRead = true;
			}
			else
			{
				// Current cylinder different to cyclinder seeked.
				cout << m_pClassName << pFunctionName << "Drive reports cylinder " << pDriveUnit->getCurrentCylinder() << " seeked " << iCylinder << endl;

				// Recalibrate drive.
				m_pQueue->push( iHeadUnit );
				issueCommand( FDCC_RECALIBRATE );

				// Decrement retry counter.
				iRetries--;
			}
		} while( bDataRead==false && iRetries>0 );

		// Increment block number.
		iBlockNumber++;

		// Increment number of blocks read.
		iBlocksRead++;
	}

	// Request motor off for drive unit.
	requestMotorOff( pDriveUnit );

	// Return number of blocks read.
	return iBlocksRead;
}

// Purpose	: Resets the floppy disk controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/04/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::reset()
{
	if( m_bDebugInit ) cout << m_pClassName << "reset()" << endl;

	// Set interrupt flag.
	setWaitForInterruptFlag( true );

	// Reset controller.
	m_iResultsPending = 0;
	m_iDigitalOutputRegisterState = 0x00;
	m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	// Hold "Reset" for at lease 10ms.
	Application.getSystem().getTimer().delayExecution( 10 );

	// Return interrupt success.
	return waitForInterrupt();
}


// Purpose	: Selects the specified drive unit in the DOR.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/99
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::select( const CDriveUnit* pDriveUnit )
{
	// Write drive selection byte to digital output register.
	m_pDigitalOutputRegister->writeByte( (m_iDigitalOutputRegisterState&0xfc)|(unsigned char)(pDriveUnit->getUnitNumber()) );
}


// Purpose	: Senses the interrupt status of the controller lowering
//			  its' interrupt status line.
//
// Author	: Daniel J Hawkins
//
// Date		: 08/03/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::senseInterruptStatus() const
{
	if(m_bDebugIO) cout << m_pClassName << "senseInterruptStatus()" << endl;

	// Send "Sense Interrupt Status" command.
	return writeByte( 0x08 );
}


// Purpose	: Sets the value of status register 0. This is used for interrogating
//			  the status of issued commands. Once set values can be read through
//			  the methods provided.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/02/99
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::setStatusRegister0( BYTE iValue )
{
	// Store register value.
	m_iStatusRegister0 = iValue;
}


// Purpose	: Sets the wait for interrupt flag.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::setWaitForInterruptFlag( const bool bWaitForInterrupt )
{
	// Set flag.
	m_bWaitForInterrupt = bWaitForInterrupt;
}


// Purpose	: Handles interrupts triggered by the timer. Passing control to
//			  the singleton instance.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::timerISR()
{
	// Call handler with instance.
	((CFloppyDiskController*)getInstance())->timerISRHandler();
}


// Purpose	: Handles interrupts generated by the timer.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CFloppyDiskController::timerISRHandler()
{
	unsigned long iTimeToMotorOff;
	CDriveUnit* pDriveUnit;
 
	// Only handle on every sixteen interrupts.
	if( m_iCallsToTimerHandle--==0 )
	{
		// Reset interrupt processing counter.
		m_iCallsToTimerHandle = 16;

		// Clear statistics.
		m_iBytesRead = 0;
		m_iBytesWritten = 0;

		// Scan drive units for a motor off request.
		TCursor<CDriveUnit*> DriveUnits( *m_pDriveUnits );
		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )
		{
			// Check need to turn units motor off.
			if( pDriveUnit->getMotorOffRequestFlag()==true )
			{
				// Check time to motor off.
				iTimeToMotorOff = pDriveUnit->getTimeToMotorOff();
				if( iTimeToMotorOff>0 )
				{
					// Decrement time to motor off.
					pDriveUnit->setTimeToMotorOff( iTimeToMotorOff-1 );

					// Force motor off if just gone to zero.
					if( iTimeToMotorOff==1 )
						motorOff( pDriveUnit );
				}
			}
		}

		// Decrement watchdog timer.
		m_iInterruptTimeOut--;
	}
}


// Purpose	: Waits for an interrupt from the floppy disk controller to arrive.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/04/98
//
// Modification History
// Date		Initials	Reason
//
bool CFloppyDiskController::waitForInterrupt()
{
	bool bSuccess;	

	// Setup watchdog timer.
	m_iInterruptTimeOut = 3;

	// Look for interrupt.
	while( m_bWaitForInterrupt==true && m_iInterruptTimeOut>0 );

	// Return success(true if WFI flag is now false).
	bSuccess = !m_bWaitForInterrupt;
	//cout << "Wait for interrupt returned " << (long)bSuccess << endl;
	return bSuccess;
}


// Purpose	: Writes a byte to the controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
const bool CFloppyDiskController::writeByte( const BYTE iByte ) const
{
	int iRetry;
	bool bSuccess;
	unsigned char iStatus;

	// Assume failure.
	bSuccess = false;

	// Retry while FDC is busy.
	for( iRetry=m_iPortRetryAttempts ; iRetry>0 ; iRetry-- )
	{
		// Check ready status of the FDC.
		iStatus = m_pMainStatusRegister->readByte();
		if( (iStatus&0xc0)==0x80 )
		{
			// Write byte to port.
			m_pDataRegister->writeByte( iByte );
			bSuccess = true;
			break;
		}
	}

	// Signal failure.
	if( bSuccess==false )
		cout << "CFloppyDiskController::writeByte(1) Failed." << endl;

	// Return success status.
	return bSuccess;
}
