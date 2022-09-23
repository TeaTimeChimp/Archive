// BootController.h: interface for the CBootController class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BOOTCONTROLLER_H__1CD3FA36_AF1F_11D2_B631_000000000000__INCLUDED_)
#define AFX_BOOTCONTROLLER_H__1CD3FA36_AF1F_11D2_B631_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "BootDevice.h"

class CBootController  
{
	// Private data members.

public:
	// Constructor and destructor.
							CBootController();
	virtual					~CBootController();

	// Public member functions.
	virtual CBootDevice*	getBootDevice() = 0;
};

#endif // !defined(AFX_BOOTCONTROLLER_H__1CD3FA36_AF1F_11D2_B631_000000000000__INCLUDED_)
