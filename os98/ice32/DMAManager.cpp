// DMAManager.cpp: implementation of the CDMAManager class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "DMAManager.h"

#include "TCursor.h"
#include "TCursor.cpp"
#include "TList.cpp"

const char CDMAManager::m_pClassName[]			= "DMAManager::";
const bool CDMAManager::m_bDebug				= false;
const WORD CDMAManager::m_iPortBaseController1	= 0x00;
const WORD CDMAManager::m_iPortBaseController2	= 0xc0;

WORD waste_of_space[2] = {0,1};

// Page register ports in channel order for each controller.
WORD pPagePortMap[8] = { 0x0087L, 0x0083L, 0x0081L, 0x0082L,	// Controller 1
						 0x008fL, 0x008bL, 0x0089L, 0x008aL };	// Controller 2

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Purpose	: Constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
CDMAManager::CDMAManager()
{
	// Initialise state.
	m_pControllers			= NULL;
	m_pAllocatedChannels	= NULL;
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
CDMAManager::~CDMAManager()
{
}


// Purpose	: Creates the internal state of the manager.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
bool CDMAManager::create()
{
	bool bSuccess;
	CDMAController* pController;

	// Assume failure.
	bSuccess = false;

	// Allocate controller collection.
	m_pControllers = new TList<CDMAController*>();
	if( m_pControllers!=NULL )
	{
		// Create DMA controller objects.
		pController = new CDMAController();
		pController->create( 0, m_iPortBaseController1, pPagePortMap, 0, 4 );
		if( pController!=NULL )
			m_pControllers->insert( pController );
		pController = new CDMAController();
		pController->create( 1, m_iPortBaseController2, pPagePortMap, 4, 4 );
		if( pController!=NULL )
			m_pControllers->insert( pController );

		// Allocate collection of allocated channels.
		m_pAllocatedChannels = new TList<CDMAChannel*>();
		if( m_pAllocatedChannels!=NULL )
			bSuccess = true;
	}

	// Return success of creation.
	return bSuccess;
}


// Purpose	: Returns a pointer to the requested DMA channel resource.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/02/99
//
// Modification History
// Date		Initials	Reason
//
CDMAChannel* CDMAManager::requestChannel( BYTE iChannel )
{
	CDMAChannel* pChannel;
	CDMAController* pController;
	const char pFunctionName[] = "requestChannel() - ";

	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Channel " << iChannel << " requested" << endl;

	// Check resource allocation.
	TCursor<CDMAChannel*> Channels( *m_pAllocatedChannels );
	for( pChannel=Channels.first() ; Channels.more() ; pChannel=Channels.next() )
		if( pChannel->getNumber()==iChannel )
			break;

	// Only allocate channel if free.
	if( pChannel==NULL )
	{
		if( m_bDebug ) cout << m_pClassName << pFunctionName << "Not already allocated." << endl;
		TCursor<CDMAController*> Controllers( *m_pControllers );
		for( pController=Controllers.first() ; Controllers.more() ; pController=Controllers.next() )
		{
			pChannel = (CDMAChannel*)(pController->requestChannel( iChannel ));
			if( pChannel!=NULL )
			{
				m_pAllocatedChannels->insert( pChannel );
				break;
			}
		}
	}
	else
	{
		// Channel already allocated.
		pChannel = NULL;
	}

	// Return pointer to DMA channel object.
	return pChannel;
}


