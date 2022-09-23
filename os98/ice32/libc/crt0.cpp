#include "crt0.h"


int m_iX = 0;
int m_iY = 0;


// Purpose	: Exit point for the application.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/98
//
// Modification History
// Date		Initials	Reason
//
int atexit( void ( __cdecl *func )( void ) )
{
	return 1;
}


// Purpose	: Entry point for the application.
//
// Author	: Daniel J Hawkins
//
// Date		: 24/01/98
//
// Modification History
// Date		Initials	Reason
//
void NtProcessStartup()
{
	// Call main function.
	main();
}



void mainCRTStartup()
{
	// Call main function.
	main();
}


void _outp( unsigned short Port, unsigned char Char )
{
	__asm mov dx, Port
	__asm mov al, Char
	__asm out dx, al
}

