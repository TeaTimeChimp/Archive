#ifdef WIN32

#include <string.h>
#include <iostream>

using namespace std;

#else

#include "libc\malloc.h"
#include "libc\memory.h"
#include "libc\stdio.h"
#include "libc\strings.h"
#include "libcpp\ostream.h"

#endif
 
#include "Application.h"
#include "PortableExecutable.h"

// Static member initialisers.
const char  CPortableExecutable::m_pClassName[]	= "PortableExecutable::";
const bool  CPortableExecutable::m_bDebug		= false;
const WORD	CPortableExecutable::m_iSignatureMZ = 0x5a4d;
const DWORD CPortableExecutable::m_iSignatureNT = 0x00004550;

const char CPortableExecutable::CSectionHeader::m_pClassName[] = "SectionHeader::";


// Purpose	: Returns the entry point for the executable.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/99
//
// Modification History
// Date		Initials	Reason
//
void* CPortableExecutable::getEntryPoint()
{
	// Return entry point from optional header.
	return m_pOptionalHeader->getEntryPoint();
}


// Purpose	: Return a pointer to the first section header in the image.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/06/99
//
// Modification History
// Date		Initials	Reason
//
CPortableExecutable::CSectionHeader* CPortableExecutable::getFirstSectionHeader()
{
	// Return first section header.
	return m_pSectionHeaders;
}


// Purpose	: Returns the next section header based on the one specified.
//
// Author	: Daniel J Hawkins
//
// Date		: 14/06/99
//
// Modification History
// Date		Initials	Reason
//
CPortableExecutable::CSectionHeader* CPortableExecutable::getNextSectionHeader( CPortableExecutable::CSectionHeader* pSection )
{
	DWORD iSectionIndex;
	CSectionHeader* pNextSection;

	// Locate the section specified by the caller.
	iSectionIndex = 1;
	pNextSection = getFirstSectionHeader();
	while( pNextSection!=pSection && iSectionIndex<m_pPEHeader->getNumberOfSections() )
	{
		pNextSection++;
		iSectionIndex++;
	}

	// If the specified section has been found return the next.
	if( iSectionIndex<m_pPEHeader->getNumberOfSections() )
		pNextSection = pNextSection++;
	else
		pNextSection = NULL;

	// Return next section.
	return pNextSection;
}


// Purpose	: Returns a pointer to the relocation table.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/06/99
//
// Modification History
//
void* CPortableExecutable::getRelocationTable( CSectionHeader* pSection ) const
{
	void* pRelocationTable;

	pRelocationTable = (void*)((DWORD)(m_pOptionalHeader->getImageBase())+(DWORD)(pSection->getVirtualAddress()));

	return pRelocationTable;
}

// Purpose	: Returns the relocated address of a given section.
//
// Author	: Daniel J Hawkins
//
// Date		: 09/02/98
//
// Modification History
// Date		Initials	Reason
//
CPortableExecutable::CSectionHeader* CPortableExecutable::getSectionHeader( const char* pRequiredSectionName )
{
	CSectionHeader* pSection;

	// Iterate across section headers.
	pSection = getFirstSectionHeader();
	while( pSection!=NULL )
	{
		// Compare section name with the one required.
		if( strncmp(pRequiredSectionName,pSection->getName(),strlen(pRequiredSectionName))==0 )
			break;

		// Get next section header.
		pSection = getNextSectionHeader( pSection );
	}

	// Return section pointer.
	return pSection;
}


