// TQueue.cpp: implementation of the TQueue class.
//
//////////////////////////////////////////////////////////////////////

#include "TQueue.h"

template<typename TData> const char TQueue<TData>::m_pTemplateName[]	= "Queue<>::";
template<typename TData> const bool TQueue<TData>::m_bDebug				= false;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

template<typename TData> 
TQueue<TData>::TQueue()
{
	// Initialise queue state.
	m_pNewest = NULL;
	m_pOldest = NULL;
}

template<typename TData> 
TQueue<TData>::~TQueue()
{

}


// Purpose	: Flushes all data from the queue.
//
// Author	: Daniel J Hawkins
//
// Date		: 09/07/98
//
// Modification History
// Date		Initials	Reason
//
template<typename DataType>
void TQueue<DataType>::flush()
{
	// Pop until empty.
	while( isEmpty()==false )
		pop();
}


// Purpose	: Returns true if the queue is empty.
//
// Author	: Daniel J Hawkins
//
// Date		: 13/03/98
//
// Modification History
// Date		Initials	Reason
//
template<typename TData>
bool TQueue<TData>::isEmpty()
{
	// Return empty status.
	if( m_bDebug ) cout << m_pTemplateName << "isEmpty()=" << (BYTE)(m_pOldest==NULL) << endl;
	return m_pOldest==NULL;
}


// Purpose	: Removes and returns the oldest item from the queue.
//
// Author	: Daniel J Hawkins
//
// Date		: 09/07/98
//
// Modification History
// Date		Initials	Reason
//
template<typename DataType>
DataType TQueue<DataType>::pop()
{
	CLink* pOldest;

	pOldest = (CLink*)m_pOldest;
	m_pOldest = (CLink*)(m_pOldest->getNewer());
	((CLink*)m_pOldest)->setOlder( NULL );

	return pOldest->getItem();
}


// Purpose	: Adds a data item to the queue.
//
// Author	: Daniel J Hawkins
//
// Date		: 13/03/98
//
// Modification History
// Date		Initials	Reason
//
template<typename DataType> 
void TQueue<DataType>::push( DataType DataItem )
{
	CLink* pLink;

	if( m_bDebug ) cout << m_pTemplateName << "push(0x" << DataItem << ")" << endl;

	// Allocate a new link.
	pLink = new CLink( DataItem );

	// Initialise new link.
	pLink->setOlder( m_pNewest );
	((CLink*)m_pNewest)->setNewer( pLink );

	// Set new link as newest.
	m_pNewest = pLink;
	
	// Set oldest if this is the first addition.
	if( m_pOldest==NULL )
		m_pOldest = pLink;
}
