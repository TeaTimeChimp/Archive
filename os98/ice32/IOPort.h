// IOPort.h: interface for the CIOPort class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IOPORT_H__9193F3E9_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_IOPORT_H__9193F3E9_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"

class CIOPort  
{
	WORD m_iAddress;

public:
	// Public constructor and destructor.
	CIOPort( WORD );
	~CIOPort();
	
	// Public member functions.
	const WORD	getAddress() const;
	void		writeByte( const BYTE ) const;
	const BYTE	readByte() const;
};

#endif // !defined(AFX_IOPORT_H__9193F3E9_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
