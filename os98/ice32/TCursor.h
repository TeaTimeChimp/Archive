// TCursor.h: interface for the TCursor class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TCURSOR_H__5BB83752_039E_11D2_B5BC_000000000000__INCLUDED_)
#define AFX_TCURSOR_H__5BB83752_039E_11D2_B5BC_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "TCollection.h"

// Template for the 'cursor' collection iterator.
template<typename ItemType> 
class TCursor
{
	static const bool					m_bDebug;

	// Private data members.
	const TCollection<ItemType>::CNode*	m_pFirst;
	const TCollection<ItemType>::CNode*	m_pLast;
	const TCollection<ItemType>::CNode*	m_pCurrent;

public:
	// Constructor and destructor.
					TCursor( TCollection<ItemType>& );
					~TCursor();

	// Public member functions.
	const ItemType	first();
	const bool		more() const;
	const ItemType	next();
};

#endif // !defined(AFX_TCURSOR_H__5BB83752_039E_11D2_B5BC_000000000000__INCLUDED_)
