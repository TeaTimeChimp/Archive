// DescriptorTable.cpp: implementation of the CDescriptorTable class.
//
//////////////////////////////////////////////////////////////////////

#ifdef WIN32
	#include <windows.h>
#else
	#include ".\libc\malloc.h"
	#include ".\libc\memory.h"
#endif

#include ".\libcpp\ostream.h"

#include "Application.h"
#include "DescriptorTable.h"
#include "Errors.h"


const char CDescriptorTable::m_pClassName[] = "DescriptorTable::";
const bool CDescriptorTable::m_bDebug		= false;

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CDescriptorTable::CDescriptorTable( void* pBase, WORD iEntries )
{
#ifdef WIN32
	// Allocate memory under NT.
	pBase = VirtualAlloc( pBase, iEntries*8, MEM_COMMIT, PAGE_READWRITE );
	if( pBase==NULL )
		pBase = VirtualAlloc( NULL, iEntries*8, MEM_COMMIT, PAGE_READWRITE );		
#endif

	// Set table base address.
	m_pFirst	= (CDescriptor*)pBase;
	m_pLast		= (CDescriptor*)((char*)pBase+((iEntries-1)<<3));
	m_iEntries	= iEntries;
}


CDescriptorTable::~CDescriptorTable()
{

}


// Purpose	: Adds a segment to the descriptor table using the first avaiable
//			  descriptor entry.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CDescriptorTable::addMemoryDescriptor( EDescriptorType eType, EPriviledgeLevel eDPL, void* pBase, DWORD iLimit )
{
	SELECTOR Selector;
	CDescriptor* pDescriptor;

	// Assume failure.
	Selector = NULL;

	// Locate a free descriptor entry.
	cout << m_pClassName << "addSegment - Type = " << (WORD)eType << endl;
	pDescriptor = getFirstAvailableDescriptor();
	if( pDescriptor==NULL )
		Application.halt( "DescriptorTable::addSegment - Failed." );
	else
		Selector = setMemoryDescriptor( pDescriptor, eType, eDPL, pBase, iLimit );

	// Return new selector.
	return Selector;
}


// Purpose	: Adds a segment to the descriptor table using the first avaiable
//			  descriptor entry.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CDescriptorTable::addGateDescriptor( EDescriptorType eType, EPriviledgeLevel eDPL, SELECTOR iSelector, void* pPointer )
{
	SELECTOR Selector;
	CDescriptor* pDescriptor;

	// Assume failure.
	Selector = NULL;

	// Locate a free descriptor entry.
	cout << m_pClassName << "addSystemDescriptor - Type = " << (WORD)eType << endl;
	pDescriptor = getFirstAvailableDescriptor();
	if( pDescriptor==NULL )
		Application.halt( "DescriptorTable::addSystemDescriptor - Failed." );
	else
		Selector = setGateDescriptor( pDescriptor, eType, eDPL, iSelector, pPointer );

	// Return new selector.
	return Selector;
}


// Purpose	: Creates the internal structure of the descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CDescriptorTable::create()
{
	// Zero table contents.
	memset( m_pFirst, 0x00000000, m_pLast-m_pFirst );

	// Return no error.
	return EC_NONE;
}


// Purpose	: Returns a pointer to the descriptor specified by the
//			  selector index.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/07/99
//
// Modification History
// Date		Initials	Reason
//
CDescriptor* CDescriptorTable::getDescriptor( SELECTOR iSelector )
{
	int iIndex;
	CDescriptor* pDescriptor;
	const char pFunctionName[] = "getDescriptor - ";

	// Calculate pointer offset from base.
	if(m_bDebug) cout << m_pClassName << pFunctionName << "Selector = " << iSelector << endl;
	iIndex = iSelector >> 3;
	if( iIndex>getEntries() )
		Application.halt( "DescriptorTable::getDescriptor - Invalid index." );
	pDescriptor = &(m_pFirst[iIndex]);

	// Return pointer to descriptor.
	return pDescriptor;
}


// Purpose	: Returns the first avaiable descriptor entry.
//
// Author	: Daniel J Hawkins
//
// Date		; 13/02/98
//
// Modification History
// Date		Initials	Reason
//
CDescriptor* CDescriptorTable::getFirstAvailableDescriptor()
{
	CDescriptor* pDescriptor;

	// Locate first unused descriptor entry.
	pDescriptor = m_pFirst;
	while( pDescriptor<=m_pLast && pDescriptor->getAvailable()==false )
		pDescriptor++;

	// Set to NULL if no free descriptors.
	if( pDescriptor>m_pLast )
	{
		pDescriptor = NULL;
		Application.halt( "Failed to find a free descriptor." );
	}

	// Return free descriptor.
	return pDescriptor;		
}


// Purpose	: Returns the number of descriptors in the table.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
unsigned short CDescriptorTable::getEntries() const
{
	// Return number of entries.
	return m_iEntries;
}


CDescriptor* CDescriptorTable::first()
{
	m_pCursor = m_pFirst;
	return m_pCursor;
}


// Purpose	: Returns the base address of the descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 17/12/98
//
// Modification History
// Date		Initials	Reason
//
const CDescriptor* CDescriptorTable::getBase() const
{
	// Return base address.
	return m_pFirst;
}


CDescriptor* CDescriptorTable::next()
{
	if( m_pCursor!=m_pLast )
		m_pCursor++;
	return m_pCursor;
}


bool CDescriptorTable::more()
{
	if( m_pCursor==m_pLast )
		return false;
	else
		return true;
}


// Purpose	: Sets a desctiptors values.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/12/98
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CDescriptorTable::setMemoryDescriptor( CDescriptor* pDescriptor, EDescriptorType eType, EPriviledgeLevel eDPL, void* pBase, DWORD iLimit )
{
	// Build new descriptor.
	cout << m_pClassName << "setMemoryDescriptor(," << (BYTE)eType << ",,)" << endl;
	pDescriptor->setAvailable( false );
	pDescriptor->setType( eType ); 
	pDescriptor->set( eDPL, pBase, iLimit );

	// Selector is the offset from the table base.
	return (SELECTOR)((ADDRESS)pDescriptor-(ADDRESS)m_pFirst);
}


// Purpose	: Sets a gate desctiptors values.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
SELECTOR CDescriptorTable::setGateDescriptor( CDescriptor* pDescriptor, EDescriptorType eType, EPriviledgeLevel eDPL, SELECTOR iSelector, void* pPointer )
{
	// Build new descriptor.
	cout << m_pClassName << "setSystemDescriptor(," << (BYTE)eType << ",,)" << endl;
	pDescriptor->setAvailable( false );
	pDescriptor->setType( eType );
	pDescriptor->setDPL( eDPL );
	pDescriptor->setPointer( iSelector, pPointer );

	// Selector is the offset from the table base.
	return (SELECTOR)((ADDRESS)pDescriptor-(ADDRESS)m_pFirst);
}
