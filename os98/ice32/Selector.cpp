#include "libcpp\ostream.h"

#include "Application.h"
#include "Selector.h"


// Static member initialisers.
const char CSelector::m_pClassName[] = "CSelector::";


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/08/99
//
// Modification History
// Date		Initials	Reason
//
CSelector::CSelector( SELECTOR iSelector )
{
	m_iSelector			= iSelector;
	m_iPriviledgeLevel	= (iSelector & 0x0003)>>0;
	m_iTableIndicator	= (iSelector & 0x0004)>>2;
	m_iIndex			= (iSelector & 0xfff8)>>3;
} 


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/08/99
// 
// Modification History
// Date		Initials	Reason
//
CSelector::~CSelector()
{
}


// Purpose	: Dumps all relevant selector information.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/08/99
//
// Modification History
// Date		Initials	Reason
//
void CSelector::dump()
{
	CDescriptor* pDescriptor;
	const char pFunctionName[] = "dump - ";

	// Display member values.
	cout << m_pClassName << pFunctionName << "Selector = 0x" << m_iSelector << endl;
	cout << m_pClassName << pFunctionName << "DPL = " << m_iPriviledgeLevel << endl;
	cout << m_pClassName << pFunctionName << "TID = " << m_iTableIndicator << endl;

	// Locate descriptor for selector.
	switch( m_iTableIndicator )
	{
	case 0:
		{
			// Selector referes to GDT.
			pDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( m_iSelector );
			pDescriptor->dump();
			break;
		}
	case 1:
		{
			// Selector referes to LDT.
			break;
		}
	}
}


// Purpose	: Returns the scope of the table that the selector referes.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/08/99
//
// Modification History
// Date		Initials	Reason
//
EDescriptorTableScope CSelector::getDescriptorTableScope() 
{
	EDescriptorTableScope iTableScope;

	// Return scope of table.
	switch( m_iTableIndicator )
	{
	case 0:
		{
			iTableScope = DTS_GLOBAL;
			break;
		}
	case 1:
		{
			iTableScope = DTS_LOCAL;
			break;
		}
	default:
		{
			break;
		}
	}

	// Return scope of table.
	return iTableScope;
}