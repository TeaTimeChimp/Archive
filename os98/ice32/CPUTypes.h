#ifndef CPUTYPES
#define CPUTYPES

// Standard type definitions.
typedef unsigned char	BYTE;
typedef unsigned short	WORD;
typedef unsigned long	DWORD;
typedef __int64			QWORD;

// Architecture dependant type definitions.
typedef DWORD			ADDRESS;
typedef DWORD			OFFSET;
typedef DWORD			PAGEFRAME;
typedef WORD			SELECTOR;


enum EDescriptorType 
{ 
	// Memory types.
	DT_READ_ONLY, 
	DT_READONLYACCESSED, 
	DT_READ_WRITE,
	DT_READWRITEACCESSED,
	DT_READONLYEXPANDDOWN,
	DT_READONLYEXPANDDOWNACCESSED,
	DT_READWRITEEXPANDDOWN,
	DT_READWRITEEXPANDDOWNACCESSED,
	DT_EXECUTEONLY,
	DT_EXECUTE_ONLY_ACCESSED			= 0x009,
	DT_EXECUTE_READ						= 0x00a,
	DT_EXECUTEREADACCESSED,
	DT_EXECUTEONLYCONFORMING,
	DT_EXECUTEONLYCONFORMINGACCESSED,
	DT_EXECUTEREADCONFORMING,
	DT_EXECUTEREADCONFORMINGACCEDDED,

	// System types.
	DT_UNDEFINED_0						= 0x100,
	DT_AVAILABLE_286_TSS,
	DT_LDT								= 0x102,
	DT_BUSY_286_TSS,
	DT_286_CALL_GATE,
	DT_TASK_GATE,
	DT_286_INTERRUPT_GATE,
	DT_286_TRAP_GATE,
	DT_UNDEFINED_8,
	DT_AVAILABLE_386_TSS				= 0x109,
	DT_UNDEFINED_A,
	DT_BUSY_386_TSS						= 0x10b,
	DT_UNDEFINED_D,
	DT_386_INTERRUPT_GATE,
	DT_386_TRAP_GATE
};


enum EDType
{
	DT_SYSTEM,
	DT_MEMORY
};


enum EPriviledgeLevel
{ 
	DPL0 = 0, 
	DPL1 = 1,
	DPL2 = 2,
	DPL3 = 3
};


// Pseudo descriptor for loading descriptor table registers.
struct SPseudoDescriptor
{
	WORD		iLimit;
	const void*	pBase;
};


#endif