// PageTableEntry.cpp: implementation of the CPageTableEntry class.
//
//////////////////////////////////////////////////////////////////////

#include "PageTableEntry.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CPageTableEntry::CPageTableEntry()
{

}

CPageTableEntry::~CPageTableEntry()
{

}

// Purpose	: Clears the entry setting all bits to 0.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/01/99
//
// Modification History
// Date		Initials	Reason
//
void CPageTableEntry::clear()
{
	*((unsigned long*)this) = 0x00000000L;
}


// Purpose	: Returns true if the allocation marker bit is set.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CPageTableEntry::getAllocated()
{
	// Return allocation bit.
	return (m_iAllocated==1);
}


// Purpose	: Returns a pointer to the first address in the page.
//
// Author	: Daniel J Hawkins
//
// Date		: 03/06/99
//
// Modification History
// Date		Initials	Reason
//
void* CPageTableEntry::getPagePointer() const
{
	// Return page frame converted to address.
	return (void*)(m_iPageFrame<<12);
}


// Purpose	: Returns a pointer to the first address in the page.
//
// Author	: Daniel J Hawkins
//
// Date		: 03/06/99
//
// Modification History
// Date		Initials	Reason
//
DWORD CPageTableEntry::getPageFrame() const
{
	// Return page frame converted to address.
	return m_iPageFrame;
}


// Purpose	: Sets the 20-bit address mapping the page table entry
//			  to the underlying physical page in memory.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageTableEntry::setPageFrame( DWORD iPageFrame )
{
	// Store 20-bit address xxxxxxxxxxxxxxxxxxxx000000000000.
	m_iPageFrame = iPageFrame;
}


// Purpose	: Sets the allocation marker bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 21/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageTableEntry::setAllocated( bool bSet )
{
	if( bSet==true )
		m_iAllocated = 1;
	else
		m_iAllocated = 0;
}


// Purpose	: Sets the present bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageTableEntry::setPresent( bool bValue )
{
	if( bValue==true )
		m_iPresent = 1;
	else
		m_iPresent = 0;
}


// Purpose	: Sets the read write bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageTableEntry::setReadWrite( bool bValue )
{
	if( bValue==true )
		m_iReadWrite = 1;
	else
		m_iReadWrite = 0;
}


