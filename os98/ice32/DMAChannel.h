// DMAChannel.h: interface for the CDMAChannel class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DMACHANNEL_H__1EB73712_BA0B_11D2_B639_000000000000__INCLUDED_)
#define AFX_DMACHANNEL_H__1EB73712_BA0B_11D2_B639_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "IOPort.h"

enum EDMADirection { DD_NULL, DD_INC, DD_DEC };
enum EDMAType { DT_NULL, DT_IO2RAM, DT_RAM2IO };

class CDMAChannel  
{
	// Provate static constants.
	static const char			m_pClassName[];

	// Private data members.
	bool						m_bDebug;	
	const class CDMAController*	m_pController;
	BYTE						m_iNumber;
	const CIOPort*				m_pAddressRegister;
	const CIOPort*				m_pCountRegister;
	const CIOPort*				m_pPageRegister;
	DWORD						m_iTransferAreaStartPage;
	DWORD						m_iTransferAreaPageCount;

	// Private member functions.
	void	setTransferAreaStartPage( DWORD );
	void	setWordCount( WORD );

public:
	// Public constructor and destructor.
			CDMAChannel();
	virtual ~CDMAChannel();

	// Public member functions.
	DWORD	create( CDMAController*, BYTE, const CIOPort*, const CIOPort*, const CIOPort* );
	BYTE	getNumber() const;
	void*	getTransferAreaPointer() const;
	DWORD	getTransferAreaSize() const;
	void	setDebug( bool );
	DWORD	setTransferAreaSize( DWORD );
	void	transfer( DWORD, EDMAType, EDMADirection );
};

#endif // !defined(AFX_DMACHANNEL_H__1EB73712_BA0B_11D2_B639_000000000000__INCLUDED_)
