// PageDirectoryEntry.cpp: implementation of the CPageDirectoryEntry class.
//
//////////////////////////////////////////////////////////////////////

#include "PageDirectoryEntry.h"

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CPageDirectoryEntry::CPageDirectoryEntry()
{

}

CPageDirectoryEntry::~CPageDirectoryEntry()
{

}


// Purpose	: Returns the page frame held by the entry.
//			  The return value should not be confused with the
//			  linear memory address which is the return value
//			  shifted left by twelve bits,
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
PAGEFRAME CPageDirectoryEntry::getPageTable()
{
	// Returns the page frame address.
	return m_iPageTableFrame;
}


// Purpose	: Returns the page frame address held by the entry.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
CPageTableEntry* CPageDirectoryEntry::getPageTablePointer()
{
	// Returns the page frame address.
	return (CPageTableEntry*)(m_iPageTableFrame<<12);
}


// Purpose	: Returns the allocation status of the entry.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CPageDirectoryEntry::getAllocated()
{
	// Returns true if the allocated bit is set,
	return (m_iAllocated==1);
}


// Purpose	: Returns the full status of the entry.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CPageDirectoryEntry::getFull()
{
	// Returns true if the allocated bit is set,
	return (m_iFull==1);
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
void CPageDirectoryEntry::setPresent( bool bValue )
{
	if( bValue==true )
		m_iPresent = 1;
	else
		m_iPresent = 0;
}


// Purpose	: Sets the read/write bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setReadWrite( bool bValue )
{
	if( bValue==true )
		m_iReadWrite = 1;
	else
		m_iReadWrite = 0;
}


// Purpose	: Sets the User/Supervisor bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setUserSupervisor( bool bValue )
{
	if( bValue==true )
		m_iUserSupervisor = 1;
	else
		m_iUserSupervisor = 0;
}


// Purpose	: Sets the write through bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setWriteThrough( bool bValue )
{
	if( bValue==true )
		m_iWriteThrough = 1;
	else
		m_iWriteThrough = 0;
}


// Purpose	: Sets the cache disabled bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setCacheDisabled( bool bValue )
{
	if( bValue==true )
		m_iCacheDisabled = 1;
	else
		m_iCacheDisabled = 0;
}


// Purpose	: Sets the accessed bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setAccessed( bool bValue )
{
	if( bValue==true )
		m_iAccessed = 1;
	else
		m_iAccessed = 0;
}


// Purpose	: Sets the reserved bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setReserved( bool bValue )
{
	if( bValue==true )
		m_iReserved = 1;
	else
		m_iReserved = 0;
}


// Purpose	: Sets the page size bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setPageSize( bool bValue )
{
	if( bValue==true )
		m_iPageSize = 1;
	else
		m_iPageSize = 0;
}


// Purpose	: Sets the global page bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setGlobalPage( bool bValue )
{
	if( bValue==true )
		m_iGlobalPage = 1;
	else
		m_iGlobalPage = 0;
}


// Purpose	: Sets the allocated bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setAllocated( bool bValue )
{
	if( bValue==true )
		m_iAllocated = 1;
	else
		m_iAllocated = 0;
}


// Purpose	: Sets the full bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setFull( bool bValue )
{
	if( bValue==true )
		m_iFull = 1;
	else
		m_iFull = 0;
}


// Purpose	: Sets the available bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setAvailable( bool bValue )
{
	if( bValue==true )
		m_iAvailable = 1;
	else
		m_iAvailable = 0;
}


// Purpose	: Sets the page table page frame.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/02/98
//
// Modification History
// Date		Initials	Reason
//
void CPageDirectoryEntry::setPageTable( DWORD iPageFrame )
{
	// Set 20-bit page frame of page table.
	m_iPageTableFrame = iPageFrame;
}
