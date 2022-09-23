#ifndef _SELECTOR
#define _SELECTOR

#include "CPUTypes.h"
#include "DescriptorTable.h"

// Definition of selector class.
class CSelector
{
	static const char	m_pClassName[];

	SELECTOR			m_iSelector;
	SELECTOR			m_iPriviledgeLevel	:  2;
	SELECTOR			m_iTableIndicator	:  1;
	SELECTOR			m_iIndex			: 13;

public:
	// Public constructor and destructor.
	CSelector( SELECTOR );
	~CSelector();

	// Public member functions.
	void					dump();
	SELECTOR				getNumber();
	EPriviledgeLevel		getPriviledgeLevel();
	EDescriptorTableScope	getDescriptorTableScope();
};

#endif