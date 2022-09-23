// Timer.h: interface for the CTimer class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_TIMER_H__DC62E842_A8AD_11D1_B56E_000000000000__INCLUDED_)
#define AFX_TIMER_H__DC62E842_A8AD_11D1_B56E_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

// Definition of the system timer class.
class CTimer  
{
	// Private data members.
	volatile static unsigned long	m_iTickCount;
	BYTE							m_iIRQ;
	const CIOPort*					m_pCommandRegister;
	const CIOPort*					m_pChannelLatches[3];

	// Private static constants.
	static const CHANNEL0_LATCH;
	static const CHANNEL1_LATCH;
	static const CHANNEL2_LATCH;
	static const COMMAND_REGISTER;
	static const OSCILLATOR_FREQUENCY;

	// Private member functions.
	static void interruptServiceRequest();		
	void		programOscillator( BYTE, BYTE, WORD );

public:
	// Public constructor and destructor.
				CTimer();
	virtual		~CTimer();

	// Public member functions.
	void		delayExecution( const unsigned long ) const;	
	const BYTE	getIRQ() const;
	bool		create();
};

#endif // !defined(AFX_TIMER_H__DC62E842_A8AD_11D1_B56E_000000000000__INCLUDED_)
