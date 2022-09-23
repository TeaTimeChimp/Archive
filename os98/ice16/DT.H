#ifndef DESCRIPTOR_TABLE
#define DESCRIPTOR_TABLE

#include "CPUTypes.h"

// Memeory segment types.
const unsigned char ST_READ_WRITE				= 0x02;
const unsigned char	ST_READ_WRITE_EXPANDDOWN   	= 0x06;
const unsigned char	ST_EXECUTE_READ				= 0x0a;

// System segment types.
const unsigned char ST_LDT	  					= 0x02;
const unsigned char	ST_AVAILABLE_386_TSS		= 0x09;
const unsigned char	ST_BUSY_386_TSS 			= 0x0b;
const unsigned char	ST_386_CALL_GATE			= 0x0c;

// Priviledge level rings.
const unsigned char PL_0						= 0x00;
const unsigned char PL_1						= 0x01;
const unsigned char PL_2						= 0x02;
const unsigned char PL_3						= 0x03;


// Generic descriptor structure.
struct SDescriptor
{
	union
	{
		WORD limit_0_15;			// Memory/system.
		WORD offset_0_15;			// Gate.
	};

	union
	{
		WORD base_0_15;				// Memory/system.
		WORD selector;				// Gate.
	};

	union
	{
		BYTE base_16_23;			// Memory/system.
		struct						// Gate.
		{
			BYTE dword_count:5;
			BYTE zero:3;
		};
	};

	// Memory/System/Gate.
	BYTE type:4;
	BYTE dtype:1;
	BYTE dpl:2;
	BYTE present:1;

	union
	{
		struct						// Memory/system.
		{
			BYTE limit_16_19:4;
			BYTE available:1;
			BYTE zero:1;
			BYTE d:1;
			BYTE granularity:1;
			BYTE base_24_31;
		} attributes;
		WORD offset_16_31;			// Gate.
	};
};


// Generic descriptor table.
class CDescriptorTable
{
	class CCPU* m_pCPU;						// Processor responsible.
	SDescriptor* m_pTable;					// Pointer to descriptor table.
	unsigned short m_iDescriptorCount;		// Descriptor in table.

	SDescriptor* AllocateTable( unsigned short );
	void SetDescriptor( SDescriptor*, SEGTYPE, RING, ADDRESS, DWORD );
	void SetMemoryDescriptor( SDescriptor*, ADDRESS, DWORD );

public:
	CDescriptorTable();
	~CDescriptorTable();
	SELECTOR AddSegment( SEGTYPE, RING, ADDRESS, DWORD );
	ADDRESS Base();
	class CCPU* CPU();
	void CPU( class CCPU* );
	WORD Limit();
};

#endif