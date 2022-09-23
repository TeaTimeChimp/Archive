#if _MSC_VER > 1000
#pragma once
#endif  /* _MSC_VER > 1000 */

#ifndef _HEAP
#define _HEAP

// Definition of heap storage class <singleton>.
class CHeap
{
	// Heap allocation block node structure,
	struct SAllocationBlock
	{
		unsigned long		m_iSignature;
		bool				m_bInUse;
		SAllocationBlock*	m_pNext;
	};

	// Private data members.
	unsigned long m_iAllocations;

	// Private member functions.
	unsigned int granulate( unsigned int );

public:
	// Public constructor and destructor.
			CHeap( void* );
			~CHeap();

	// Public member functions.
	void*	allocate( unsigned long );
	void*	free( void* );

	// Class constant definitions.
	unsigned long		m_iSignature;
	SAllocationBlock*	m_pBaseBlock;
	unsigned long		m_iLimit;
};

#endif
