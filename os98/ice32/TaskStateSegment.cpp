// TaskStateSegment.cpp: implementation of the CTaskStateSegment class.
//
//////////////////////////////////////////////////////////////////////

#include "TaskStateSegment.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CTaskStateSegment::CTaskStateSegment()
{

}

CTaskStateSegment::~CTaskStateSegment()
{

}


// Purpose	: Returns the CR3 register, the physical address of the tasks
//			  page dircetory table.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/01/99
//
// Modification History
// Date		Initials	Reason
//
CPageDirectoryTable* CTaskStateSegment::getCR3()
{
	// Return pointer to table.
	return (CPageDirectoryTable*)m_iCR3;
}


// Purpose	: Sets the CR3 register, the physical address of the tasks
//			  page dircetory table.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/01/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setCR3( CPageDirectoryTable* pPageDirectoryTable )
{
	// Set CR3.
	m_iCR3 = (ADDRESS)pPageDirectoryTable;
}


// Purpose	: Sets the current stack pointer registers SS and ESP.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setCurrentStackPointer( SELECTOR iSS, void* pESP )
{
	// Set IP components.
	m_iSS	= iSS;
	m_iESP	= (OFFSET)pESP;
}


// Purpose	: Sets the data selector DS.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setDataSelector( SELECTOR iDS )
{
	// Set data selector.
	m_iDS = iDS;
}


// Purpose	: Sets the instruction pointer registers CS and EIP.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setInstructionPointer( SELECTOR iCS, void* pEIP )
{
	// Set IP components.
	m_iCS	= iCS;
	m_iEIP	= (OFFSET)pEIP;
}


// Purpose	: Sets the pointer to the local descriptor table.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setLDTSelector( SELECTOR iLDT )
{
	// Set selector of local descriptor table.
	m_iLDT = iLDT;
}


// Purpose	: Sets the link field, the selector of the task to return to
//			  if this task executes a nested task return.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setLink( SELECTOR iSelector )
{
	// Set link field.  
	m_iLink = iSelector;
}


// Purpose	: Sets the pointer to the page directory table.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setPageDirectoryTable( CPageDirectoryTable* pPDT )
{
	// Set CR3 to the page directory table.
	m_iCR3 = (OFFSET)pPDT;
}


// Purpose	: Sets the pointer to the ring 0 stack.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setRing0StackPointer( SELECTOR iSS, void* pESP )
{
	m_iSS0	= iSS;
	m_iESP0	= (DWORD)pESP;
}


// Purpose	: Sets the pointer to the ring 1 stack.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setRing1StackPointer( SELECTOR iSS, void* pESP )
{
	m_iSS1	= iSS;
	m_iESP1	= (DWORD)pESP;
}


// Purpose	: Sets the pointer to the ring 2 stack.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void CTaskStateSegment::setRing2StackPointer( SELECTOR iSS, void* pESP )
{
	m_iSS2	= iSS;
	m_iESP2	= (DWORD)pESP;
}
