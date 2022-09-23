// FloppyDiskController.h: interface for the CFloppyDiskController class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FLOPPYDISKCONTROLLER_H__02C8B3C2_B472_11D1_B590_000000000000__INCLUDED_)
#define AFX_FLOPPYDISKCONTROLLER_H__02C8B3C2_B472_11D1_B590_000000000000__INCLUDED_

#include "DriveUnit.h"	// Added by ClassView
#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "BootController.h"
#include "DMAChannel.h"
#include "DriveUnit.h"
#include "IOPort.h"
#include "TList.h"
#include "TQueue.cpp"


// Static constants.
const int IRQ					= 6;
const int MAX_DRIVE_UNITS		= 4;
const int MAX_FDC_COMMANDS		= 7;


// Enumeration of FDC commands.
enum EFDCCommand	{ 
						FDCC_NULL				= 0,
						FDCC_SENSE_DRIVE_STATUS = 2,
						FDCC_SEEK				= 3,
						FDCC_RECALIBRATE		= 4,						
						FDCC_READ_DATA			= 5
					};

// Enumeration of executing methods.
enum EFDCMethod { M_NULL, M_RESET, M_ENABLE };
	
// Definition of the floppy disk controller class.
class CFloppyDiskController: public CBootController
{
	// Static constant data members.
	const static char	m_pClassName[];
	const static bool	m_bDebug;
	const static bool	m_bDebugInit;
	const static bool	m_bDebugIO;
	const static bool	m_bDebugCmd;
	const static WORD	m_iDigitalOutputRegister;
	const static WORD	m_iMainStatusRegister;
	const static WORD	m_iDataRegister;
	const static WORD	m_iPortRetryAttempts;
	static const BYTE	m_iDMAChannel;

public:
	// FDC command description class.
	class CCommand
	{
		bool m_bTriggersInterrupt;
		BYTE m_iCommandByte;
		BYTE m_iNumberOfParameters;
		BYTE m_iNumberOfResults;

	public:
		// Public constructor and destructor.
					CCommand( bool bTriggersInterrupt, BYTE iCommandByte, BYTE iNumberOfParameters, BYTE iNumberOfResults )
					{
						m_bTriggersInterrupt = bTriggersInterrupt;
						m_iCommandByte = iCommandByte;
						m_iNumberOfParameters = iNumberOfParameters;
						m_iNumberOfResults = iNumberOfResults;
					}

		// Public member functions.
		const BYTE	getCommandByte() const { return m_iCommandByte; };
		const BYTE	getNumberOfParameters() const { return m_iNumberOfParameters; };
		const BYTE	getNumberOfResults() const { return m_iNumberOfResults; };
		const bool	getInterruptTriggerFlag() const { return m_bTriggersInterrupt; };
	};

private:
	// Private data members.
	unsigned long						m_iBytesRead;
	unsigned long						m_iBytesWritten;
	unsigned long						m_iCallsToTimerHandle;
	static const CCommand				m_pCommands[MAX_FDC_COMMANDS];
	static const CFloppyDiskController*	m_pSingletonInstance;
	bool								m_bWaitForInterrupt;
	int									m_iResultsPending;
	unsigned char						m_iDigitalOutputRegisterState;
	int									m_iCommandQueueEntries;
	int									m_iInterruptTimeOut;
	EFDCMethod							m_eCurrentMethod;
	TList<CDriveUnit*>*					m_pDriveUnits;
	const CIOPort*						m_pDataRegister;
	const CIOPort*						m_pDigitalOutputRegister;
	const CIOPort*						m_pMainStatusRegister;
	TQueue<BYTE>*						m_pQueue;
	CDMAChannel*						m_pDMAChannel;
	BYTE								m_iStatusRegister0;

	// Private member functions.
	void								decodeStatus3( BYTE );
	void								diskISRHandler();
	bool								enable();
	static const CFloppyDiskController*	getInstance();
	const unsigned long					issueCommand( EFDCCommand );
	long								readByte();
	long								readBytes( unsigned long );
	bool								motorOff( const CDriveUnit* );
	bool								reset();
	bool								senseInterruptStatus() const;
	void								setWaitForInterruptFlag( const bool );
	bool								waitForInterrupt();
	void								timerISRHandler();
	const bool 							writeByte( const BYTE ) const;

public:
	// Publich constructor and destructor.
										CFloppyDiskController();
	virtual								~CFloppyDiskController();

	// Public member functions.
	const unsigned long					create();
	CBootDevice*						getBootDevice();
	bool								requestMotorOff( const CDriveUnit* );
	bool								requestMotorOn( const CDriveUnit* );
	unsigned long						readBlocks( CDriveUnit*, unsigned long, unsigned long, void* );
	void								select( const CDriveUnit* );
	void								setStatusRegister0( BYTE );
	
	// Static member functions.
	static void							diskISR();
	static void							timerISR();

	// Class constants.
	static const unsigned long			MOTOR_OFF_DELAY;
};

#endif // !defined(AFX_FLOPPYDISKCONTROLLER_H__02C8B3C2_B472_11D1_B590_000000000000__INCLUDED_)
