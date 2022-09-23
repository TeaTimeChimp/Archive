// IOManager.cpp: implementation of the CIOManager class.
//
//////////////////////////////////////////////////////////////////////

// Headers.
#include ".\libc\null.h"
#include ".\libcpp\ostream.h"

#include "Application.h"
#include "Errors.h"
#include "IOManager.h"

// Templates.
#include "TCursor.h"
#include "TCursor.cpp"
#include "TList.cpp"


// Static member initialisers.
const bool CIOManager::m_bDebug = false;


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 25/09/98
//
// Modification History
// Date		Initials	Reason
//
CIOManager::CIOManager()
{
	// Invalidate port allocation list.
	m_pAllocatedPorts = NULL;
}

CIOManager::~CIOManager()
{

}


// Purpose	: Creates the IO managers internal structure.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
const unsigned long CIOManager::create()
{
	unsigned long lpError;

	// Allocate list for recording port allocations.
	m_pAllocatedPorts = new TList<const CIOPort*>;
	if( m_pAllocatedPorts==NULL )
	{
		// Signal memory allocation error.
		lpError = EC_IOMANAGER_MEM_ALLOCATED_PORTS;
	}
	else
	{
		// No error occured.
		lpError = EC_NONE;
	}

	// Return success of creation.
	return lpError;
}


// Purpose	: Releases a port allocation.
//
// Author	: Daniel J Hawkins
//
// Date		: 25/09/98
//
// Modification History
// Date		Initials	Reason
//
const CIOPort* CIOManager::releasePort( const CIOPort* pPort )
{
	// Remove port from collection of those allocated.
	m_pAllocatedPorts->remove( pPort );

	// Free port resource.
	delete pPort;

	// Return NULL.
	return NULL;
}


// Purpose	: Requests the use of a specific IO port. If the port is not in
//			  use a CIOPort is return otherwise NULL is returned.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/09/98
//
// Modification History
// Date		Initials	Reason
//
const CIOPort* CIOManager::requestPort( WORD iPortAddress )
{
	const CIOPort* pPort;

	// Iterate over allocated port checking for requested port.
	if(m_bDebug) cout << "IOManager::requestPort(" << iPortAddress << ")." << endl;
	TCursor<const CIOPort*> Cursor( *m_pAllocatedPorts );
	for( pPort=Cursor.first() ; Cursor.more() ; pPort=Cursor.next() )
		if( pPort->getAddress()==iPortAddress )
			break;

	// If port is NULL the port is not allocated.
	if( pPort==NULL )
	{
		// Allocate the port for the caller.
		pPort = new CIOPort( iPortAddress );
		m_pAllocatedPorts->insert( pPort );
	}
	else
	{
		// Return NULL indicating the port is in use.
		Application.halt( "CIOManager::requestPort() - Port inuse." );
		pPort = NULL;
	}

	//for( DWORD iDelay=0 ; iDelay<20000 ; iDelay++ );

	// Return port object.
	return pPort;
}