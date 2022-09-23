	TITLE	E:\WORKSHOP\os98\ice32\Timer.cpp
	.386P
include listing.inc
if @Version gt 510
.model FLAT
else
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
_BSS	SEGMENT DWORD USE32 PUBLIC 'BSS'
_BSS	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCTimer@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CTimer@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?CHANNEL0_LATCH@CTimer@@0HB			; CTimer::CHANNEL0_LATCH
PUBLIC	?CHANNEL1_LATCH@CTimer@@0HB			; CTimer::CHANNEL1_LATCH
PUBLIC	?CHANNEL2_LATCH@CTimer@@0HB			; CTimer::CHANNEL2_LATCH
PUBLIC	?COMMAND_REGISTER@CTimer@@0HB			; CTimer::COMMAND_REGISTER
PUBLIC	?OSCILLATOR_FREQUENCY@CTimer@@0HB		; CTimer::OSCILLATOR_FREQUENCY
PUBLIC	?m_iTickCount@CTimer@@0KC			; CTimer::m_iTickCount
_BSS	SEGMENT
?m_iTickCount@CTimer@@0KC DD 01H DUP (?)		; CTimer::m_iTickCount
_BSS	ENDS
CONST	SEGMENT
?OSCILLATOR_FREQUENCY@CTimer@@0HB DD 01234dcH		; CTimer::OSCILLATOR_FREQUENCY
?CHANNEL0_LATCH@CTimer@@0HB DD 040H			; CTimer::CHANNEL0_LATCH
?CHANNEL1_LATCH@CTimer@@0HB DD 041H			; CTimer::CHANNEL1_LATCH
?CHANNEL2_LATCH@CTimer@@0HB DD 042H			; CTimer::CHANNEL2_LATCH
?COMMAND_REGISTER@CTimer@@0HB DD 043H			; CTimer::COMMAND_REGISTER
CONST	ENDS
PUBLIC	??0CTimer@@QAE@XZ				; CTimer::CTimer
PUBLIC	??_7CTimer@@6B@					; CTimer::`vftable'
PUBLIC	??_GCTimer@@UAEPAXI@Z				; CTimer::`scalar deleting destructor'
PUBLIC	??_ECTimer@@UAEPAXI@Z				; CTimer::`vector deleting destructor'
;	COMDAT ??_7CTimer@@6B@
; File E:\WORKSHOP\os98\ice32\Timer.cpp
CONST	SEGMENT
??_7CTimer@@6B@ DD FLAT:??_ECTimer@@UAEPAXI@Z		; CTimer::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CTimer@@QAE@XZ PROC NEAR				; CTimer::CTimer

; 38   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CTimer@@6B@ ; CTimer::`vftable'

; 39   : 	// Initialise member variables.
; 40   : 	m_iTickCount		= 0;

	mov	DWORD PTR ?m_iTickCount@CTimer@@0KC, 0	; CTimer::m_iTickCount

; 41   : 	m_iIRQ				= 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+4], 0

; 42   : 	m_pCommandRegister	= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+5], 0

; 43   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CTimer@@QAE@XZ ENDP					; CTimer::CTimer
_TEXT	ENDS
PUBLIC	??1CTimer@@UAE@XZ				; CTimer::~CTimer
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCTimer@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCTimer@@UAEPAXI@Z PROC NEAR				; CTimer::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CTimer@@UAE@XZ			; CTimer::~CTimer
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2436
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2436:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCTimer@@UAEPAXI@Z ENDP				; CTimer::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ:NEAR ; CSystem::getIOManager
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z:NEAR ; CIOManager::releasePort
_TEXT	SEGMENT
_this$ = -8
_IOManager$ = -4
??1CTimer@@UAE@XZ PROC NEAR				; CTimer::~CTimer

