#ifndef CENTRAL_PROCESSING_UNIT
#define CENTRAL_PROCESSING_UNIT

#include "bool.h"
#include "cputypes.h"
#include "gdt.h"

#include <malloc.h>

enum cpu_architecture { CA_NULL, CA_IAPX };
enum cpu_model { CM_NULL, CM_I8086, CM_I80286, CM_I80386, CM_I80486, CM_PENTIUM, CM_PENTIUM_PRO };

#include "cpu32.h"

// Extended flags register masks.
const DWORD F_INTERRUPTS_ENABLED 	= 0x00000200L;
const DWORD F_NESTED_TASK			= 0x00004000L;
const DWORD F_ALIGNMENT_CHECK		= 0x00040000L;
const DWORD F_CPUID					= 0x00200000L;

// Control register 0 bit masks.
const DWORD CR0_PROTECTION_ENABLED	= 0x00000001L;
const DWORD CR0_EXTENSION_TYPE		= 0x00000010L;


class CCPU
{
	// 80386 general purpose registers.
	unsigned long m_iEAX;
	unsigned long m_iEBX;
	unsigned long m_iECX;
	unsigned long m_iEDX;
	unsigned long edi;
	unsigned long esi;

	// 80386 special registers.
	unsigned long ebp;
	unsigned long esp;

	// 80386 segment registers.
	unsigned short ds;
	unsigned short es;
	unsigned short fs;
	unsigned short gs;

	// 80386 control registers.
	unsigned long eflags;
	unsigned long cr0;
	unsigned long cr2;
	unsigned long cr3;

	// 80386 control structures.
	CGDT m_GDT;

	// CPU information.
	cpu_architecture m_eArchitecture;
	cpu_model m_eModel;

	void Probe();

public:
	CCPU();											// Default constructor.
	~CCPU();										// CPU destructor.
	cpu_architecture Architecture();				// Return the general CPU architecture.
	DWORD CR0();									// Return control register 0.
	void CR0( DWORD );								// Sets control register 0.
	void DataSegment( SELECTOR );					// Sets the data segment.
	DWORD EFlags();									// Returns the extended flags register.
	void EFlags( DWORD );							// Sets the extended flags register.
	WORD Flags();									// Returns the flags register.
	void Flags( WORD );								// Sets the flags register.
	void instructionPointer( SELECTOR, OFFSET16 );	// Sets the instruction pointer.
	bool InterruptsEnabled();						// Enables/disables interrupt processing.
	void InterruptsEnabled( bool );					// Enables/disables interrupt processing.
	bool IsCompatible();							// Returns compatibility.
	CGDT& GDT();									// Return the GDT reference.
	void GDTR( ADDRESS, WORD );						// Sets the GDTR.
	cpu_model Model(); 								// Returns the model of CPU.
	WORD MSW();										// Returns the machine status word.
	void MSW( WORD );					 			// Sets the machine status word.
	DWORD PhysicalAddress( void far* );				// Converts a far pointer to a physical address.
	bool ProtectionEnabled();						// Returns the enable state of the protection mechanism.
	void ProtectionEnabled( bool ); 				// Returns the enable state of the protection mechanism.
	void Register( BYTE, DWORD );					// Sets a register.
	Restore();										// Restores previously saved state information.
	void Save();	  								// Saves CPU state information.
	unsigned char WordSize();						// Returns the CPU word size.
};

#endif
