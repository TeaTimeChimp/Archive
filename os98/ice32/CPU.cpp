// CPU.cpp: implementation of the CCPU class.
//
//////////////////////////////////////////////////////////////////////

#ifdef WIN32
	#include <windows.h>
#endif

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "CPU.h"
#include "IDT.h"
#include "Selector.h"

// Static constant data members.
const char	CCPU::m_pClassName[]	= "CPU::";
DWORD		CCPU::m_iNT				= 0x00004000;


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

// Purpose	: Default constructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
CCPU::CCPU( void* pIDTAddress, void* pGDTAddress ):
m_IDT( pIDTAddress, 256 ),
m_GDT( pGDTAddress, 8192 )
{
}

CCPU::~CCPU()
{
}


// Purpose	: Return the cs register value.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/02/98
//
// Modification History
// Date		Initials	Reason
// 
SELECTOR CCPU::getCS()
{
	SELECTOR iCS;

	__asm	mov	ax, cs
	__asm	mov	iCS, ax

	return iCS;
}


// Purpose	: Delay to allow debugging.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/02/98
//
// Modification History
// Date		Initials	Reason
// 
void CCPU::delay()
{
	for( int Delay1=0 ; Delay1<100000 ; Delay1++ )
		for( int Delay2=0 ; Delay2<20000 ; Delay2++ )
			__asm nop
}


// Purpose	: Provides a crude method of dumping hex formatted
//			  bytes of memory to the screen.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/02/98
//
// Modification History
// Date		Initials	Reason
// 
void CCPU::dumpMemory( void* pRawData )
{
	int row;
	int column;
	DWORD iIndex;
	BYTE* pAddress;
	
	pAddress = (BYTE*)pRawData;

	for( row=0 ; row<8 ; row++ )
	{
		cout << (ADDRESS)pAddress << " : ";
		for( iIndex=0, column=0 ; column<8 ; column++, iIndex++ )
			cout << pAddress[iIndex] << " ";
		cout << "- ";
		for( column=0 ; column<8 ; column++, iIndex++ )
			cout << pAddress[iIndex] << " ";
		cout << "  ";
		for( iIndex=0, column=0 ; column<16 ; column++, iIndex++ )
			switch( pAddress[iIndex] )
			{
				case 10:
				case 13:
				{
					cout << (char)0x00;
					break;
				}
				default:
					cout << (char)(pAddress[iIndex]);
			}
		pAddress += 16;
		
		// Add CRN to end or row.
		cout << "\n";
	};

}


// Purpose	: Called once on startup to initialise the processor.
//
// Author	: Daniel J Hawkins
//
// Date		: 13/02/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CCPU::create()
{
	unsigned long iError;
	SELECTOR Code;

	// Prolog.
	cout << "CPU...";

	// Add flat code and data segments.
	m_GDT.create();
	Code = m_GDT.addMemoryDescriptor( DT_EXECUTE_READ, DPL0, 0, 0xffffffff );
	setGlobalDataSelector( m_GDT.addMemoryDescriptor( DT_READ_WRITE, DPL0, 0, 0xffffffff ) );

#ifdef WIN32
	// Must stick to CS provided by NT.
	__asm	push	cs
	__asm	pop		eax
	__asm	mov		Code, ax
#endif

	// Start executing in new code segment.
	__asm	movzx	eax, Code
	__asm	push	eax
	__asm	mov		eax, offset restart
	__asm	push	eax
	__asm	retf
restart:

	// Create IDT.
	m_IDT.create();
	
	// Epilog.
	cout << "Ok" << endl;

	// Return error code.
	return iError;
}



// Purpose	: Returns a reference to the global descriptor
//			  table object.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/07/99
//
// Modification History
// Date		Initials	Reason
//
CGDT& CCPU::getGDT()
{
	// Return global descriptor table.
	return m_GDT;
}


// Purpose	: Returns the global data selector.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CCPU::getGlobalDataSelector()
{
	// Return global data selector.
	return m_iGlobalDataSelector;
}


// Purpose	: Returns a reference to the interrupt descriptor
//			  table object.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
CIDT& CCPU::getIDT()
{
	// Return interrupt descriptor table.
	return m_IDT;
}


