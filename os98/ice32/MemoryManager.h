// MemoryManager.h: interface for the CMemoryManager class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_MEMORYMANAGER_H__29B65EF2_AFD6_11D2_B632_000000000000__INCLUDED_)
#define AFX_MEMORYMANAGER_H__29B65EF2_AFD6_11D2_B632_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Include language headers.
#include "libc\malloc.h"


class CMemoryManager  
{
public:
	// Constructor and destructor.
				CMemoryManager();
	virtual		~CMemoryManager();

	// Public member functions.
	void*		allocateMemory( void*, unsigned long, EAllocationType, EMemoryType );
	void*		getPhysicalAddress( void* );

};

#endif // !defined(AFX_MEMORYMANAGER_H__29B65EF2_AFD6_11D2_B632_000000000000__INCLUDED_)
