#ifndef CPU32
#define CPU32

#include "CPUTypes.h"

// External assembler function declarations.
extern "C" DWORD CPUID();
extern "C" DWORD GetCR0();
extern "C" DWORD GetCR1();
extern "C" DWORD GetCR2();
extern "C" DWORD GetCR3();
extern "C" ADDRESS GetCodeBase();
extern "C" ADDRESS GetDataBase();
extern "C" WORD GetDS();
extern "C" DWORD GetEAX();
extern "C" DWORD GetEBP();
extern "C" DWORD GetEBX();
extern "C" DWORD GetECX();
extern "C" DWORD GetEDI();
extern "C" DWORD GetEDX();
extern "C" WORD GetES();
extern "C" DWORD GetESI();
extern "C" DWORD GetESP();
extern "C" WORD GetFS();
extern "C" WORD GetGS();
extern "C" DWORD GetEFlags();
extern "C" void Jump32( SFarPointer16 );
extern "C" void SetCR0( DWORD );
extern "C" void SetEAX( DWORD );
extern "C" void SetEBX( DWORD );
extern "C" void SetECX( DWORD );
extern "C" void SetEDX( DWORD );
extern "C" void SetEFlags( DWORD );
extern "C" void SetGDTR( STableDescriptor );
extern "C" void SetMSW( WORD );

#endif