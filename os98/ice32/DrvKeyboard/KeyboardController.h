// KeyboardController.h: interface for the CKeyboardController class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_KEYBOARDCONTROLLER_H__9193F3E5_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_KEYBOARDCONTROLLER_H__9193F3E5_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"
#include "IOPort.h"	// Added by ClassView

// Status bit masks.
const BYTE S_READY_FOR_DATA	= 0x02;

// Enumeration of keyboard controller types.
enum EKeyboardControllerType { KCT_NULL, KCT_AT };

class CKeyboardController  
{
	CIOPort*				m_pDataPort;
	CIOPort*				m_pStatusPort;
	CIOPort*				m_pCommandPort;
	EKeyboardControllerType	m_eType;

	// Private member functions.
	void							syncronize() const;

public:
	// Public constructor and destructor.
									CKeyboardController();	
	virtual							~CKeyboardController();

	// Public member funcitons.
	const EKeyboardControllerType	getType() const;
	void							writeCommand( const BYTE ) const;
	void							writeData( const BYTE ) const;
};

#endif // !defined(AFX_KEYBOARDCONTROLLER_H__9193F3E5_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
