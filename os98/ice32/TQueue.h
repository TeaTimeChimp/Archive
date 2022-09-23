// TQueue.h: interface for the TQueue class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TQUEUE_H__C244F242_BAB8_11D1_B595_000000000000__INCLUDED_)
#define AFX_TQUEUE_H__C244F242_BAB8_11D1_B595_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "libc\malloc.h"

template<typename DataType> 
class TQueue  
{
	static const char m_pTemplateName[];
	static const bool m_bDebug;

	class CLink
	{
		DataType		m_Item;
		const CLink*	m_pNewer;
		const CLink*	m_pOlder;

	public:
		// Public constructor.
		CLink( DataType Item ) { m_Item = Item; m_pNewer = NULL; m_pOlder = NULL; };
		
		// Public member functions.
		DataType		getItem() { return m_Item; };
		const CLink*	getNewer() const { return m_pNewer; };
		const CLink*	getOlder() const { return m_pOlder; };
		void			setNewer( const CLink* pNewer ) { m_pNewer = pNewer; };
		void			setOlder( const CLink* pOlder ) { m_pOlder = pOlder; };
	};

	// List pointer.
	const CLink* m_pNewest;
	const CLink* m_pOldest;

public:
	// Public constructors and destructor.
	TQueue();
	virtual ~TQueue();

	// Public methods.
	void		flush();
	bool		isEmpty();
	DataType	pop();	
	void		push( DataType );
};

#endif // !defined(AFX_TQUEUE_H__C244F242_BAB8_11D1_B595_000000000000__INCLUDED_)
