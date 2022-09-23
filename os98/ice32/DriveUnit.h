// DriveUnit.h: interface for the CDriveUnit class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DRIVEUNIT_H__02C8B3C3_B472_11D1_B590_000000000000__INCLUDED_)
#define AFX_DRIVEUNIT_H__02C8B3C3_B472_11D1_B590_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "BootDevice.h"

// Definition of the drive unit class.
class CDriveUnit: public CBootDevice
{
	// Private static constants.
	static const char				m_pClassName[];

	// Private data members.
	unsigned long					m_iBootBlockStart;
	unsigned long					m_iBootBlockCount;
	unsigned long					m_iBytesPerBlock;
	int								m_iCurrentCylinder;	
	unsigned long					m_iCylindersPerPlatter;
	unsigned char					m_iDataBytesPerSector;
	unsigned char					m_iDataLength;
	class CFloppyDiskController*	m_pDriveController;
	unsigned char					m_iEndOfTrack;
	unsigned char					m_iGapLength;
	unsigned long					m_iHeadsPerDisk;
	bool							m_bMotorOffRequestFlag;	
	bool							m_bMounted;
	char*							m_pName;
	unsigned long					m_iSectorsPerTrack;
	int								m_iTimeToMotorOff;
	unsigned long					m_iUnitNumber;

public:
	// Public constructors and destructor.
			CDriveUnit( const CFloppyDiskController*, const unsigned long );
	virtual ~CDriveUnit();

	// Public member functions.
	unsigned long		getBytesPerBlock();
	unsigned long		getCurrentCylinder();
	unsigned long		getCylinder( unsigned long );
	unsigned long		getDataBytesPerSector();
	unsigned long		getDataLength();
	unsigned long		getEndOfTrack();
	unsigned long		getGapLength();
	unsigned long		getHead( unsigned long );
	void*				getImageBase();
	unsigned long		getImageSize();
	char*				getName();
	unsigned long		getSector( unsigned long );
	const bool			getMotorOffRequestFlag() const;
	const unsigned long	getTimeToMotorOff() const;
	const unsigned long	getUnitNumber() const;
	void				motorOff();
	void				motorOn();
	unsigned long		readBlocks( unsigned long, unsigned long, void* );
	unsigned long		readBootImage( void* );
	void				select();
	void				setCurrentCylinder( unsigned long );
	void				setMotorOffRequestFlag( const bool );
	void				setTimeToMotorOff( const unsigned long );
};

#endif // !defined(AFX_DRIVEUNIT_H__02C8B3C3_B472_11D1_B590_000000000000__INCLUDED_)
