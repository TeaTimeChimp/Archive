// BusController.cpp: implementation of the CBusController class.
//
//////////////////////////////////////////////////////////////////////

#include "BusController.h"
#include "Main.h"

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
CBusController::CBusController()
{
	// Invalidate resources.
	m_pPortA = NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
CBusController::~CBusController()
{

}


// Purpose	: Creates the bus controllers internal structure.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CBusController::create()
{
	// Request controllers IO resources.
	m_pPortA = Application.getSystem().getIOManager().requestPort( 0 ); 

	// Should never be called.
	return 0;
}


// Purpose	: Return the architecture of the underlying bus controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
const EBusControllerType CBusController::getType() const
{
	// Return type member.
	return m_eType;
}


// Purpose	: Reads a byte from the specified bus controller port.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
const BYTE CBusController::readPort( const EBusControllerPort ePort ) const
{
	BYTE iByte;	
	
	// Default return value.
	iByte = 0;
	
	// Map port to architecture.
	switch( m_eType )
	{
	case BCT_PS2:
		{
			switch( ePort )
			{
			case BCP_PS2_PORTA:	
				{
					iByte = m_pPortA->readByte();	
					break;
				}
			}
		}
	}

	// Return byte read.
	return iByte;
}


// Purpose	: Writes a byte to the specified bus controller port.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CBusController::writePort( const EBusControllerPort ePort, const BYTE iByte ) const
{
	// Map port to architecture.
	switch( m_eType )
	{
	case BCT_PS2:
		{
			switch( ePort )
			{
			case BCP_PS2_PORTA:	m_pPortA->writeByte( iByte );	break;
			}
		}
	}
}
