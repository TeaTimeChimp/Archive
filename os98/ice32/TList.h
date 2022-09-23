// TList.h: interface for the TList class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TLIST_H__F3838832_F021_11D1_B5B2_000000000000__INCLUDED_)
#define AFX_TLIST_H__F3838832_F021_11D1_B5B2_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "TCollection.h"

template<typename ItemType> class TList:
public TCollection<ItemType>
{
	// Private data members.
	unsigned long	m_iCount;
	CNode*			m_pHead;
	CNode*			m_pTail;

public:
					TList();
	virtual			~TList();

	// Public member functions.
	const unsigned long count() const;
	const CNode*		first() const;
	void				insert( ItemType );
	const CNode*		last() const;
	void				remove( ItemType );
	const ItemType		retrieve( const unsigned long );
};

#endif // !defined(AFX_TLIST_H__F3838832_F021_11D1_B5B2_000000000000__INCLUDED_)