// Purpose	: Initialises high-level language objects.
//
// Author	: Daniel J Hawkins
//
// Date		: 09/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CPortableExecutable::initialise( CProcess* pProcess, void* pRawImage )
{
	bool bSuccess;
	CSectionHeader* pSection;
	void (**pInitialiser)();
	const char pFunctionName[] = "initialise() - ";

	// Base MZ header and calculate other header pointers.
	cout << m_pClassName << pFunctionName << "Raw image at 0x" << (DWORD)pRawImage << endl;
	m_pMZHeader = (CMZHeader*)pRawImage;
	m_pPEHeader = (CPEHeader*)((DWORD)m_pMZHeader+m_pMZHeader->getPEHeaderOffset()+sizeof(m_iSignatureNT));
	m_pOptionalHeader = (COptionalHeader*)((DWORD)m_pPEHeader+sizeof(CPEHeader));
	m_pSectionHeaders = (CSectionHeader*)((DWORD)m_pOptionalHeader+sizeof(COptionalHeader));

	// Map image into desired address space.
	mapImage( pProcess );

	// Look for '.CRT' section.
	pSection = getSectionHeader( ".CRT" );
	if( pSection==NULL )
		pSection = getSectionHeader( "CRT" );
	if( pSection==NULL )
	{
		// Failed to find C runtime section - not necessarily a failure.
		cout << m_pClassName << pFunctionName << "No CRT section." << endl;
		bSuccess = true;
	}
	else
	{
		// Call exectuable initialisation code.
		pInitialiser = (void(**)())(getRelocationTable( pSection ));
		while( pInitialiser!=NULL )
		{
			cout << "CPortableExecutable::initialise() - Call initialiser 0x" << (DWORD)(*pInitialiser) << endl;
			//(*pInitialiser)();
			pInitialiser++;
		}
		bSuccess = true;
	}

	// Dump entry point.
	cout << m_pClassName << pFunctionName << "Entry point 0x" << (DWORD)(m_pOptionalHeader->getEntryPoint()) << endl;
	Application.getSystem().getCPU().dumpMemory( pProcess->getPhysicalAddress(m_pOptionalHeader->getEntryPoint()) );

	// Return success state.
	return bSuccess;
}


// Purpose	: Maps the raw file image into the address space.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/06/99
//
// Modification History
// Date		Initials	Reason
//
void* CPortableExecutable::mapImage( CProcess* pProcess )
{
	void* pEntryPoint;
	const char pFunctionName[] = "mapImage() - ";

	// Assume function will fail.
	pEntryPoint = NULL;

	// Check MZ signature.
	if( m_pMZHeader->getSignature()==m_iSignatureMZ )
	{
		// Check NT signature.
		if( m_pPEHeader->getSignature()==m_iSignatureNT )
		{
			// Relocate PE sections.
			if( relocateSections( pProcess )==true )
			{
				// Return in success state.
				pEntryPoint = (void*)((DWORD)(m_pOptionalHeader->getImageBase()) + (DWORD)(m_pOptionalHeader->getEntryPoint()));
			}
		}
	}
	else
	{
		// MZ signature not found.
		cout << m_pClassName << pFunctionName << "MZ signature not matched, found 0x" << m_pMZHeader->getSignature() << endl;
	}

	// Return entry point.
	return pEntryPoint;
}


// Purpose	: Relocates all sections of the given portable executable image.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/06/99
//
// Modification History
// Date		Initials	Reason
//
bool CPortableExecutable::relocateSections( CProcess* pProcess )
{
	bool bSuccess;
	CSectionHeader* pSection;

	// Relocate each section.
	bSuccess = true;
	pSection = getFirstSectionHeader();
	while( pSection!=NULL && bSuccess==true )
	{
		// Relocate this section.
		bSuccess = pSection->relocate( pProcess, m_pMZHeader, m_pOptionalHeader, m_bDebug );

		// Move to next section.
		pSection = getNextSectionHeader( pSection );
	}

	// Return success state.
	return bSuccess;
}


// Purpose	: Relocates this section to it's desired place in memory.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/06/99
//
// Modification History
// Date		Initials	Reason
//
bool CPortableExecutable::CSectionHeader::relocate( CProcess* pProcess, CMZHeader* pMZHeader, COptionalHeader* pOptionalHeader, bool bDebug )
{
	void* pSource;
	void* pDestination;
	const char pFunctionName[] = "relocate -";

	// Relocate section by physically copying contents.
	pSource = (BYTE*)pMZHeader + m_iPointerToRawData;
	pDestination = (BYTE*)(pOptionalHeader->getImageBase()) + m_iVirtualAddress;
	if(bDebug) cout << m_pClassName << pFunctionName << "'" << m_pName << "' from 0x" << (DWORD)pSource << " to linear 0x" << (DWORD)pDestination << " size 0x" << m_iSizeOfRawData << endl;
	
	// Commit process address space required by section.
	pProcess->allocateMemory( pDestination, m_iSizeOfRawData, AT_COMMIT, MT_EXECUTE_READ_WRITE );
	pDestination = pProcess->getPhysicalAddress( pDestination );
	if(bDebug) cout << m_pClassName << pFunctionName << "'" << m_pName << "' from 0x" << (DWORD)pSource << " to physical 0x" << (DWORD)pDestination << " size 0x" << m_iSizeOfRawData << endl;
	memcpy( pDestination, pSource, m_iSizeOfRawData );

	// Return true - until there's something that could fail.
	return true;
}