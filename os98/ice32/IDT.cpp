// IDT.cpp: implementation of the CIDT class.
//
//////////////////////////////////////////////////////////////////////

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "IDT.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////


// Array of pointers to ISR handler chains.
SRegisteredISR* CIDT::m_pRegisteredISRs[0xff] = { NULL };


CIDT::CIDT( void* pBase, WORD Entries ):
CDescriptorTable( pBase, Entries )
{
}


CIDT::~CIDT()
{

}


// Purpose	: Calls all handlers in the specified interrupts chain.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
void CIDT::callHandlerChain( BYTE iInterrupt )
{
	SRegisteredISR* pRegisteredISR;

	// Get first handler in the chain.
	pRegisteredISR = m_pRegisteredISRs[iInterrupt];
	while( pRegisteredISR!=NULL )
	{
		// Call handler procedure.
		pRegisteredISR->m_pHandler();

		// Move to next handler.
		pRegisteredISR = pRegisteredISR->m_pNext;
	}
}


// Purpose	: Creates the internal structure of the IDT.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
ERRORCODE CIDT::create()
{
	SPseudoDescriptor Pointer;

	// Call inherited create method.
	CDescriptorTable::create();

	// Set every entry to the default interrupt handler. 
	initialiseHandler( first(), interruptServiceRequest00 );
	initialiseHandler( next(), interruptServiceRequest01 );
	initialiseHandler( next(), interruptServiceRequest02 );
	initialiseHandler( next(), interruptServiceRequest03 );
	initialiseHandler( next(), CIDT::interruptServiceRequest04 );
	initialiseHandler( next(), CIDT::interruptServiceRequest05 );
	initialiseHandler( next(), CIDT::interruptServiceRequest06 );
	initialiseHandler( next(), CIDT::interruptServiceRequest07 );
	initialiseHandler( next(), CIDT::interruptServiceRequest08 );
	initialiseHandler( next(), CIDT::interruptServiceRequest09 );
	initialiseHandler( next(), CIDT::interruptServiceRequest0A );
	initialiseHandler( next(), CIDT::interruptServiceRequest0B );
	initialiseHandler( next(), CIDT::interruptServiceRequest0C );
	initialiseHandler( next(), CIDT::interruptServiceRequest0D );
	initialiseHandler( next(), CIDT::interruptServiceRequest0E );
	initialiseHandler( next(), CIDT::interruptServiceRequest0F );
	initialiseHandler( next(), CIDT::interruptServiceRequest10 );
	initialiseHandler( next(), CIDT::interruptServiceRequest11 );
	initialiseHandler( next(), CIDT::interruptServiceRequest12 );
	initialiseHandler( next(), CIDT::interruptServiceRequest13 );
	initialiseHandler( next(), CIDT::interruptServiceRequest14 );
	initialiseHandler( next(), CIDT::interruptServiceRequest15 );
	initialiseHandler( next(), CIDT::interruptServiceRequest16 );
	initialiseHandler( next(), CIDT::interruptServiceRequest17 );
	initialiseHandler( next(), CIDT::interruptServiceRequest18 );
	initialiseHandler( next(), CIDT::interruptServiceRequest19 );
	initialiseHandler( next(), CIDT::interruptServiceRequest1A );
	initialiseHandler( next(), CIDT::interruptServiceRequest1B );
	initialiseHandler( next(), CIDT::interruptServiceRequest1C );
	initialiseHandler( next(), interruptServiceRequest1D );
	initialiseHandler( next(), interruptServiceRequest1E );
	initialiseHandler( next(), interruptServiceRequest1F );
	initialiseHandler( next(), interruptServiceRequest20 );
	initialiseHandler( next(), interruptServiceRequest21 );
	initialiseHandler( next(), interruptServiceRequest22 );
	initialiseHandler( next(), interruptServiceRequest23 );
	initialiseHandler( next(), interruptServiceRequest24 );
	initialiseHandler( next(), interruptServiceRequest25 );
	initialiseHandler( next(), interruptServiceRequest26 );
	initialiseHandler( next(), CIDT::interruptServiceRequest27 );
	initialiseHandler( next(), CIDT::interruptServiceRequest28 );
	initialiseHandler( next(), CIDT::interruptServiceRequest29 );
	initialiseHandler( next(), CIDT::interruptServiceRequest2A );
	initialiseHandler( next(), CIDT::interruptServiceRequest2B );
	initialiseHandler( next(), CIDT::interruptServiceRequest2C );
	initialiseHandler( next(), CIDT::interruptServiceRequest2D );
	initialiseHandler( next(), CIDT::interruptServiceRequest2E );
	initialiseHandler( next(), CIDT::interruptServiceRequest2F );
	initialiseHandler( next(), CIDT::interruptServiceRequest30 );
	initialiseHandler( next(), CIDT::interruptServiceRequest31 );
	initialiseHandler( next(), CIDT::interruptServiceRequest32 );
	initialiseHandler( next(), CIDT::interruptServiceRequest33 );
	initialiseHandler( next(), CIDT::interruptServiceRequest34 );
	initialiseHandler( next(), CIDT::interruptServiceRequest35 );
	initialiseHandler( next(), CIDT::interruptServiceRequest36 );
	initialiseHandler( next(), CIDT::interruptServiceRequest37 );
	initialiseHandler( next(), CIDT::interruptServiceRequest38 );
	initialiseHandler( next(), CIDT::interruptServiceRequest39 );
	initialiseHandler( next(), CIDT::interruptServiceRequest3A );
	initialiseHandler( next(), CIDT::interruptServiceRequest3B );
	initialiseHandler( next(), CIDT::interruptServiceRequest3C );
	initialiseHandler( next(), CIDT::interruptServiceRequest3D );
	initialiseHandler( next(), CIDT::interruptServiceRequest3E );
	initialiseHandler( next(), CIDT::interruptServiceRequest3F );
	initialiseHandler( next(), CIDT::interruptServiceRequest40 );
	initialiseHandler( next(), CIDT::interruptServiceRequest41 );
	initialiseHandler( next(), CIDT::interruptServiceRequest42 );
	initialiseHandler( next(), CIDT::interruptServiceRequest43 );
	initialiseHandler( next(), CIDT::interruptServiceRequest44 );
	initialiseHandler( next(), CIDT::interruptServiceRequest45 );
	initialiseHandler( next(), CIDT::interruptServiceRequest46 );
	initialiseHandler( next(), CIDT::interruptServiceRequest47 );
	initialiseHandler( next(), CIDT::interruptServiceRequest48 );
	initialiseHandler( next(), CIDT::interruptServiceRequest49 );
	initialiseHandler( next(), CIDT::interruptServiceRequest4A );
	initialiseHandler( next(), CIDT::interruptServiceRequest4B );
	initialiseHandler( next(), CIDT::interruptServiceRequest4C );
	initialiseHandler( next(), CIDT::interruptServiceRequest4D );
	initialiseHandler( next(), CIDT::interruptServiceRequest4E );
	initialiseHandler( next(), CIDT::interruptServiceRequest4F );
	initialiseHandler( next(), CIDT::interruptServiceRequest50 );
	initialiseHandler( next(), CIDT::interruptServiceRequest51 );
	initialiseHandler( next(), CIDT::interruptServiceRequest52 );
	initialiseHandler( next(), CIDT::interruptServiceRequest53 );
	initialiseHandler( next(), CIDT::interruptServiceRequest54 );
	initialiseHandler( next(), interruptServiceRequest55 );
	initialiseHandler( next(), interruptServiceRequest56 );
	initialiseHandler( next(), interruptServiceRequest57 );
	initialiseHandler( next(), interruptServiceRequest58 );
	initialiseHandler( next(), interruptServiceRequest59 );
	initialiseHandler( next(), interruptServiceRequest5A );
	initialiseHandler( next(), interruptServiceRequest5B );
	initialiseHandler( next(), interruptServiceRequest5C );
	initialiseHandler( next(), CIDT::interruptServiceRequest5D );
	initialiseHandler( next(), CIDT::interruptServiceRequest5E );
	initialiseHandler( next(), CIDT::interruptServiceRequest5F );
	initialiseHandler( next(), CIDT::interruptServiceRequest60 );
	initialiseHandler( next(), CIDT::interruptServiceRequest61 );
	initialiseHandler( next(), CIDT::interruptServiceRequest62 );
	initialiseHandler( next(), CIDT::interruptServiceRequest63 );
	initialiseHandler( next(), CIDT::interruptServiceRequest64 );
	initialiseHandler( next(), CIDT::interruptServiceRequest65 );
	initialiseHandler( next(), CIDT::interruptServiceRequest66 );
	initialiseHandler( next(), CIDT::interruptServiceRequest67 );
	initialiseHandler( next(), CIDT::interruptServiceRequest68 );
	initialiseHandler( next(), CIDT::interruptServiceRequest69 );
	initialiseHandler( next(), CIDT::interruptServiceRequest6A );
	initialiseHandler( next(), CIDT::interruptServiceRequest6B );
	initialiseHandler( next(), CIDT::interruptServiceRequest6C );
	initialiseHandler( next(), CIDT::interruptServiceRequest6D );
	initialiseHandler( next(), CIDT::interruptServiceRequest6E );
	initialiseHandler( next(), CIDT::interruptServiceRequest6F );
	initialiseHandler( next(), CIDT::interruptServiceRequest70 );
	initialiseHandler( next(), CIDT::interruptServiceRequest71 );
	initialiseHandler( next(), CIDT::interruptServiceRequest72 );
	initialiseHandler( next(), CIDT::interruptServiceRequest73 );
	initialiseHandler( next(), CIDT::interruptServiceRequest74 );
	initialiseHandler( next(), CIDT::interruptServiceRequest75 );
	initialiseHandler( next(), CIDT::interruptServiceRequest76 );
	initialiseHandler( next(), CIDT::interruptServiceRequest77 );
	initialiseHandler( next(), CIDT::interruptServiceRequest78 );
	initialiseHandler( next(), CIDT::interruptServiceRequest79 );
	initialiseHandler( next(), CIDT::interruptServiceRequest7A );
	initialiseHandler( next(), CIDT::interruptServiceRequest7B );
	initialiseHandler( next(), CIDT::interruptServiceRequest7C );
	initialiseHandler( next(), CIDT::interruptServiceRequest7D );
	initialiseHandler( next(), CIDT::interruptServiceRequest7E );
	initialiseHandler( next(), CIDT::interruptServiceRequest7F );
	initialiseHandler( next(), CIDT::interruptServiceRequest80 );
	initialiseHandler( next(), CIDT::interruptServiceRequest81 );
	initialiseHandler( next(), CIDT::interruptServiceRequest82 );
	initialiseHandler( next(), CIDT::interruptServiceRequest83 );
	initialiseHandler( next(), CIDT::interruptServiceRequest84 );
	initialiseHandler( next(), CIDT::interruptServiceRequest85 );
	initialiseHandler( next(), CIDT::interruptServiceRequest86 );
	initialiseHandler( next(), CIDT::interruptServiceRequest87 );
	initialiseHandler( next(), CIDT::interruptServiceRequest88 );
	initialiseHandler( next(), CIDT::interruptServiceRequest89 );
	initialiseHandler( next(), CIDT::interruptServiceRequest8A );
	initialiseHandler( next(), CIDT::interruptServiceRequest8B );
	initialiseHandler( next(), CIDT::interruptServiceRequest8C );
	initialiseHandler( next(), CIDT::interruptServiceRequest8D );
	initialiseHandler( next(), CIDT::interruptServiceRequest8E );
	initialiseHandler( next(), interruptServiceRequest8F );	
	initialiseHandler( next(), interruptServiceRequest90 );
	initialiseHandler( next(), CIDT::interruptServiceRequest91 );
	initialiseHandler( next(), CIDT::interruptServiceRequest92 );
	initialiseHandler( next(), CIDT::interruptServiceRequest93 );
	initialiseHandler( next(), CIDT::interruptServiceRequest94 );
	initialiseHandler( next(), CIDT::interruptServiceRequest95 );
	initialiseHandler( next(), CIDT::interruptServiceRequest96 );
	initialiseHandler( next(), CIDT::interruptServiceRequest97 );
	initialiseHandler( next(), CIDT::interruptServiceRequest98 );
	initialiseHandler( next(), CIDT::interruptServiceRequest99 );
	initialiseHandler( next(), CIDT::interruptServiceRequest9A );
	initialiseHandler( next(), CIDT::interruptServiceRequest9B );
	initialiseHandler( next(), CIDT::interruptServiceRequest9C );
	initialiseHandler( next(), CIDT::interruptServiceRequest9D );
	initialiseHandler( next(), CIDT::interruptServiceRequest9E );
	initialiseHandler( next(), CIDT::interruptServiceRequest9F );
	initialiseHandler( next(), CIDT::interruptServiceRequestA0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestA9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestAA );
	initialiseHandler( next(), CIDT::interruptServiceRequestAB );
	initialiseHandler( next(), CIDT::interruptServiceRequestAC );
	initialiseHandler( next(), interruptServiceRequestAD );
	initialiseHandler( next(), CIDT::interruptServiceRequestAE );
	initialiseHandler( next(), CIDT::interruptServiceRequestAF );
	initialiseHandler( next(), CIDT::interruptServiceRequestB0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestB9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestBA );
	initialiseHandler( next(), CIDT::interruptServiceRequestBB );
	initialiseHandler( next(), CIDT::interruptServiceRequestBC );
	initialiseHandler( next(), CIDT::interruptServiceRequestBD );
	initialiseHandler( next(), CIDT::interruptServiceRequestBE );
	initialiseHandler( next(), CIDT::interruptServiceRequestBF );
	initialiseHandler( next(), CIDT::interruptServiceRequestC0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestC9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestCA );
	initialiseHandler( next(), CIDT::interruptServiceRequestCB );
	initialiseHandler( next(), CIDT::interruptServiceRequestCC );
	initialiseHandler( next(), CIDT::interruptServiceRequestCD );
	initialiseHandler( next(), CIDT::interruptServiceRequestCE );
	initialiseHandler( next(), CIDT::interruptServiceRequestCF );
	initialiseHandler( next(), CIDT::interruptServiceRequestD0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestD9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestDA );
	initialiseHandler( next(), CIDT::interruptServiceRequestDB );
	initialiseHandler( next(), CIDT::interruptServiceRequestDC );
	initialiseHandler( next(), CIDT::interruptServiceRequestDD );
	initialiseHandler( next(), CIDT::interruptServiceRequestDE );
	initialiseHandler( next(), CIDT::interruptServiceRequestDF );
	initialiseHandler( next(), CIDT::interruptServiceRequestE0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestE9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestEA );
	initialiseHandler( next(), CIDT::interruptServiceRequestEB );
	initialiseHandler( next(), CIDT::interruptServiceRequestEC );
	initialiseHandler( next(), CIDT::interruptServiceRequestED );
	initialiseHandler( next(), CIDT::interruptServiceRequestEE );
	initialiseHandler( next(), CIDT::interruptServiceRequestEF );
	initialiseHandler( next(), CIDT::interruptServiceRequestF0 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF1 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF2 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF3 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF4 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF5 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF6 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF7 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF8 );
	initialiseHandler( next(), CIDT::interruptServiceRequestF9 );
	initialiseHandler( next(), CIDT::interruptServiceRequestFA );
	initialiseHandler( next(), CIDT::interruptServiceRequestFB );
	initialiseHandler( next(), CIDT::interruptServiceRequestFC );
	initialiseHandler( next(), CIDT::interruptServiceRequestFD );
	initialiseHandler( next(), CIDT::interruptServiceRequestFE );
	initialiseHandler( next(), CIDT::interruptServiceRequestFF );

	// Load IDTR.
	Pointer.iLimit	= (getEntries()<<3)-1;
	Pointer.pBase	= getBase();
#ifndef WIN32
	__asm lidt Pointer
#endif

	// Return no error.
	return EC_NONE;
}


