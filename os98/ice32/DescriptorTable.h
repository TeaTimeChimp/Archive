// DescriptorTable.h: interface for the CDescriptorTable class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DESCRIPTORTABLE_H__6CB49A73_A4A4_11D1_B553_000000000000__INCLUDED_)
#define AFX_DESCRIPTORTABLE_H__6CB49A73_A4A4_11D1_B553_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"
#include "Descriptor.h"


// Enumeration of descriptor table scoping.
enum EDescriptorTableScope
{
	DTS_GLOBAL	= 0,
	DTS_LOCAL	= 1,
	DTS_INVALID	= 2
};
	

class CDescriptorTable  
{
	// Private data members.
	static const char	m_pClassName[];
	static const bool	m_bDebug;
	CDescriptor*		m_pFirst;
	CDescriptor*		m_pLast;
	CDescriptor*		m_pCursor;
	unsigned short		m_iEntries;

protected:
	// Protected member functions.
	CDescriptor*		first();
	const CDescriptor*	getBase() const;
	unsigned short		getEntries() const;
	bool				more();
	CDescriptor*		next();
	SELECTOR			setMemoryDescriptor( CDescriptor*, EDescriptorType, EPriviledgeLevel, void*, DWORD );
	SELECTOR			setGateDescriptor( CDescriptor*, EDescriptorType, EPriviledgeLevel, SELECTOR, void* );

public:
						CDescriptorTable( void*, WORD );
	virtual				~CDescriptorTable();

	// Public member functions.
	SELECTOR			addMemoryDescriptor( EDescriptorType, EPriviledgeLevel, void*, DWORD );
	SELECTOR			addGateDescriptor( EDescriptorType, EPriviledgeLevel, SELECTOR, void* );
	const unsigned long	create();
	CDescriptor*		getDescriptor( SELECTOR );
	CDescriptor*		getFirstAvailableDescriptor();
};

#endif // !defined(AFX_DESCRIPTORTABLE_H__6CB49A73_A4A4_11D1_B553_000000000000__INCLUDED_)
