// TCursor.cpp: implementation of the TCursor class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "TCursor.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


template<typename ItemType>
const bool TCursor<ItemType>::m_bDebug = false;


// Purpose	: Public constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/06/98
//
// Modification History
// Date		Initials	Reason
//
template<typename ItemType>
TCursor<ItemType>::TCursor( TCollection<ItemType>& Collection )
{
	// Validate collection.
	if( &Collection==NULL )
	{
		cout << "TCursor created on NULL - Halt." << endl;
		while( 1 );
	}

	// Store first and last objects.
	m_pFirst = Collection.first();
	m_pLast	 = Collection.last();

	// Set current element to return as first element.
	m_pCurrent = m_pFirst;
	if(m_bDebug) cout << "TCursor<ItemType>::TCursor - First at 0x" << (DWORD)m_pFirst << endl;
	if(m_bDebug) cout << "TCursor<ItemType>::TCursor - Last at 0x" << (DWORD)m_pLast << endl;
	if(m_bDebug) cout << "TCursor<ItemType>::TCursor - Current at 0x" << (DWORD)m_pCurrent << endl;
}


// Purpose	: Public destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/06/98
//
// Modification History
// Date		Initials	Reason
//
template<typename ItemType>
TCursor<ItemType>::~TCursor()
{
}


// Purpose	: Return the first elempent in the collection and initialises
//			  the next pointer.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
// 15/12/98	DJH			NULL returned if no collection nodes exist.
// 19/08/99	DJH			Current replaced with next because behaviour was not correct.
//
template<typename ItemType>
const ItemType TCursor<ItemType>::first()
{
	ItemType Item;

	// Check existance of collection items.
	if(m_bDebug) cout << "TCursor<ItemType>::first - First at 0x" << (DWORD)m_pFirst << endl;	
	if( m_pFirst==NULL )
	{
		// No items in the collection.
		m_pCurrent	= NULL;
		Item		= NULL;
	}
	else
	{
		// Intialise current object(current in collection).
		m_pCurrent = m_pFirst;
		if(m_bDebug) cout << "TCursor<ItemType>::first - Current at 0x" << (DWORD)m_pCurrent << endl;

		// Return current data item.
		Item = m_pCurrent->getItem();		
	}

	// Return first Item.
	return Item;
}


// Purpose	: Return true if there are more elements in the collection being
//			  iterated over.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
template<typename ItemType>
const bool TCursor<ItemType>::more() const
{
	// Return logical comparison on current element with NULL.
	if(m_bDebug) cout << "TCursor<ItemType>::more - Current at 0x" << (DWORD)m_pCurrent << endl;
	return m_pCurrent!=NULL;
}


// Purpose	: Return the next data item and updates the next item pointer.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
template<typename ItemType>
const ItemType TCursor<ItemType>::next()
{
	ItemType Next;

	// Assume no next object.
	Next = NULL;

	// Validate next item node.
	if(m_bDebug) cout << "TCursor<ItemType>::next - Current at 0x" << (DWORD)m_pCurrent << endl;
	if( m_pCurrent!=NULL )
	{
		// Update current item pointer.		
		m_pCurrent = m_pCurrent->getNext();
		if(m_bDebug) cout << "TCursor<ItemType>::next - Next at 0x" << (DWORD)m_pCurrent << endl;

		// Get next data item.
		if( m_pCurrent!=NULL )
			Next = m_pCurrent->getItem();
	}

	// Return next data item.
	return Next;
}