; 56   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CTimer@@6B@ ; CTimer::`vftable'

; 57   : 	// Get system object reference.
; 58   : 	CIOManager& IOManager = Application.getSystem().getIOManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	DWORD PTR _IOManager$[ebp], eax

; 59   : 
; 60   : 	// Release IO resources.
; 61   : 	m_pChannelLatches[0] = IOManager.releasePort( m_pChannelLatches[0] );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+9]
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+9], eax

; 62   : 	m_pChannelLatches[1] = IOManager.releasePort( m_pChannelLatches[1] );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+13]
	push	eax
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+13], eax

; 63   : 	m_pChannelLatches[2] = IOManager.releasePort( m_pChannelLatches[2] );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+17]
	push	eax
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], eax

; 64   : 	m_pCommandRegister = IOManager.releasePort( m_pCommandRegister );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+5]
	push	eax
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+5], eax

; 65   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CTimer@@UAE@XZ ENDP					; CTimer::~CTimer
_TEXT	ENDS
PUBLIC	?getIRQ@CTimer@@QBE?BEXZ			; CTimer::getIRQ
_TEXT	SEGMENT
_this$ = -4
?getIRQ@CTimer@@QBE?BEXZ PROC NEAR			; CTimer::getIRQ

; 78   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 79   : 	// Return IRQ number.
; 80   : 	return m_iIRQ;

	mov	eax, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [eax+4]

; 81   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getIRQ@CTimer@@QBE?BEXZ ENDP				; CTimer::getIRQ
_TEXT	ENDS
PUBLIC	?interruptServiceRequest@CTimer@@CAXXZ		; CTimer::interruptServiceRequest
PUBLIC	?programOscillator@CTimer@@AAEXEEG@Z		; CTimer::programOscillator
PUBLIC	?create@CTimer@@QAE_NXZ				; CTimer::create
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?getPIC@CSystem@@QAEAAVCPIC@@XZ:NEAR		; CSystem::getPIC
EXTRN	?enableInterrupts@CCPU@@QAEX_N@Z:NEAR		; CCPU::enableInterrupts
EXTRN	?getIDT@CCPU@@QAEAAVCIDT@@XZ:NEAR		; CCPU::getIDT
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z:NEAR ; CIOManager::requestPort
EXTRN	?registerHandler@CIDT@@QAEXEP6AXXZ@Z:NEAR	; CIDT::registerHandler
EXTRN	?irqToInt@CPIC@@QBE?BEE@Z:NEAR			; CPIC::irqToInt
_DATA	SEGMENT
$SG2452	DB	'Timer...', 00H
	ORG $+3
$SG2458	DB	'Ok.', 00H
$SG2460	DB	'Failed.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -24
_bSuccess$ = -8
_iTimerInterrupt$ = -12
_pSystem$ = -20
_pIOManager$ = -16
_iCount$ = -4
?create@CTimer@@QAE_NXZ PROC NEAR			; CTimer::create

; 94   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 95   : 	bool bSuccess;
; 96   : 	BYTE iTimerInterrupt;
; 97   : 	CSystem* pSystem;
; 98   : 	CIOManager* pIOManager;
; 99   : 	DWORD iCount;
; 100  : 
; 101  : 	// Prolog.
; 102  : 	cout << "Timer...";

	push	OFFSET FLAT:$SG2452
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 103  : 
; 104  : 	// Get a pointer to the system object.
; 105  : 	pSystem = &(Application.getSystem());

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	DWORD PTR _pSystem$[ebp], eax

; 106  : 	pIOManager = &(pSystem->getIOManager());

	mov	ecx, DWORD PTR _pSystem$[ebp]
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	DWORD PTR _pIOManager$[ebp], eax

; 107  : 
; 108  : 	// Hook system timer interrupt.
; 109  : 	iTimerInterrupt = pSystem->getPIC().irqToInt( m_iIRQ );

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+4]
	push	ecx
	mov	ecx, DWORD PTR _pSystem$[ebp]
	call	?getPIC@CSystem@@QAEAAVCPIC@@XZ		; CSystem::getPIC
	mov	ecx, eax
	call	?irqToInt@CPIC@@QBE?BEE@Z		; CPIC::irqToInt
	mov	BYTE PTR _iTimerInterrupt$[ebp], al

; 110  : 	pSystem->getCPU().getIDT().registerHandler( iTimerInterrupt, CTimer::interruptServiceRequest );

	push	OFFSET FLAT:?interruptServiceRequest@CTimer@@CAXXZ ; CTimer::interruptServiceRequest
	mov	dl, BYTE PTR _iTimerInterrupt$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pSystem$[ebp]
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getIDT@CCPU@@QAEAAVCIDT@@XZ		; CCPU::getIDT
	mov	ecx, eax
	call	?registerHandler@CIDT@@QAEXEP6AXXZ@Z	; CIDT::registerHandler

; 111  : 
; 112  : 	// Request timer IO resources.
; 113  : 	m_pChannelLatches[0] = pIOManager->requestPort( CHANNEL0_LATCH );

	push	64					; 00000040H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+9], eax

; 114  : 	m_pChannelLatches[1] = pIOManager->requestPort( CHANNEL1_LATCH );

	push	65					; 00000041H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+13], eax

; 115  : 	m_pChannelLatches[2] = pIOManager->requestPort( CHANNEL2_LATCH );

	push	66					; 00000042H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], eax

; 116  : 	m_pCommandRegister = pIOManager->requestPort( COMMAND_REGISTER );

	push	67					; 00000043H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+5], eax

; 117  : 
; 118  : 	// Perform one-shot interrupt probe for timer hardware.
; 119  : 	iCount = 0;

	mov	DWORD PTR _iCount$[ebp], 0

; 120  : 	pSystem->getCPU().enableInterrupts( true );

	push	1
	mov	ecx, DWORD PTR _pSystem$[ebp]
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?enableInterrupts@CCPU@@QAEX_N@Z	; CCPU::enableInterrupts

; 121  : 	programOscillator( 0, 0, 18 );

	push	18					; 00000012H
	push	0
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?programOscillator@CTimer@@AAEXEEG@Z	; CTimer::programOscillator
$L2454:

; 122  : 	while( iCount<100000000 )

	cmp	DWORD PTR _iCount$[ebp], 100000000	; 05f5e100H
	jae	SHORT $L2455

; 124  : 		// Probe tick counter looking for change.
; 125  : 		if( m_iTickCount>0 )

	cmp	DWORD PTR ?m_iTickCount@CTimer@@0KC, 0	; CTimer::m_iTickCount
	jbe	SHORT $L2456

; 126  : 			break;

	jmp	SHORT $L2455
$L2456:

; 127  : 
; 128  : 		// Increment loop counter.
; 129  : 		iCount++;

	mov	eax, DWORD PTR _iCount$[ebp]
	add	eax, 1
	mov	DWORD PTR _iCount$[ebp], eax

; 130  : 	}

	jmp	SHORT $L2454
$L2455:

; 131  : 	pSystem->getCPU().enableInterrupts( false );

	push	0
	mov	ecx, DWORD PTR _pSystem$[ebp]
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?enableInterrupts@CCPU@@QAEX_N@Z	; CCPU::enableInterrupts

; 132  : 
; 133  : 	// Program timer for normal operation if interrupt was detected.
; 134  : 	if( m_iTickCount>0 )

	cmp	DWORD PTR ?m_iTickCount@CTimer@@0KC, 0	; CTimer::m_iTickCount
	jbe	SHORT $L2457

; 136  : 		// Interrupt detected.
; 137  : 		programOscillator( 0, 3, 18 );

	push	18					; 00000012H
	push	3
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?programOscillator@CTimer@@AAEXEEG@Z	; CTimer::programOscillator

; 138  : 		cout << "Ok." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2458
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 139  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1

; 141  : 	else

	jmp	SHORT $L2459
$L2457:

; 143  : 		// Interrupt not detected.
; 144  : 		cout << "Failed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2460
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 145  : 		bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0
$L2459:

; 147  : 
; 148  : 	// Return success status.
; 149  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 150  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CTimer@@QAE_NXZ ENDP				; CTimer::create
_TEXT	ENDS
PUBLIC	?flush@@YAAAVostream@@AAV1@@Z			; flush
EXTRN	??6ostream@@QAEAAV0@D@Z:NEAR			; ostream::operator<<
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT
__outs$ = 8
?endl@@YAAAVostream@@AAV1@@Z PROC NEAR			; endl, COMDAT

; 41   : inline ostream& __cdecl endl(ostream& _outs) { return _outs << '\n' << flush; }

	push	ebp
	mov	ebp, esp
	push	OFFSET FLAT:?flush@@YAAAVostream@@AAV1@@Z ; flush
	push	10					; 0000000aH
	mov	ecx, DWORD PTR __outs$[ebp]
	call	??6ostream@@QAEAAV0@D@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
	pop	ebp
	ret	0
?endl@@YAAAVostream@@AAV1@@Z ENDP			; endl
_TEXT	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT
__outs$ = 8
?flush@@YAAAVostream@@AAV1@@Z PROC NEAR			; flush, COMDAT

; 40   : inline ostream& __cdecl flush(ostream& _outs) { return _outs.flush(); }

	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR __outs$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR __outs$[ebp]
	call	DWORD PTR [edx+24]
	pop	ebp
	ret	0
?flush@@YAAAVostream@@AAV1@@Z ENDP			; flush
_TEXT	ENDS
EXTRN	?endOfInterrupt@CPIC@@QBEXXZ:NEAR		; CPIC::endOfInterrupt
_TEXT	SEGMENT
?interruptServiceRequest@CTimer@@CAXXZ PROC NEAR	; CTimer::interruptServiceRequest

; 163  : {

	push	ebp
	mov	ebp, esp

; 164  : 	// Increment tick count.
; 165  : 	m_iTickCount++;

	mov	eax, DWORD PTR ?m_iTickCount@CTimer@@0KC ; CTimer::m_iTickCount
	add	eax, 1
	mov	DWORD PTR ?m_iTickCount@CTimer@@0KC, eax ; CTimer::m_iTickCount

; 166  : 	
; 167  : 	// End interrupt.
; 168  : 	Application.getSystem().getPIC().endOfInterrupt();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPIC@CSystem@@QAEAAVCPIC@@XZ		; CSystem::getPIC
	mov	ecx, eax
	call	?endOfInterrupt@CPIC@@QBEXXZ		; CPIC::endOfInterrupt

; 169  : }

	pop	ebp
	ret	0
?interruptServiceRequest@CTimer@@CAXXZ ENDP		; CTimer::interruptServiceRequest
_TEXT	ENDS
EXTRN	?writeByte@CIOPort@@QBEXE@Z:NEAR		; CIOPort::writeByte
_TEXT	SEGMENT
_iChannel$ = 8
_iMode$ = 12
_iFrequency$ = 16
_this$ = -12
_iDivisor$ = -4
_pSystem$ = -8
?programOscillator@CTimer@@AAEXEEG@Z PROC NEAR		; CTimer::programOscillator

; 182  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 183  : 	DWORD iDivisor;
; 184  : 	CSystem* pSystem;
; 185  : 
; 186  : 	// Initialise references.
; 187  : 	pSystem = &(Application.getSystem());

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	DWORD PTR _pSystem$[ebp], eax

; 188  : 
; 189  : 	// Validate channel and mode.
; 190  : 	if( iChannel<3 )

	mov	eax, DWORD PTR _iChannel$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 3
	jge	$L2471

; 192  : 		// Calculate divisor required for timer.
; 193  : 		iDivisor = OSCILLATOR_FREQUENCY / iFrequency;

	mov	ecx, DWORD PTR _iFrequency$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	eax, 1193180				; 001234dcH
	cdq
	idiv	ecx
	mov	DWORD PTR _iDivisor$[ebp], eax

; 194  : 		if( iDivisor>0x0000ffff )

	cmp	DWORD PTR _iDivisor$[ebp], 65535	; 0000ffffH
	jbe	SHORT $L2472

; 195  : 			iDivisor = 0x0000ffff;

	mov	DWORD PTR _iDivisor$[ebp], 65535	; 0000ffffH
$L2472:

; 196  : 
; 197  : 		// Write command byte to timer.
; 198  : 		m_pCommandRegister->writeByte( (((iChannel&0x03)<<6)|0x30|((iMode&0x07)<<1)) );

	mov	edx, DWORD PTR _iChannel$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 3
	shl	edx, 6
	or	edx, 48					; 00000030H
	mov	eax, DWORD PTR _iMode$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 7
	shl	eax, 1
	or	edx, eax
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+5]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 199  : 	
; 200  : 		// Program frequency LSB then MSB.
; 201  : 		m_pChannelLatches[iChannel]->writeByte( (BYTE)(iDivisor&0x00ff) );

	mov	edx, DWORD PTR _iDivisor$[ebp]
	and	edx, 255				; 000000ffH
	push	edx
	mov	eax, DWORD PTR _iChannel$[ebp]
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+eax*4+9]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 202  : 		m_pChannelLatches[iChannel]->writeByte( (BYTE)((iDivisor&0xff00)>>8) );

	mov	edx, DWORD PTR _iDivisor$[ebp]
	and	edx, 65280				; 0000ff00H
	shr	edx, 8
	push	edx
	mov	eax, DWORD PTR _iChannel$[ebp]
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+eax*4+9]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte
$L2471:

; 204  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?programOscillator@CTimer@@AAEXEEG@Z ENDP		; CTimer::programOscillator
_TEXT	ENDS
PUBLIC	?delayExecution@CTimer@@QBEXK@Z			; CTimer::delayExecution
_TEXT	SEGMENT
_iDelayPeriod$ = 8
_this$ = -8
_iRestartCount$ = -4
?delayExecution@CTimer@@QBEXK@Z PROC NEAR		; CTimer::delayExecution

; 217  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 218  : 	unsigned long iRestartCount;
; 219  : 
; 220  : 	// Set restart count to now plus specified delay.
; 221  : 	iRestartCount = m_iTickCount + iDelayPeriod;

	mov	eax, DWORD PTR ?m_iTickCount@CTimer@@0KC ; CTimer::m_iTickCount
	add	eax, DWORD PTR _iDelayPeriod$[ebp]
	mov	DWORD PTR _iRestartCount$[ebp], eax
$L2481:

; 222  : 	while( m_iTickCount<iRestartCount );

	mov	ecx, DWORD PTR ?m_iTickCount@CTimer@@0KC ; CTimer::m_iTickCount
	cmp	ecx, DWORD PTR _iRestartCount$[ebp]
	jae	SHORT $L2482
	jmp	SHORT $L2481
$L2482:

; 223  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?delayExecution@CTimer@@QBEXK@Z ENDP			; CTimer::delayExecution
_TEXT	ENDS
END
