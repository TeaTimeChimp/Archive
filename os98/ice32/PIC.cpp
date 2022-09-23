// PIC.cpp: implementation of the CPIC class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libc\conio.h"
#include ".\libcpp\ostream.h"

#include "Application.h"
#include "CPUTypes.h"
#include "PIC.h"

// Static data initialisers.
const BYTE CPIC::m_IRQ_BASE_1 = 0x20;
const BYTE CPIC::m_IRQ_BASE_2 = 0x70;


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructs the PIC object.
//
// Author	: Daniel J Hawkins
//
// Date		: 06/08/98
//
// Modification History
// Date		Initials	Reason
//
CPIC::CPIC()
{
}


// Purpose	: Destrutor.
//
// Author	: Daniel J Hawkins
//
// Date		: 06/08/98
//
// Modification History
// Date		Initials	Reason
//
CPIC::~CPIC()
{
	// Release IO ports.
	m_pController1Lo = Application.getSystem().getIOManager().releasePort( m_pController1Lo );
	m_pController1Hi = Application.getSystem().getIOManager().releasePort( m_pController1Hi );
	m_pController2Lo = Application.getSystem().getIOManager().releasePort( m_pController2Lo );
	m_pController2Hi = Application.getSystem().getIOManager().releasePort( m_pController2Hi );
}


// Purpose	: Initialises the programmable interrupt controllers.
//
// Author	: Daniel J Hawkins
//
// Date		: 06/08/98
//
// Modification History
// Date		Initials	Reason
//
const long CPIC::create()
{
	int iIRQ;	
	int iIndex;
	CIOManager* pIOManager;

	// Prolog.
	cout << "Programmable interrupt controller...";

	// Request IO resources.
	pIOManager = &(Application.getSystem().getIOManager());
	m_pController1Lo = pIOManager->requestPort( 0x20 );
	m_pController1Hi = pIOManager->requestPort( 0x21 );
	m_pController2Lo = pIOManager->requestPort( 0xa0 );
	m_pController2Hi = pIOManager->requestPort( 0xa1 );

	// Map IRQ address ranges.
	iIRQ = m_IRQ_BASE_1;
	for( iIndex=0 ; iIndex<8 ; iIndex++ )
		m_pIRQToInterrupt[iIndex] = iIRQ++;
	iIRQ = m_IRQ_BASE_2;
	for( iIndex=8 ; iIndex<16 ; iIndex++ )
		m_pIRQToInterrupt[iIndex] = iIRQ++;

	// Restart controllers.
	restart( m_pController1Lo, m_pController1Hi, true, m_pIRQToInterrupt[0], 4 );
	restart( m_pController2Lo, m_pController2Hi, true, m_pIRQToInterrupt[8], 2 );

	// Enable all interrupt lines (OCW1).
	m_pController1Hi->writeByte( 0x00 );
	m_pController2Hi->writeByte( 0x00 );

	// Epilog.
	cout << "Ok" << endl;

	// Always return success.
	return true;
}


// Purpose	: Restarts the specified PIC with IRQ and cascade properties.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
void CPIC::restart( const CIOPort* pLoPort, const CIOPort* pHiPort, bool Cascade, BYTE BaseIRQ, BYTE CascadeBitmap )
{
	// Write ICW1.
	if( Cascade==true )
	{
		// More than one controller.
		pLoPort->writeByte( 0x11 );
	}
	else
	{
		// Single controller.
		pLoPort->writeByte( 0x13 );
	}

	// Write ICW2(5 MSBs of interrupt type).
	pHiPort->writeByte( BaseIRQ&0xf8 );

	// Write ICW3.
	pHiPort->writeByte( CascadeBitmap );

	// Write ICW4(Not fully nested, Nonbuffered, Master/Slave not relevant, Normal EOI, 8086).
	pHiPort->writeByte( 0x01 );
}


// Purpose	: Returns the interrupt number that maps to the specified IRQ.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
const BYTE CPIC::irqToInt( const BYTE iIRQ ) const
{
	BYTE iInterrupt;

	// Assume failure.
	iInterrupt = 0;

	// Lookup interrupt from IRQ number.
	if( iIRQ<16 )
		iInterrupt = m_pIRQToInterrupt[iIRQ];

	// Return interrupt number.
	return iInterrupt;
}


// Purpose	: Signals end of current interrupt.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPIC::endOfInterrupt() const
{
	// Signal end of interrupt processing.
	m_pController1Lo->writeByte( 0x20 );
}
