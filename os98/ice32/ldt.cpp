#include "libc\malloc.h"

#include "LDT.h"


// Static data member initialisers.
const char m_pClassName[] = "LDT::";


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
CLDT::CLDT( void* pBase, WORD iEntries ):
CDescriptorTable( pBase, iEntries )
{
	// Initialise data members.
	m_iSelector = NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
CLDT::~CLDT()
{
}


// Purpose	: Return the GDT selector used to reference the LDT.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CLDT::getLDTSelector()
{
	// Return selector.
	return m_iSelector;
}


// Purpose	: Sets the GDT selector used to reference the LDT.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
void CLDT::setLDTSelector( SELECTOR iSelector )
{
	// Set selector member.
	m_iSelector = iSelector;
}
