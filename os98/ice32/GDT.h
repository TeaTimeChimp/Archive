// GDT.h: interface for the CGDT class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_GDT_H__6CB49A74_A4A4_11D1_B553_000000000000__INCLUDED_)
#define AFX_GDT_H__6CB49A74_A4A4_11D1_B553_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"
#include "DescriptorTable.h"
#include "Errors.h"

class CGDT : public CDescriptorTable  
{
	// Private data members.

	// Private member functions.
	WORD		getLimit();

public:
	// Public constructor and destructor.
				CGDT( void*, WORD );
				~CGDT();

	// Public member functions;
	ERRORCODE	create();
};

#endif // !defined(AFX_GDT_H__6CB49A74_A4A4_11D1_B553_000000000000__INCLUDED_)
