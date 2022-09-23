// Timer.cpp: implementation of the CTimer class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libc\conio.h"
#include ".\libcpp\ostream.h"

#include "Application.h"
#include "CPUTypes.h"
#include "System.h"
#include "Timer.h"


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

const CTimer::OSCILLATOR_FREQUENCY	= 1193180;
const CTimer::CHANNEL0_LATCH		= 0x40;
const CTimer::CHANNEL1_LATCH		= 0x41;
const CTimer::CHANNEL2_LATCH		= 0x42;
const CTimer::COMMAND_REGISTER		= 0x43;

// Zero clock tick count.
unsigned long volatile CTimer::m_iTickCount = 0;


// Purpose	: Default constructor for the timer class.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
CTimer::CTimer()
{
	// Initialise member variables.
	m_iTickCount		= 0;
	m_iIRQ				= 0;
	m_pCommandRegister	= NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
CTimer::~CTimer()
{
	// Get system object reference.
	CIOManager& IOManager = Application.getSystem().getIOManager();

	// Release IO resources.
	m_pChannelLatches[0] = IOManager.releasePort( m_pChannelLatches[0] );
	m_pChannelLatches[1] = IOManager.releasePort( m_pChannelLatches[1] );
	m_pChannelLatches[2] = IOManager.releasePort( m_pChannelLatches[2] );
	m_pCommandRegister = IOManager.releasePort( m_pCommandRegister );
}


// Purpose	: Return the IRQ number used by the timer.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
const BYTE CTimer::getIRQ() const
{
	// Return IRQ number.
	return m_iIRQ;
}


// Purpose	: Initialises the system interval timer.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CTimer::create()
{
	bool bSuccess;
	BYTE iTimerInterrupt;
	CSystem* pSystem;
	CIOManager* pIOManager;
	DWORD iCount;

	// Prolog.
	cout << "Timer...";

	// Get a pointer to the system object.
	pSystem = &(Application.getSystem());
	pIOManager = &(pSystem->getIOManager());

	// Hook system timer interrupt.
	iTimerInterrupt = pSystem->getPIC().irqToInt( m_iIRQ );
	pSystem->getCPU().getIDT().registerHandler( iTimerInterrupt, CTimer::interruptServiceRequest );

	// Request timer IO resources.
	m_pChannelLatches[0] = pIOManager->requestPort( CHANNEL0_LATCH );
	m_pChannelLatches[1] = pIOManager->requestPort( CHANNEL1_LATCH );
	m_pChannelLatches[2] = pIOManager->requestPort( CHANNEL2_LATCH );
	m_pCommandRegister = pIOManager->requestPort( COMMAND_REGISTER );

	// Perform one-shot interrupt probe for timer hardware.
	iCount = 0;
	pSystem->getCPU().enableInterrupts( true );
	programOscillator( 0, 0, 18 );
	while( iCount<100000000 )
	{	
		// Probe tick counter looking for change.
		if( m_iTickCount>0 )
			break;

		// Increment loop counter.
		iCount++;
	}
	pSystem->getCPU().enableInterrupts( false );

	// Program timer for normal operation if interrupt was detected.
	if( m_iTickCount>0 )
	{
		// Interrupt detected.
		programOscillator( 0, 3, 18 );
		cout << "Ok." << endl;
		bSuccess = true;
	}
	else
	{
		// Interrupt not detected.
		cout << "Failed." << endl;
		bSuccess = false;
	}

	// Return success status.
	return bSuccess;
}


// Purpose	: Handles timer interrupts.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
void CTimer::interruptServiceRequest()
{
	// Increment tick count.
	m_iTickCount++;
	
	// End interrupt.
	Application.getSystem().getPIC().endOfInterrupt();
}


// Purpose	: Programs the oscillator that generates interrupts.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/02/98
//
// Modification History
// Date		Initials	Reason
//
void CTimer::programOscillator( BYTE iChannel, BYTE iMode, WORD iFrequency )
{
	DWORD iDivisor;
	CSystem* pSystem;

	// Initialise references.
	pSystem = &(Application.getSystem());

	// Validate channel and mode.
	if( iChannel<3 )
	{	
		// Calculate divisor required for timer.
		iDivisor = OSCILLATOR_FREQUENCY / iFrequency;
		if( iDivisor>0x0000ffff )
			iDivisor = 0x0000ffff;

		// Write command byte to timer.
		m_pCommandRegister->writeByte( (((iChannel&0x03)<<6)|0x30|((iMode&0x07)<<1)) );
	
		// Program frequency LSB then MSB.
		m_pChannelLatches[iChannel]->writeByte( (BYTE)(iDivisor&0x00ff) );
		m_pChannelLatches[iChannel]->writeByte( (BYTE)((iDivisor&0xff00)>>8) );
	}
}


// Purpose	: Delays execution for the specified number of clock ticks.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CTimer::delayExecution( const unsigned long iDelayPeriod ) const
{
	unsigned long iRestartCount;

	// Set restart count to now plus specified delay.
	iRestartCount = m_iTickCount + iDelayPeriod;
	while( m_iTickCount<iRestartCount );
}