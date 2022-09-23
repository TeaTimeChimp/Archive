// KeyboardController.cpp: implementation of the CKeyboardController class.
//
//////////////////////////////////////////////////////////////////////

#include "KeyboardController.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
CKeyboardController::CKeyboardController()
{
	// Allocate IO port object.
	m_pCommandPort	= NULL;
	m_pStatusPort	= NULL;
}


CKeyboardController::~CKeyboardController()
{

}


// Purpose	: Return the architecture of the underlying keyboard controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
const EKeyboardControllerType CKeyboardController::getType() const
{
	// Return type member.
	return m_eType;
}


// Purpose	: Creates the keyboard driver stub.
//
// Author	: Daniel J Hawkins
//
// Date		: 2401/99
//
// Modification History
// Date		Initials	Reason
//
bool CKeyboardController::create()
{
	// Allocate IO port object.
	m_pCommandPort	= new CIOPort( 0x60 );
	m_pDataPort		= new CIOPort( 0x60 );
	m_pStatusPort	= new CIOPort( 0x64 );
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
void CKeyboardController::syncronize() const
{
	// Wait for data ready.
	while( (m_pStatusPort->readByte()&S_READY_FOR_DATA)!=0  );
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
void CKeyboardController::writeCommand( const BYTE iCommand ) const
{
	syncronize();
	m_pCommandPort->writeByte( iCommand );
	syncronize();	
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
void CKeyboardController::writeData( const BYTE iData ) const
{
	syncronize();
	m_pDataPort->writeByte( iData );
	syncronize();	
}


