// TCollection.h: interface for the TCollection class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TCOLLECTION_H__5BB83753_039E_11D2_B5BC_000000000000__INCLUDED_)
#define AFX_TCOLLECTION_H__5BB83753_039E_11D2_B5BC_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "libc\null.h"

// Template for a generic collection.
template<typename ItemType>
class TCollection
{
public:
	// Definition of the storage/linkage node class.
	class CNode
	{
		ItemType	m_Item;
		CNode*		m_pNext;
		CNode*		m_pPrevious;
	
	public:
		// Public constructor and destructor.
					CNode() { m_pPrevious=NULL; m_pNext=NULL; };
					~CNode() {};

		// Public member functions.
		ItemType	getItem() const { return m_Item; };
		CNode*		getNext() const { return m_pNext; };		
		CNode*		getPrevious() const { return m_pPrevious; };
		void		setItem( ItemType Item ) { m_Item=Item; };
		void		setNext( CNode* pNext ) { m_pNext=pNext; };
		void		setPrevious( CNode* pPrevious ) { m_pPrevious=pPrevious; };
	};

	// Public constructor and destructor.
							TCollection();
	virtual					~TCollection();

	// Public member functions.
	virtual const unsigned long count() const = 0;
	virtual const CNode*		first() const = 0;
	virtual const CNode*		last() const = 0;
};

#endif // !defined(AFX_TCOLLECTION_H__5BB83753_039E_11D2_B5BC_000000000000__INCLUDED_)