// Purpose	: Returns the type of the segment described by the descriptor
//			  specified by the selector provided.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/07/99
//
// Modification History
// Date		Initials	Reason
//
EDescriptorType CCPU::getSegmentType( SELECTOR iSelector )
{
	EDescriptorType eType;

	// Identify to which descriptor table the selector refers.
	switch( CSelector(iSelector).getDescriptorTableScope() )
	{
		case DTS_LOCAL:
			{
				// Selector refers to the local descriptor table.
				eType = Application.getProcessManager().getCurrentProcess()->getLDT()->getDescriptor(iSelector)->getType();
				break;
			}
		case DTS_GLOBAL:
			{
				// Selector refers to the global descriptor table.
				eType = m_GDT.getDescriptor(iSelector)->getType();
				break;
			}
		default:
		{
			// Catch unknown descriptor table resources.
			Application.halt( "EDescriptorType CCPU::getSegmentType( SELECTOR iSelector ) - Invalid table." );
			break;
		}
	}

	// Return segment type.
	return eType;
}


// Purpose	: Enables or disables interrupts.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/02/98
//
// Modification History
// Date		Initials	Reason
//
void CCPU::enableInterrupts( bool bEnable )
{
#ifndef WIN32
	if( bEnable==true )
		__asm	sti
	else
		__asm	cli
#endif
}


// Purpose	: Returns the address of the page directory.
//
// Author	: Daniel J Hawkins
// 
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
const void* CCPU::getPageDirectoryTable() const
{
	void* pAddress;

#ifdef WIN32
	pAddress = (unsigned long)m_pCR3;
#else
	__asm	mov	eax, cr3
	__asm	mov	pAddress, eax	
#endif

	// Return address of page directory table.
	return pAddress;
}


// Purpose	: Sets the code segment register.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/07/99
//
// Modification History
// Date		Initials	Reason
//
void CCPU::setCS( SELECTOR iSelector )
{
	// Validate selector against descriptor tables.
	cout << m_pClassName << "setCS(" << iSelector << ")" << endl;
	switch( getSegmentType(iSelector) )
	{
	case DT_EXECUTE_READ:
	case DT_AVAILABLE_386_TSS: 
		{
			// Trashes stack, execution won't be returning here.
			CSelector(iSelector).dump();
			Application.halt( "Affraid to continue :(" );
			__asm	push	iSelector
			__asm	push	0
			__asm	retf
		}
	default:
		{
			// Invalid selector passed.
			CSelector(iSelector).dump();
			Application.halt( "CPU::setCS - Invalid selector." );
		}
	}
}


// Purpose	: Sets the selector that refers to global data.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
void CCPU::setGlobalDataSelector( SELECTOR iGlobalDataSelector )
{
	// Store global data selector.
	m_iGlobalDataSelector = iGlobalDataSelector;
}


// Purpose	: Sets the nested task bit of the eflags register.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/07/99
//
// Modification History
// Date		Initials	Reason
//
void CCPU::setNT( bool bState )
{
	cout << m_pClassName << "setNT(" << (BYTE)bState << ")" << endl;
	if( bState==true )
	{
		// Set NT flag.
		DWORD iNestedTask = m_iNT;
		__asm	pushfd
		__asm	pop		eax
		__asm	or		eax, iNestedTask
		__asm	push	eax
		__asm	popfd
	}
	else
	{
		// Clear NT flag.
		DWORD iNotNT = ~m_iNT;
		__asm	pushfd
		__asm	pop		eax
		__asm	and		eax, iNotNT
		__asm	push	eax
		__asm	popfd
	}
}


// Purpose	: Sets the address of the page directory table.
//
// Author	: Daniel J Hawkins
// 
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageDirectoryTable* CCPU::setPageDirectoryTable( CPageDirectoryTable* pAddress )
{
	CPageDirectoryTable* pCurrentPDT;

#ifdef WIN32
	m_pCR3 = (void*)pAddress;
#else
	cout << m_pClassName << "setPageDirectoryTable(0x" << (unsigned long)pAddress << ")" << endl;	
	__asm	mov	eax, cr3
	__asm	mov	pCurrentPDT, eax
	__asm	mov	eax, pAddress
	__asm	mov	cr3, eax
#endif
	// Return previous PDT.
	return pCurrentPDT;
}


// Purpose	: Sets the enable paging flag.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/01/99
//
// Modification History
// Date		Initials	Reason
//
void CCPU::setPagingEnabled( bool bEnable )
{
	cout << "CCPU: PG=";
	if( bEnable==true )
	{
		cout << "1" << endl;
	__asm	mov	eax, cr0
	__asm	or	eax, 0x80000000
	__asm	mov	cr0, eax
	}
	else
	{
		cout << "0" << endl;
	__asm	mov	eax, cr0
	__asm	and	eax, 0x7fffffff
	__asm	mov	cr0, eax	
	}
}