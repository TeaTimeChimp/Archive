/***
*new.cxx - defines C++ new routine
*
*       Copyright (c) 1990-1997, Microsoft Corporation.  All rights reserved.
*
*Purpose:
*       Defines C++ new routine.
*
*******************************************************************************/
#include "..\libc\malloc.h"

void* operator new( unsigned int cb )
{
        return malloc( cb );
}

