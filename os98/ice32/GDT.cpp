// GDT.cpp: implementation of the CGDT class.
//
//////////////////////////////////////////////////////////////////////

#include "libc\malloc.h"

#include "CPU.h"
#include "GDT.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CGDT::CGDT( void* pBase, WORD Entries ):
CDescriptorTable( pBase, Entries )
{
}


CGDT::~CGDT()
{
}


// Purpose	: Creates the internal structure of the GDT.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
ERRORCODE CGDT::create()
{
	SPseudoDescriptor Pointer;

	// Call inherited create method.
	CDescriptorTable::create();
	
	// Add NULL descriptor.
	setMemoryDescriptor( (CDescriptor*)getBase(), DT_READ_ONLY, DPL0, NULL, NULL );

	// Load GDTR.
	Pointer.iLimit	= (getEntries()<<3)-1;
	Pointer.pBase	= getBase();
#ifndef WIN32
	__asm lgdt Pointer
#endif

	// Return no error.
	return EC_NONE;
}


