#include "gdt.h"
#include "main.h"


// Purpose	: Adds a segment to the global descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CGDT::AddSegment( SEGTYPE iType, RING iRing, ADDRESS iBase, DWORD iLimit )
{
	WORD iSelector;
	CCPU* pCPU;

	// Assume failure.
	iSelector = 0;

	// Get and validate CPU owner of table.
	pCPU = CPU();
	if( pCPU!=NULL )
	{
		// Call inherited add segment method.
		iSelector = CDescriptorTable::AddSegment( iType, iRing, iBase, iLimit );

		// Update global descriptor table register.
		pCPU->GDTR( Base(), Limit() );
	}

	// Return new selector.
	return iSelector;
}
