// IOManager.h: interface for the CIOManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IOMANAGER_H__F416D6C2_2A33_11D2_B5CD_000000000000__INCLUDED_)
#define AFX_IOMANAGER_H__F416D6C2_2A33_11D2_B5CD_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Include files.
#include "IOPort.h"

// Templates.
#include "TList.h"

// Definition of the IO manager class.
class CIOManager  
{
	// Private static data members.
	static const bool		m_bDebug;
	
	// Private data members.
	TList<const CIOPort*>*	m_pAllocatedPorts;

public:
	// Public constructor and destructor.
					CIOManager();
	virtual			~CIOManager();

	// Public member functions.
	const unsigned long	create();
	const CIOPort*		releasePort( const CIOPort* );
	const CIOPort*		requestPort( WORD );
};

#endif // !defined(AFX_IOMANAGER_H__F416D6C2_2A33_11D2_B5CD_000000000000__INCLUDED_)
