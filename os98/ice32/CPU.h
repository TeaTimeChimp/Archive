// CPU.h: interface for the CCPU class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_CPU_H__6CB49A72_A4A4_11D1_B553_000000000000__INCLUDED_)
#define AFX_CPU_H__6CB49A72_A4A4_11D1_B553_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "GDT.h"
#include "IDT.h"
#include "PageDirectoryEntry.h"

// Definition of the CPU class.
class CCPU  
{
	// Static data members.
	static const char		m_pClassName[];

	// CPU objects cannot be allocated dynamically. Malloc will no work reliably
	// until all memory is addressable.
	CIDT					m_IDT;
	CGDT					m_GDT;
	SELECTOR				m_iGlobalDataSelector;

	// Static constants.
	static DWORD			m_iNT;

#ifdef WIN32
	CPageDirectoryTable*	m_pCR3;
#endif

	// Private member functions.
	void					setGlobalDataSelector( SELECTOR );

public:
							CCPU( void*, void* );
	virtual					~CCPU();

	// Public member functions.
	const unsigned long		create();
	void					delay();
	void					dumpMemory( void* );
	void					enableInterrupts( bool );
	SELECTOR				getCS();
	CGDT&					getGDT();
	SELECTOR				getGlobalDataSelector();
	CIDT&					getIDT();
	const void*				getPageDirectoryTable() const;
	EDescriptorType			getSegmentType( SELECTOR );
	WORD					getTSS();
	void					setCS( SELECTOR );
	void					setGDTR( ADDRESS, WORD );
	void					setNT( bool );
	CPageDirectoryTable*	setPageDirectoryTable( CPageDirectoryTable* );
	void					setPagingEnabled( bool );
};

#endif // !defined(AFX_CPU_H__6CB49A72_A4A4_11D1_B553_000000000000__INCLUDED_)
