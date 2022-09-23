// ostream.cpp: implementation of the ostream class.
//
//////////////////////////////////////////////////////////////////////

#include "..\libc\stdio.h"
#include "..\libcpp\ostream.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

ostream::ostream()
{

}

ostream::~ostream()
{
}


ostream& ostream::operator <<( ostream&(*pOStreamFunction)(ostream&) )
{
	// Return self-reference.
	return pOStreamFunction(*this);
}


ostream& ostream::operator <<( const unsigned char Byte )
{
	// Output byte.
	return Output( Byte );
}

ostream& ostream::operator <<( const unsigned short Word )
{
	// Output word (2 bytes).
	return Output( Word );
}

ostream& ostream::operator <<( const unsigned long DWord )
{
	// Output double word (4 bytes).
	return Output( DWord );
}


// Purpose	: Character output operator.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
ostream& ostream::operator<<( const char iCharacter )
{
	// Return self-reference.
	return Output( iCharacter );
}


ostream& ostream::operator <<( long DWord )
{
	// Output double word (4 bytes).
	return Output( (unsigned long)DWord );
}

ostream& ostream::operator <<( const char* pString )
{
	// Output character string.
	return Output( pString );
}

//ostream& ostream::operator <<( const void* pPointer )
//{
	// Output pointer value.
//	return Output( (unsigned long)pPointer );
//}


// Purpose	: Flushes the output stream.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
ostream& ostream::flush()
{
	// Return self-reference.
	return *this;
}

ostream& ostream::Output( const char )
{
	return *this;
}

ostream& ostream::Output( const unsigned char )
{
	return *this;
}

ostream& ostream::Output( const unsigned short )
{
	return *this;
}

ostream& ostream::Output( const unsigned long )
{
	return *this;
}

ostream& ostream::Output( const char* )
{
	return *this;
}

