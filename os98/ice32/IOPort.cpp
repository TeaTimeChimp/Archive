// IOPort.cpp: implementation of the CIOPort class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "..\ice32\IOPort.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructs the IO Port object with the specified IO address.
//
// Author	: Daniel J Hawkins
//
// Date		: 09/07/98
//
// Modification History
// Date		Initials	Reason
//
CIOPort::CIOPort( WORD iAddress )
{
	// Initialise port object.
	m_iAddress = iAddress;
}


// Purpose	: Destructs an IO port object.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
CIOPort::~CIOPort()
{

}


// Purpose	: Returns the address that the port referes to.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/09/98
//
// Modification History
// Date		Initials	Reason
//
const WORD CIOPort::getAddress() const
{
	// Return port member.
	return m_iAddress;
}


// Purpose	: Reads a byte from the IO port.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
const BYTE CIOPort::readByte() const
{
	BYTE iByte;
	WORD iAddress;

	// Copy address member to local storage.
	iAddress = m_iAddress;

	__asm	mov	dx, iAddress
	__asm	in	al, dx
	__asm	mov	iByte, al

	// Return byte read from port.
	return iByte;
}


// Purpose	: Writes a byte to the IO port.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CIOPort::writeByte( const BYTE iByte ) const
{
	WORD iAddress;

	// Copy address member to local storage.
	//cout << "IOPort::writeByte(" << iByte << ") to port " << iAddress << "." << endl;
	iAddress = m_iAddress;

#ifndef WIN32	
	__asm	mov		dx, iAddress
	__asm	mov		al, iByte
	__asm	out		dx, al
#endif

}
