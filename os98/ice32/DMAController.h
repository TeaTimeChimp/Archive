// DMAController.h: interface for the CDMAController class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DMACONTROLLER_H__4EF37804_B5EB_11D2_A534_006008569AA6__INCLUDED_)
#define AFX_DMACONTROLLER_H__4EF37804_B5EB_11D2_A534_006008569AA6__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "DMAChannel.h"
#include "IOManager.h"

class CDMAController  
{
	// Allows access to channel wide members functions.
	friend CDMAChannel;

	// Static constants.
	static const char m_pClassName[];
	static const bool m_bDebug;
	static const bool m_bDebugIO;
	static const WORD m_iAddressPortOffset;
	static const WORD m_iWordCountPortOffset;
	static const WORD m_iStatusPortOffset;
	static const WORD m_iRequestPortOffset;
	static const WORD m_iSingleMaskBitPortOffset;
	static const WORD m_iModePortOffset;
	static const WORD m_iClearFlipFlopPortOffset;
	static const WORD m_iMasterClearPortOffset;
	static const WORD m_iClearMaskPortOffset;
	static const WORD m_iWriteAllMaskBitsPortOffset;

	// Private data members.
	WORD					m_iBasePort;
	const CIOPort*			m_pClearFlipFlopPort;
	const CIOPort*			m_pClearMaskPort;
	const CIOPort*			m_pCommandPort;
	BYTE					m_iChannelBase;
	BYTE					m_iChannelCount;
	int						m_iID;
	const CIOPort*			m_pMaskPort;
	const CIOPort*			m_pMasterClearPort;
	const CIOPort*			m_pModePort;
	const CIOPort*			m_pSingleMaskBitPort;
	const CIOPort*			m_pStatusPort;
	const CIOPort*			m_pRequestPort;
	const CIOPort*			m_pTemporaryPort;
	const CIOPort*			m_pWriteAllMaskBitsPort;
	BYTE					m_iChannelMask;
	TList<CDMAChannel*>*	m_pChannels;

	// Private member functions.
	void				clearFlipFlop() const;
	void				setChannelEnable( CDMAChannel*, bool );
	void				setMode( CDMAChannel*, EDMAType, EDMADirection ) const;

public:
	// Public constructor and destructor.
						CDMAController();
	virtual				~CDMAController();

	// Public member functions.
	bool				create( int, WORD, WORD[], BYTE, BYTE );
	const CDMAChannel*	requestChannel( BYTE ) const;
};

#endif // !defined(AFX_DMACONTROLLER_H__4EF37804_B5EB_11D2_A534_006008569AA6__INCLUDED_)
