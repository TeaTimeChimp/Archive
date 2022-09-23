// A20.h: interface for the CA20 class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_A20_H__9193F3E6_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_A20_H__9193F3E6_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#include "bool.h"
#include "..\ICE32\IOPort.h"

// A20 ports.
const BYTE KEYBOARD_COMMAND_PORT	= 0x64;	// AT Keyboard command port.
const BYTE KEYBOARD_DATA_PORT		= 0x60;	// AT Keyboard command port.
const BYTE KEYBOARD_STATUS_PORT		= 0x64; // AT Keyboard status port.
const BYTE PS2_PORTA				= 0x92;	// PS2 Bus controller port A.

// Keyboard status bit masks.
const BYTE S_READY_FOR_DATA	= 0x02;	// A20 gate control.

// PS2 Bus controller bit flags.
const BYTE PS2_A20BIT	= 0x02;		// A20 gate control.

// A20 Control method enumeration.
enum A20ControlMethod { ACM_NULL, ACM_UNKNOWN, ACM_AT, ACM_PS2 };

class CA20
{
	A20ControlMethod m_eControlMethod;
	CIOPort m_KeyboardCommandPort;
	CIOPort m_KeyboardDataPort;
	CIOPort m_KeyboardStatusPort;
	CIOPort m_PS2PortA;

	bool disableA20();
	bool disableUsingAT();
	bool disableUsingPS2();
	void enableA20();
	bool enableUsingAT();
	bool enableUsingPS2();
	BYTE readPS2PortA();
	void syncronizeKeyboard();
	void writePS2PortA( BYTE );
	void writeKeyboardCommand( BYTE );
	void writeKeyboardData( BYTE );

public:
	CA20();
	virtual ~CA20();

	// Public member functions.
	bool create();
	bool getEnabled();
	void setEnabled( bool );
};

#endif // !defined(AFX_A20_H__9193F3E6_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
