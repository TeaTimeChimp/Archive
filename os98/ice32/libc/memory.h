#ifndef _MEMORY
#define _MEMORY

// Pubic externally linked "C" functions.
extern "C" void* _cdecl memcmp( void*, void*, unsigned int );
extern "C" void* _cdecl memcpy( void*, void*, unsigned int );
extern "C" void* _cdecl memset( void*, int, unsigned int );

#endif