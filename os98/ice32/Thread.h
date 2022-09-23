// Thread.h: interface for the CThread class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_THREAD_H__6760CF83_39EB_11D3_A56C_006008569AA6__INCLUDED_)
#define AFX_THREAD_H__6760CF83_39EB_11D3_A56C_006008569AA6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "Descriptor.h"
#include "TaskStateSegment.h"

enum EThreadStatus { TS_ERROR, TS_RUN, TS_WAIT, TS_STOP };

class CThread  
{
	// Static members.
	static const char	m_pClassName[];

	// Intel defined task state segment.
	CTaskStateSegment	m_TSS;
	EThreadStatus		m_eState;
	CDescriptor*		m_pTSSDescriptor;
	SELECTOR			m_iTSSSelector;

	// Static constants.
	static const void*  m_pRing0StackTop;	
	static const DWORD	m_iRing0StackSize;
	static const void*	m_pRing1StackTop;
	static const DWORD	m_iRing1StackSize;
	static const void*	m_pRing2StackTop;
	static const DWORD	m_iRing2StackSize;
	static const void*	m_pRing3StackTop;
	static const DWORD	m_iRing3StackSize;

	// Private member functions.
	void				setTSSSelector( SELECTOR );

public:
	// Public constructor and destructor.
						CThread();
						~CThread();

	// Public member functions.
	bool				create( class CProcess*, void(*)() );
	CDescriptor*		getTSSDescriptor();
	WORD				getTSSSelector();
	void				setBusy( bool );
	void				setReturnThread( CThread* );
	void				setState( EThreadStatus );
};

#endif // !defined(AFX_THREAD_H__6760CF83_39EB_11D3_A56C_006008569AA6__INCLUDED_)
