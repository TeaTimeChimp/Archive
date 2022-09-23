#include "..\libc\malloc.h"

void operator delete( void* pObject )
{
	// Delete object space.
	free( pObject );
}