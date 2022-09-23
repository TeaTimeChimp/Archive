#ifndef LDT
#define LDT

#include "DescriptorTable.h"
#include "Errors.h"

class CLDT : public CDescriptorTable  
{
	// Private static data members.
	static const char	m_pClassName[];

	// Private data members.
	SELECTOR			m_iSelector;

	// Private member functions.
	WORD				getLimit();

public:
	// Public constructor and destructor.
						CLDT( void*, WORD );
						~CLDT();

	// Public member functions.
	ERRORCODE			create();
	SELECTOR			getLDTSelector();
	void				setLDTSelector( SELECTOR );
};

#endif