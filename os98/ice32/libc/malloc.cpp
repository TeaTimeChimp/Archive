#include "heap.h"
#include "malloc.h"

// Declaration of heap storage singleton.
CHeap Heap( (void*)0x00100000 );


void* free( void* pDataSpace )
{
	// Call through to heap storage free method.
	return Heap.free( pDataSpace );
}



// Purpose	: Allocates a block of user space on the program heap.
//
// Author	: Daniel J Hawkins
//
// Date		: 23/01/98
//
// Modification History
// Date		Initials	Reason
//
void* malloc( unsigned int iBlockSize )
{
	// Call through to heap storage allocate method.
	return Heap.allocate( iBlockSize );
}