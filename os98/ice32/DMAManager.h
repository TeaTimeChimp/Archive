// DMAManager.h: interface for the CDMAManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DMAMANAGER_H__4EF37805_B5EB_11D2_A534_006008569AA6__INCLUDED_)
#define AFX_DMAMANAGER_H__4EF37805_B5EB_11D2_A534_006008569AA6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "DMAController.h"

#include "TList.h"


class CDMAManager  
{
	// Private constants.
	static const char		m_pClassName[];
	static const bool		m_bDebug;
	static const WORD		m_iPortBaseController1;
	static const WORD		m_iPortBaseController2;

	// Private data members.
	TList<CDMAController*>* m_pControllers;
	TList<CDMAChannel*>*	m_pAllocatedChannels;

public:
	// Public constructor and destructor.
							CDMAManager();
	virtual					~CDMAManager();

	// Public member functions.
	bool					create();
	CDMAChannel*			requestChannel( BYTE );
};

#endif // !defined(AFX_DMAMANAGER_H__4EF37805_B5EB_11D2_A534_006008569AA6__INCLUDED_)
