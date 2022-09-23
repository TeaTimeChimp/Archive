// ostream_withassign.cpp: implementation of the ostream_withassign class.
//
//////////////////////////////////////////////////////////////////////


#include "ostream_withassign.h"

#ifdef WIN32
	#include <windows.h>
#endif

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

ostream_withassign cout;

// Lookup array for hexidecimal output.
const char m_pHex[] = "0123456789abcdef";

ostream_withassign::ostream_withassign()
{
	m_iX = 0;
	m_iY = 0;
	m_iWidth = 80;
	m_iHeight = 25;
	m_iBytesPerScanline = 160;

#ifdef WIN32
	// Map text screen memory.
	VirtualAlloc( (void*)0x000b8000, 80*2*25, MEM_COMMIT, PAGE_READWRITE );
#endif
}

ostream_withassign::~ostream_withassign()
{

}


// Purpose	: Flushes the stream.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
ostream& ostream_withassign::flush()
{
	// Return self-reference.
	return *this;
}


ostream& ostream_withassign::Output( const char* pString )
{
	while( *pString!='\0' )
	{
		PrintChar( *pString ); 
		pString++;
	}

	return *this;
}


ostream& ostream_withassign::Output( const unsigned char Byte )
{
	// Generate hex representation of character.
	PrintChar( m_pHex[Byte>>4] );
	PrintChar( m_pHex[Byte&0x0f] );

	// Return ostream object.
	return *this;
}


ostream& ostream_withassign::Output( const unsigned short Word )
{
	// Use byte output method to represent word.
	Output( (unsigned char)(Word>>8) );
	Output( (unsigned char)Word );

	// Return ostream object.
	return *this;
}


ostream& ostream_withassign::Output( const unsigned long DWord )
{
	// Use byte output method to represent double word.
	Output( (unsigned char)(DWord>>24) );
	Output( (unsigned char)(DWord>>16) );
	Output( (unsigned char)(DWord>>8) );
	Output( (unsigned char)DWord );

	// Return ostream object.
	return *this;
}


// Purpose	: Outputs a single character.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
ostream& ostream_withassign::Output( const char iCharacter )
{
	char pString[2];

	// Convert to string for printing.
	pString[0] = iCharacter;
	pString[1] = '\0';

	// Return self-reference.
	return Output( pString );
}

void ostream_withassign::PrintChar( const char Char )
{
	char* pAddress;

	switch( Char )
	{
		case '\n':	
		{
			// New line+CRN.
			m_iY++;
			m_iX = 0;
			break;
		}
		case 13:
		{
			// Carriage return.
			m_iX = 0; 
			break;
		}
		default:
		{
			// Any non-control character is displayed.
			pAddress = (char*)(0xb8000+(m_iY*(m_iWidth<<1))+(m_iX<<1));
			*pAddress = Char;
			m_iX++;
			if( m_iX==m_iWidth )
			{
				m_iX = 0;
				m_iY++;
			}
			break;
		}
	}

	// Bound check cursor position.
	if( m_iY==m_iHeight )
	{
		pAddress = (char*)0xb8000;
		for( int row=0 ; row<m_iHeight-1 ; row++ )
		{
			for( int col=0 ; col<m_iWidth ; col++ )
			{
				*pAddress = pAddress[m_iBytesPerScanline];
				pAddress += 2;
			}
		}
		m_iY = m_iHeight-1;
		pAddress = (char*)0xb8000+(m_iBytesPerScanline*(m_iHeight-1));
		for( int col=0 ; col<m_iWidth ; col++ )
		{
			*pAddress = ' ';
			pAddress += 2;
		}
	}
}
