// WARNING : This project should only be compiled through the command line.

#include "cpu.h"

#include <dos.h>

// Purpose	: Hardware abstracted CPU default constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
CCPU::CCPU()
{
	// Set defaults.
	m_eArchitecture = CA_IAPX;
	m_GDT.CPU( this );

	// Probe processor for model.
	Probe();
}


// Purpose	: Hardware abstracted CPU destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
CCPU::~CCPU()
{
}


// Purpose	: Returns the architecture of the underlying processor.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
cpu_architecture CCPU::Architecture()
{
	// Return architecture member.
	return m_eArchitecture;
}


// Purpose	: Returns the 32-bit control register 0.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
DWORD CCPU::CR0()
{
	DWORD iCR0;

	// Get control register 0.
	iCR0 = GetCR0();

	return iCR0;
}


// Purpose	: Sets the 32-bit control register 0.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::CR0( DWORD iCR0 )
{
	// Set control register 0.
	SetCR0( iCR0 );
}


// Purpose	: Sets data segment.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::DataSegment( SELECTOR iSelector )
{
	asm	mov	ax, iSelector
	asm	mov	ds, ax
}


// Purpose	: Returns the 16-bit flags register.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
WORD CCPU::Flags()
{
	unsigned short iFlags;

	asm		pushf
	asm 	pop		ax
	asm		mov		iFlags, ax;

	return iFlags;
}


// Purpose	: Sets the 16-bit flags register.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::Flags( WORD iFlags )
{
	asm	mov	ax, iFlags
	asm	push	ax
	asm	popf
}


// Purpose	: Returns the 32-bit flags register.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
DWORD CCPU::EFlags()
{
	DWORD iEFlags;

	iEFlags = GetEFlags();

	return iEFlags;
}


// Purpose	: Sets the 32-bit flags register.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::EFlags( DWORD iEFlags )
{
	SetEFlags( iEFlags );
}


// Purpose	: Returns a reference to the global descriptor table object.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
CGDT& CCPU::GDT()
{
	// Return reference to the GDT object.
	return m_GDT;
}


// Purpose	: Sets the GDT register.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::GDTR( ADDRESS iBase, WORD iLimit )
{
	STableDescriptor TableDescriptor;

	TableDescriptor.base  = iBase;
	TableDescriptor.limit = iLimit;
	SetGDTR( TableDescriptor );
}


// Purpose	: Returns the CPU ID value.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
DWORD ID()
{
	DWORD iID;

	iID = CPUID();

	return iID;
}


// Purpose	: Sets the instruction pointer.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::instructionPointer( SELECTOR iSegment, OFFSET16 iOffset )
{
	SFarPointer16 FarPointer;

	// Load far pointer to new cs:eip.
	FarPointer.selector = iSegment;
	FarPointer.offset   = iOffset;

	// Load registers.
	SetEBX( m_iEBX );
	SetECX( m_iECX );
	SetEDX( m_iEDX );

	// Set instruction pointer.
	Jump32( FarPointer );
}


// Purpose	: Returns the enabled state of the interrupt mechanism.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CCPU::InterruptsEnabled()
{
	bool bEnabled;

	// Read control register 0.
	if( (Flags()&F_INTERRUPTS_ENABLED)==0 )
	{
		// Interrupt flag clear.
		bEnabled = false;
	}
	else
	{
		// Interrupt flag set.
		bEnabled = true;
	}

	return bEnabled;
}


// Purpose	: Sets the enabled state of the interrupt mechanism.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::InterruptsEnabled( bool bEnable )
{
	if( bEnable==true )
	{
		// Set interrupt flag bit.
		Flags( Flags()|F_INTERRUPTS_ENABLED );
	}
	else
	{
		// Clear interrupt flag bit.
		Flags( Flags()&(~F_INTERRUPTS_ENABLED) );
	}
}


// Purpose	: Returns true if the processor is compatible.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CCPU::IsCompatible()
{
	bool bCompatible;

	// Assume incompatible processor.
	bCompatible = false;

	// Check architecture and processor model.
	switch( Architecture() )
	{
	case CA_IAPX:
		{
			switch( Model() )
			{
			case CM_I8086:
			case CM_I80286:
				break;
			default:
				bCompatible = true;
			}
		}
	}

	// Return compatibility.
	return bCompatible;
}


