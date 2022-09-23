// A20.cpp: implementation of the CA20 class.
//
//////////////////////////////////////////////////////////////////////

#include <dos.h>
#include <memory.h>
#include <iostream.h>

#include "A20.h"
#include "Main.h"


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/99
//
// Modification History
// Date		Initials	Reason
//
CA20::CA20():
m_KeyboardCommandPort(KEYBOARD_COMMAND_PORT),
m_KeyboardDataPort(KEYBOARD_DATA_PORT),
m_KeyboardStatusPort(KEYBOARD_STATUS_PORT),
m_PS2PortA(PS2_PORTA)
{
	// Initialise state.
	m_eControlMethod = ACM_NULL;
}


CA20::~CA20()
{
}


// Purpose	: Disables the A20 line.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::disableA20()
{
	// Don't bother disabling if already disabled.
	if( getEnabled()==true )
	{
		// Attempt disable through AT control method.
		if( m_eControlMethod==ACM_NULL || m_eControlMethod==ACM_AT )
			if( disableUsingAT()==true )
				m_eControlMethod = ACM_AT;
			else
				m_eControlMethod = ACM_NULL;

		// Attempt disable through PS2 control method.
		if( m_eControlMethod==ACM_NULL || m_eControlMethod==ACM_PS2 )
			if( disableUsingPS2()==true )
				m_eControlMethod = ACM_PS2;
			else
				m_eControlMethod = ACM_NULL;
	}

	// Return success of enable operation.
	return (bool)(m_eControlMethod!=ACM_NULL);
}


// Purpose	: Returns the state of the A20 gate hardware. This is
//
// Method	: Comparing 512 dwords at 0Mb and 1Mb.
//            If they are identical the chances are that
// 			  the A20 is held low by external hardware.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
// Modification History
//
bool CA20::getEnabled()
{
	bool bEnabled;
	int iComparison;
	void far* pFirstMegaByte;
	void far* pSecondMegaByte;

	// Create far pointers.
	pFirstMegaByte = MK_FP( 0x0000, 0x0000 );
	pSecondMegaByte = MK_FP( 0xffff, 0x0010 );

	// Perform comparisoon between 0th meg and 1st meg.
	iComparison = _fmemcmp( pFirstMegaByte, pSecondMegaByte, 512 );
	if( iComparison==0 )
	{
		// Data is identical and therefore probably the same physical memory.
		bEnabled = false;
	}
	else
	{
		// Memory is physically different.
		bEnabled = true;
	}

	// Return enable state.
	return bEnabled;
}


// Purpose	: Enables the A20 line.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CA20::enableA20()
{
	// Don't bother enabling if already enabled.
	if( getEnabled()==false )
	{
		// Not already enabled.
		cout << "Disabled...";

		// Attempt enable through AT control method.
		if( m_eControlMethod==ACM_NULL || m_eControlMethod==ACM_AT )
			if( enableUsingAT()==true )
				m_eControlMethod = ACM_AT;
			else
				m_eControlMethod = ACM_NULL;

		// Attempt enable through PS2 control method.
		if( m_eControlMethod==ACM_NULL || m_eControlMethod==ACM_PS2 )
			if( enableUsingPS2()==true )
				m_eControlMethod = ACM_PS2;
			else
				m_eControlMethod = ACM_NULL;
	}
	else
	{
		// A20 already enabled.
		cout << "Enabled...";
		if( m_eControlMethod==ACM_NULL )
			m_eControlMethod = ACM_UNKNOWN;
	}
}


// Purpose	: Attempts to enable the A20 line by using the
//			  AT keyboard controller.
//
// Author	: Daniel J Hawkins
// 
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::enableUsingAT()
{
	// Issue A20 enable command to keyboard controller.
	cout << "AT?...";
	writeKeyboardCommand( 0xd1 );
	writeKeyboardData( 0xdf );
	writeKeyboardCommand( 0xff );

	// Return A20 enable state.
	return getEnabled();
}


// Purpose	: Enables the A20 line by using the PS2 bus controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::enableUsingPS2()
{
	BYTE iPortA;

	// Set A20 enable bit in PS2 port A.
	cout << "PS2?...";
	iPortA = readPS2PortA();
	iPortA |= PS2_A20BIT;
	writePS2PortA( iPortA );

	// Return A20 enable state.
	return getEnabled();
}


// Purpose	: Allows toggling between the enable and disabled state,
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/98
//
// Modification History
// Date		Initials	Reason
//
void CA20::setEnabled( bool bEnable )
{
	// Enable or disable as appropriate.
	if( bEnable==true )
		enableA20();
	else
		disableA20();
}


// Purpose	: Disables the A20 line using the AT control method.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::disableUsingAT()
{
	writeKeyboardCommand( 0xd1 );
	writeKeyboardData( 0xdd );
	writeKeyboardCommand( 0xff );

	// Return A20 disable state.
	return (bool)!getEnabled();
}


// Purpose	: Attempts to disable the A20 line by using the
//			  PS2 bus controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::disableUsingPS2()
{
	BYTE iPortA;

	// Clear A20 enable bit in PS2 port A.
	iPortA = readPS2PortA();
	iPortA &= (~PS2_A20BIT);
	writePS2PortA( iPortA );

	// Return A20 disable state.
	return (bool)!getEnabled();
}


// Purpose	: Initialises the A20 for use within ICE.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CA20::create()
{
	bool bState;

	// Prolog.
	cout << "A20...";

	// Enable A20 line.
	setEnabled( true );

	// Epilog.
	bState = getEnabled();
	if( bState==true )
		cout << "Ok";
	else
		cout << "Failed";
	cout << endl;

	// Return initialisation success state.
	return bState;
}


// Purpose	: Reads a byte to the PS2 bus controller port A.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/99
//
// Modification History
// Date		Initials	Reason
//
BYTE CA20::readPS2PortA()
{
	// Read byte from port.
	return m_PS2PortA.readByte();
}


// Purpose	: Syncronize access to the keyboard controller
//			  by waiting until it's ready to receive data.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CA20::syncronizeKeyboard()
{
	// Wait for data ready.
	while( (m_KeyboardStatusPort.readByte()&S_READY_FOR_DATA)!=0  );
}


// Purpose	: Sends a single byte command to the keyboard controller.
//
// Author	: Daniel J Hawkins.
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CA20::writeKeyboardCommand( BYTE iCommand )
{
	syncronizeKeyboard();
	m_KeyboardCommandPort.writeByte( iCommand );
	syncronizeKeyboard();
}


// Purpose	: Sends a single data byte to the keyboard controller.
//
// Author	: Daniel J Hawkins.
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CA20::writeKeyboardData( BYTE iData )
{
	syncronizeKeyboard();
	m_KeyboardDataPort.writeByte( iData );
	syncronizeKeyboard();
}


// Purpose	: Writes a byte to the PS2 bus controller port A.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/99
//
// Modification History
// Date		Initials	Reason
//
void CA20::writePS2PortA( BYTE iByte )
{
	// Write byte to port.
	m_PS2PortA.writeByte( iByte );
}

