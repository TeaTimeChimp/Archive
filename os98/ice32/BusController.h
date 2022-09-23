// BusController.h: interface for the CBusController class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BUSCONTROLLER_H__9193F3EA_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_BUSCONTROLLER_H__9193F3EA_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"
#include "IOPort.h"

// PS2 Bus controller port mappings.
const WORD PS2_PORTA	= 0x0092;

// PS2 Bus controller bit flags.
const BYTE PS2_A20BIT	= 0x02;


enum EBusControllerType { BCT_NULL, BCT_PS2 };
enum EBusControllerPort { BCP_NULL, BCP_PS2_PORTA };

class CBusController  
{
	// Private data members.
	const CIOPort*		m_pPortA;
	EBusControllerType	m_eType;

public:
	CBusController();
	virtual ~CBusController();

	// Public member functions.
	const unsigned long			create();
	const EBusControllerType	getType() const;	
	const BYTE					readPort( const EBusControllerPort ) const;
	void						writePort( const EBusControllerPort, const BYTE ) const;
};

#endif // !defined(AFX_BUSCONTROLLER_H__9193F3EA_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