// Purpose	: Returns the processor model
//
// Author	: Daniel J Hawkins
//
// Date		: 17/01/98
//
// Modification History
// Date		Initials	Reason
//
cpu_model CCPU::Model()
{
	// Return model member.
	return m_eModel;
}


// Purpose	: Returns the 16-bit machine status word.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
WORD CCPU::MSW()
{
	unsigned short iMSW;

	asm		smsw	ax
	asm		mov		iMSW, ax;

	return iMSW;
}


// Purpose	: Sets the 16-bit machine status word.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::MSW( WORD iMSW )
{
	SetMSW( iMSW );
}



DWORD CCPU::PhysicalAddress( void far* pPointer )
{
	DWORD iAddress;

	iAddress = FP_SEG( pPointer );
	iAddress <<= 4;
   	iAddress += FP_OFF( pPointer );

	return iAddress;
}


// Purpose	: Returns the enabled state of the protection mechanism.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
bool CCPU::ProtectionEnabled()
{
	bool bEnabled;

	// Read control register 0.
	if( (CR0()&CR0_PROTECTION_ENABLED)==0 )
	{
		// Real mode.
		bEnabled = false;
	}
	else
	{
		// Protected mode.
		bEnabled = true;
	}

	return bEnabled;
}


// Purpose	: Sets the enabled state of the protection mechanism.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::ProtectionEnabled( bool bEnabled )
{
	if( bEnabled==true )
	{
		// Enable the protection bit.
		CR0( CR0()|CR0_PROTECTION_ENABLED );
	}
	else
	{
		// Disable the protection bit.
		CR0( CR0()&(!CR0_PROTECTION_ENABLED) );
	}
}


// Purpose	: Probes the CPU model.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::Probe()
{
	DWORD iEFlags;
	WORD iFlags;
	DWORD iID;
	WORD iMSW;
	WORD iOldMSW;
	DWORD iOldEFlags;

	// Assume 8086.
	m_eModel = CM_I8086;

	// Test 286 compatible bit in flag register.
	iFlags = Flags() | (WORD)F_NESTED_TASK;
	Flags( iFlags );
	iFlags = Flags();
	if( (iFlags&F_NESTED_TASK)==F_NESTED_TASK )
	{
		// 80286 compatible.
		m_eModel = CM_I80286;

		// Test 386 compatible bit in machine status word.
		iOldMSW = iMSW = MSW();
		iMSW |= (WORD)CR0_EXTENSION_TYPE;
		MSW( iMSW );
		iMSW = MSW();
		MSW( iOldMSW );
		if( (iMSW&CR0_EXTENSION_TYPE)==CR0_EXTENSION_TYPE )
		{
			// 80386 compatible.
			m_eModel = CM_I80386;
			iEFlags = EFlags()&(~F_ALIGNMENT_CHECK);
			EFlags( iEFlags );
			iEFlags = EFlags();
			if( (iEFlags&F_ALIGNMENT_CHECK)==0 )
			{
				// 80486 compatible.
				m_eModel = CM_I80486;

				// Test manipulation of the ID bit 21.
				iOldEFlags = iEFlags = EFlags();
				iEFlags ^= F_CPUID;
				EFlags( iEFlags );
				iEFlags = EFlags();
				if( iEFlags!=iOldEFlags )
				{
					// CPUID instruction present.
					iID = (ID() & 0x0000f00)>>8;
					m_eModel = (cpu_model)iID;
				}
			}
		}
	}
}


// Purpose	: Sets the contents of a virtual register.
//
// Author	: Daniel J Hawkins
//
// Date		: 28/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::Register( BYTE iRegister, DWORD iValue )
{
	switch( iRegister )
	{
	case 0:	m_iEAX = iValue; break;
	case 1:	m_iEBX = iValue; break;
	case 2:	m_iECX = iValue; break;
	case 3: m_iEDX = iValue; break;
	}
}


// Purpose	: Saves the state of the CPU.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::Save()
{
	m_iEAX = GetEAX();
	m_iEBX = GetEBX();
	m_iECX = GetECX();
	m_iEDX = GetEDX();
	edi = GetEDI();
	esi = GetESI();
	ebp = GetEBP();
	esp = GetESP();
	ds = GetDS();
	es = GetES();
	fs = GetFS();
	gs = GetGS();
	eflags = GetEFlags();
	cr0 = GetCR0();
	cr2 = GetCR2();
	cr3 = GetCR3();
}
