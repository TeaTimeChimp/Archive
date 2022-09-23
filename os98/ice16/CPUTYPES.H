#ifndef CPUTYPES
#define CPUTYPES

// CPU architecture type definitions.
typedef unsigned char BYTE;
typedef unsigned char RING;
typedef unsigned char SEGTYPE;
typedef unsigned short SELECTOR;
typedef unsigned short WORD;
typedef unsigned long ADDRESS;
typedef unsigned long DWORD;
typedef unsigned short OFFSET16;
typedef unsigned long OFFSET32;


// Far pointer structure.
struct SFarPointer16
{
	WORD offset;
	WORD selector;
};


// Far pointer structure.
struct SFarPointer32
{
	DWORD offset;
	WORD selector;
};


// Table descriptor.
struct STableDescriptor
{
	WORD limit;
	DWORD base;
};


#endif