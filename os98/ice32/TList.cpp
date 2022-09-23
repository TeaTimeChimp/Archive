// TList.cpp: implementation of the TList class.
//
//////////////////////////////////////////////////////////////////////

// Include headers.
#include "TList.h"

// Include template source.
#include "TCollection.cpp"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem> 
TList<TDataItem>::TList()
{
	// Initialise list.
	m_pHead		= NULL;
	m_pTail		= NULL;
	m_iCount	= 0;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 12/12/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem> 
TList<TDataItem>::~TList()
{
	// Empty list.
	while( m_pHead!=NULL )
		remove( m_pHead->getItem() );
}


// Purpose	: Returns the number of items in the list.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/07/99
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem>
const unsigned long TList<TDataItem>::count() const
{
	// Return count of items in the list.
	return m_iCount;
}


// Purpose	: Returns the first node in the collection.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem>
const TCollection<TDataItem>::CNode* TList<TDataItem>::first() const
{
	// Return first node.
	return m_pHead;
}


// Purpose	: Inserts an item into the list.
//
// Author	: Daniel J Hawkins
//
// Date		: 12/12/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem>
void TList<TDataItem>::insert( TDataItem Item )
{
	CNode* pLink;

	// Create new link.
	pLink = new CNode();
	if( pLink!=NULL )
	{
		// Set item in link.
		pLink->setItem( Item );

		// Add link to list.
		if( m_pHead!=NULL )
			m_pHead->setPrevious( pLink );
		pLink->setNext( m_pHead );
		m_pHead = pLink;
		if( m_pTail==NULL )
			m_pTail = pLink;

		// Increment list count.
		m_iCount++;
	}
}


// Purpose	: Returns the last node in the collection.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem>
const TCollection<TDataItem>::CNode* TList<TDataItem>::last() const
{
	// Return first node.
	return m_pTail;
}


// Purpose	: Removes the specified data item from the list.
//
// Author	: Daniel J Hawkins
//
// Date		: 25/09/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TDataItem>
void TList<TDataItem>::remove( TDataItem Item )
{
	CNode* pNode;
	CNode* pNext;

	// Find item in linked list.
	pNode = m_pHead;
	while( pNode!=NULL && pNode->getItem()!=Item )
		pNode = pNode->getNext();

	// Remove item node.
	if( pNode!=NULL )
	{
		// Update links to miss node being removed.
		pNext = pNode->getNext();
		pNode->getPrevious()->setNext( pNext );
		pNext->setPrevious( pNode->getPrevious() );
		if( m_pHead==pNode )
			m_pHead = pNext;
		if( m_pTail==pNode )
			m_pTail = pNode->getPrevious();

		// Release unwanted node.
		delete pNode;

		// Decrement list count.
		m_iCount--;
	}
}