// Purpose	: Initialises a handler chain for an interrupt.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
void CIDT::initialiseHandler( CDescriptor* pDescriptor, void(*pHandler)() )
{
	// Set interrupt handler.
	pDescriptor->setPresent( true );
	pDescriptor->setDPL( DPL0 );
	pDescriptor->setType( DT_386_INTERRUPT_GATE );
	pDescriptor->setDWordCount( 0 );
	pDescriptor->setPointer( Application.getCodeSegment(), pHandler );
}


// Purpose	: Registers a procedure to handle a specific interrupt.
//			  Interrupt handlers are stored in linked lists with
//			  the most recently registered procedure called before
//			  any existing handler.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
void CIDT::registerHandler( const BYTE iInterrupt, void(*pHandler)() )
{
	SRegisteredISR* pRegisteredISR;

	// Create a new registered ISR record.
	pRegisteredISR = new SRegisteredISR();
	if( pRegisteredISR!=NULL )
	{
		// Store address of handler.
		pRegisteredISR->m_pHandler = pHandler;

		// Link new ISR into chain.
		if( m_pRegisteredISRs[iInterrupt]==NULL )
		{
			// First ISR for this interrupt.
			pRegisteredISR->m_pNext = NULL;
		}
		else
		{
			// Point new ISR to current head.
			pRegisteredISR->m_pNext = m_pRegisteredISRs[iInterrupt];
		}

		// Update head pointer.
		m_pRegisteredISRs[iInterrupt] = pRegisteredISR;
	}
	else
	{
		// Allocation of new ISR record failed.
		cout << "Failed to allocate ISR record.\n";
	}
}


// Purpose	: Handles all interrupts calling specific chained 
//			  handlers.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/02/98
//
// Modification History
// Date		Initials	Reason
//
void __declspec(naked) CIDT::defaultHandler( BYTE iInterrupt )
{
	// Store register that may be clobbered.
	__asm	enter	0, 0
	__asm	push	eax
	__asm	push	ebx
	__asm	push	ecx
	__asm	push	edx
	__asm	push	edi
	__asm	push	esi

	// Call chaining function.
	callHandlerChain( iInterrupt );

	// Restore register that could have been clobbered.
	__asm	pop		esi
	__asm	pop		edi
	__asm	pop		edx
	__asm	pop		ecx
	__asm	pop		ebx
	__asm	pop		eax
	__asm	leave
	
	// Remove parameter and return address pushed on call to this function.
	__asm	add	esp, 8

	// Remove stack frame created by interruptServiceRequestXX as it's not naked.
	__asm	pop	ebp
	
	// Return from interrupt.
	__asm	iretd
}
