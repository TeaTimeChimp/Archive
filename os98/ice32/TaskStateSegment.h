// TaskStateSegment.h: interface for the CTaskStateSegment class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TASKSTATESEGMENT_H__AC7B7C42_B4A2_11D2_B636_000000000000__INCLUDED_)
#define AFX_TASKSTATESEGMENT_H__AC7B7C42_B4A2_11D2_B636_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"
#include "LDT.h"
#include "PageDirectoryEntry.h"

class CTaskStateSegment  
{
	// TSS as defined by Intel processors.
	SELECTOR	m_iLink;
	WORD		m_iReserved01;
	DWORD		m_iESP0;
	WORD		m_iSS0;
	WORD		m_iReserved02;
	DWORD		m_iESP1;
	WORD		m_iSS1;	
	WORD		m_iReserved03;
	DWORD		m_iESP2;
	WORD		m_iSS2;
	WORD		m_iReserved04;
	DWORD		m_iCR3;
	DWORD		m_iEIP;
	DWORD		m_iEFLAGS;
	DWORD		m_iEAX;
	DWORD		m_iECX;
	DWORD		m_iEDX;
	DWORD		m_iEBX;
	DWORD		m_iESP;
	DWORD		m_iEBP;
	DWORD		m_iESI;
	DWORD		m_iEDI;
	SELECTOR	m_iES;
	WORD		m_iReserved05;
	SELECTOR	m_iCS;
	WORD		m_iReserved06;
	SELECTOR	m_iSS;
	WORD		m_iReserved07;
	SELECTOR	m_iDS;
	WORD		m_iReserved08;
	SELECTOR	m_iFS;
	WORD		m_iReserved09;
	SELECTOR	m_iGS;
	WORD		m_iReserved10;
	SELECTOR	m_iLDT;
	WORD		m_iReserved11;
	WORD		m_iAttributes;
	WORD		m_iIOBitmapOffset;

public:
	CTaskStateSegment();
	~CTaskStateSegment();

	// Public member functions.
	CPageDirectoryTable*	getCR3();
	void					setCR3( CPageDirectoryTable* );
	void					setCurrentStackPointer( SELECTOR, void* );	
	void					setDataSelector( SELECTOR );	
	void					setInstructionPointer( SELECTOR, void* );
	void					setLDTSelector( SELECTOR );	
	void					setLink( SELECTOR );
	void					setPageDirectoryTable( CPageDirectoryEntry* );
	void					setRing0StackPointer( SELECTOR, void* );
	void					setRing1StackPointer( SELECTOR, void* );
	void					setRing2StackPointer( SELECTOR, void* );
};

#endif // !defined(AFX_TASKSTATESEGMENT_H__AC7B7C42_B4A2_11D2_B636_000000000000__INCLUDED_)
