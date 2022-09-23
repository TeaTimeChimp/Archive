// DriveUnit.cpp: implementation of the CDriveUnit class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "DriveUnit.h"
#include "FloppyDiskController.h"

// Class constants.
const char CDriveUnit::m_pClassName[] = "DriveUnit::";

//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CDriveUnit::CDriveUnit( const CFloppyDiskController* pController, const unsigned long iUnitNumber )
{
	// Initalise member values.
	m_iBootBlockStart		= 1;
	m_iBootBlockCount		= 4;
	m_iBytesPerBlock		= 512;
	m_iCurrentCylinder		= -1;
	m_iCylindersPerPlatter	= 80;
	m_iDataBytesPerSector	= 2;
	m_iDataLength			= 255;
	m_pDriveController		= (CFloppyDiskController*)pController;
	m_iEndOfTrack			= 18;
	m_iGapLength			= 0;
	m_iHeadsPerDisk			= 2;
	m_bMotorOffRequestFlag	= true;
	m_bMounted				= false;
	m_iSectorsPerTrack		= 18;
	m_iTimeToMotorOff		= 0;
	m_iUnitNumber			= iUnitNumber;

	// Create object name.
	m_pName = "fd0";
}


CDriveUnit::~CDriveUnit()
{

}


// Purpose	: Returns the number of bytes per block.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getBytesPerBlock()
{
	// Return bytes per block.
	return m_iBytesPerBlock;
}


// Purpose	: Returns the current cylinder the drive unit head is positioned
//			  over.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/02/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getCurrentCylinder()
{
	// Return the current cylinder.
	return m_iCurrentCylinder;
}


// Purpose	: Returns the cylinder corresponding to the linear block address.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getCylinder( unsigned long iLinearSector )
{
	// Return cylinder number.
	return (iLinearSector/m_iSectorsPerTrack)/m_iHeadsPerDisk;
}


// Purpose	: Returns the code for data bytes per sector.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getDataBytesPerSector()
{
	// Return data bytes per sector.
	return m_iDataBytesPerSector;
}


// Purpose	: Returns the data length.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getDataLength()
{
	// Return data length setting.
	return m_iDataLength;
}


// Purpose	: Returns the sector gap length.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getGapLength()
{
	// Return data length setting.
	return m_iGapLength;
}


// Purpose	: Returns the end of track.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getEndOfTrack()
{
	// Return data length setting.
	return m_iEndOfTrack;
}


// Purpose	: Returns the head corresponding to the linear block address.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getHead( unsigned long iLinearSector )
{
	// Return head number.
	return (iLinearSector/m_iSectorsPerTrack)%m_iHeadsPerDisk;
}


// Purpose	: Returns the base address of the boot image code.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
void* CDriveUnit::getImageBase()
{
	// Return boot image base.
	cout << m_pClassName << "getImageBase() = 0x00200000" << endl;
	return (void*)0x00200000;
}


// Purpose	: Returns the size of the boot image.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getImageSize()
{
	unsigned long iImageSize;

	// Return bytes in boot image.
	iImageSize = m_iBootBlockCount*getBytesPerBlock();
	cout << "DU: Image size = 0x" << iImageSize << endl;
	return iImageSize;
}


// Purpose	: Returns the motor off request flag.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
const bool CDriveUnit::getMotorOffRequestFlag() const
{
	// Return motor off request flag.
	return m_bMotorOffRequestFlag;
}


// Purpose	: Support for boot device class.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/05/99
//
// Modification History
// Date		Initials	Reason
//
char* CDriveUnit::getName()
{
	// Return device name.
	return m_pName;
}


// Purpose	: Returns the sector corresponding to the linear block address.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::getSector( unsigned long iLinearSector )
{
	// Return sector number.
	return (iLinearSector%m_iSectorsPerTrack)+1;
}


// Purpose	: Returns the number of time units until the motor should be turned off.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CDriveUnit::getTimeToMotorOff() const
{
	// Return time units.
	return m_iTimeToMotorOff;
}


// Purpose	: Returns the unit number of the drive.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
const unsigned long CDriveUnit::getUnitNumber() const
{
	// Return the unit number.
	return m_iUnitNumber;
}


// Purpose	: Requests that the motor be turned off for this drive unit.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/07/98
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::motorOff()
{
	// Instruct the controller to turn this motor off.
	m_pDriveController->requestMotorOff( this );
}


// Purpose	: Requests that the motor be turned on for this drive unit.
//
// Author	: Daniel J Hawkins
//
// Date		: 01/08/98
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::motorOn()
{
	// Instruct the controller to turn this motor on.
	m_pDriveController->requestMotorOn( this );
}


// Purpose	: Reads a number of blocks fron the unit into a buffer.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::readBlocks( unsigned long iFirstBlock, unsigned long iCount, void* pBuffer )
{
	unsigned long iBlocksRead;

	// Instruct controller to read from this unit.
	iBlocksRead = m_pDriveController->readBlocks( this, iFirstBlock, iCount, pBuffer );

	// Return number of blocks read.
	return iBlocksRead;

}


// Purpose	: Reads the boot image from the drive.
//
// Author	: Daniel J Hawkins
//
// Date		: 19/01/99
//
// Modification History
// Date		Initials	Reason
//
unsigned long CDriveUnit::readBootImage( void* pPhysicalAddress )
{
	unsigned long iActualImageSize;
	const char pFunctionName[] = "readBootImage() - ";

	cout << m_pClassName << pFunctionName << "Unit " << getUnitNumber() << endl;

	// Load first n sectors from drive.
	readBlocks( m_iBootBlockStart, m_iBootBlockCount, pPhysicalAddress );
	cout << m_pClassName << pFunctionName << "Read " << iActualImageSize << " byte of image." << endl;

	// Return actual image size.
	return iActualImageSize;
}


// Purpose	: Requests that this drive unit be selected by the controller.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::select()
{
	// Instruct controller to select this drive.
	m_pDriveController->select( this );
}


// Purpose	: Sets the current cylinder the the drive units head is position over.
//
// Author	: Daniel J Hawkins
//
// Date		: 27/01/99
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::setCurrentCylinder( unsigned long iCylinder )
{
	// Store current cylinder.
	m_iCurrentCylinder = iCylinder;
}


// Purpose	: Sets the motor off request flag.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::setMotorOffRequestFlag( const bool bMotorOffRequest )
{
	// Set flag.
	m_bMotorOffRequestFlag = bMotorOffRequest;
}


// Purpose	: Set the time in ticks until the motor is turned off.
//
// Author	: Daniel J Hawkins
//
// Date		: 02/08/98
//
// Modification History
// Date		Initials	Reason
//
void CDriveUnit::setTimeToMotorOff( const unsigned long iTimeToMotorOff )
{
	// Set member variable.
	m_iTimeToMotorOff = iTimeToMotorOff;
}