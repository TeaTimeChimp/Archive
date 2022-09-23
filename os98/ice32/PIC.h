// PIC.h: interface for the CPIC class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PIC_H__883E5C92_A7D6_11D1_B562_000000000000__INCLUDED_)
#define AFX_PIC_H__883E5C92_A7D6_11D1_B562_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Include files.
#include "IOManager.h"

// Definition of the PIC programmable interrupt controller class.
class CPIC  
{
	// Private static data members.
	static const BYTE	m_IRQ_BASE_1;
	static const BYTE	m_IRQ_BASE_2;

	// Private data members.
	BYTE				m_pIRQToInterrupt[16];
	const CIOPort*		m_pController1Lo;
	const CIOPort*		m_pController1Hi;
	const CIOPort*		m_pController2Lo;
	const CIOPort*		m_pController2Hi;

	// Private member functions.
	void				restart( const CIOPort*, const CIOPort*, bool, BYTE, BYTE );

public:
	// Public constructor and destructor.
						CPIC();
	virtual				~CPIC();

	// Public member functions.
	void				endOfInterrupt() const;
	const long			create();
	const BYTE			irqToInt( const BYTE ) const;
};

#endif // !defined(AFX_PIC_H__883E5C92_A7D6_11D1_B562_000000000000__INCLUDED_)
