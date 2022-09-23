// Process.h: interface for the CProcess class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_PROCESS_H__1CD3FA37_AF1F_11D2_B631_000000000000__INCLUDED_)
#define AFX_PROCESS_H__1CD3FA37_AF1F_11D2_B631_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "LDT.h"
#include "PhysicalMemoryManager.h"
#include "ThreadManager.h"

class CProcess
{
	// Private data members.
	static const char		m_pClassName[];
	CThreadManager&			m_ThreadManager;
	CPageDirectoryEntry*	m_pPageDirectoryTable;
	TList<CThread*>*		m_pThreads;
	SELECTOR				m_iCodeSelector;
	SELECTOR				m_iDataSelector;
	SELECTOR				m_iStackSelector;
	CLDT*					m_pLDT;

	// Private member function.
	void					setCodeSelector( SELECTOR );
	void					setDataSelector( SELECTOR );
	void					setPageDirectoryTable( CPageDirectoryEntry* );

public:
	// Constructor and destructor.
			CProcess( CThreadManager& );
			~CProcess();

	// Public member functions.
	void*					allocateMemory( const void*, unsigned long, EAllocationType, EMemoryType );
	bool					create();
	CThread*				createThread( void(*)() );
	SELECTOR				getCodeSelector();
	SELECTOR				getDataSelector();
	CLDT*					getLDT();
	CDescriptor*			getLDTDescriptor();
	CPageDirectoryTable*	getPageDirectoryTable() const;
	void*					getPhysicalAddress( const void* );
	SELECTOR				getStackSelector();
};

#endif // !defined(AFX_PROCESS_H__1CD3FA37_AF1F_11D2_B631_000000000000__INCLUDED_)
