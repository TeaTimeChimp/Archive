// System.h: interface for the CSystem class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_SYSTEM_H__9193F3E7_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
#define AFX_SYSTEM_H__9193F3E7_8E77_11D1_B3B5_00A024D448B7__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPU.h"
#include "DMAManager.h"
#include "FloppyDiskController.h"
#include "PhysicalMemoryManager.h"
#include "PIC.h"
#include "Timer.h"

class CSystem  
{
	// Static system objects(dynamic memory allocation cannot be used yet).
	CCPU					m_CPU;

	// Dynamic system objects.
	CDMAManager*			m_pDMAManager;
	CFloppyDiskController*	m_pFloppyDiskController;
	CIOManager*				m_pIOManager;
	CPIC*					m_pPIC;
	CTimer*					m_pTimer;
	CPhysicalMemoryManager*	m_pPhysicalMemoryManager;

public:
	CSystem();
	virtual ~CSystem();	
	
	// Public member functions.
	const long					create();	
	CCPU&						getCPU();
	CDMAManager&				getDMAManager();
	CFloppyDiskController&		getFloppyDiskController();
	const CIDT*					getIDT() const;
	CIOManager&					getIOManager();
	CPIC&						getPIC();
	CPhysicalMemoryManager&		getPhysicalMemoryManager();
	CTimer&						getTimer();
};

#endif // !defined(AFX_SYSTEM_H__9193F3E7_8E77_11D1_B3B5_00A024D448B7__INCLUDED_)
