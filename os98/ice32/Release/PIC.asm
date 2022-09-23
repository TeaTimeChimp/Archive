	TITLE	E:\WORKSHOP\os98\ice32\PIC.cpp
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
;	COMDAT ??_GCPIC@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CPIC@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_IRQ_BASE_1@CPIC@@0EB				; CPIC::m_IRQ_BASE_1
PUBLIC	?m_IRQ_BASE_2@CPIC@@0EB				; CPIC::m_IRQ_BASE_2
CONST	SEGMENT
?m_IRQ_BASE_1@CPIC@@0EB DB 020H				; CPIC::m_IRQ_BASE_1
?m_IRQ_BASE_2@CPIC@@0EB DB 070H				; CPIC::m_IRQ_BASE_2
CONST	ENDS
PUBLIC	??0CPIC@@QAE@XZ					; CPIC::CPIC
PUBLIC	??_7CPIC@@6B@					; CPIC::`vftable'
PUBLIC	??_GCPIC@@UAEPAXI@Z				; CPIC::`scalar deleting destructor'
PUBLIC	??_ECPIC@@UAEPAXI@Z				; CPIC::`vector deleting destructor'
;	COMDAT ??_7CPIC@@6B@
; File E:\WORKSHOP\os98\ice32\PIC.cpp
CONST	SEGMENT
??_7CPIC@@6B@ DD FLAT:??_ECPIC@@UAEPAXI@Z		; CPIC::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CPIC@@QAE@XZ PROC NEAR				; CPIC::CPIC

; 32   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CPIC@@6B@ ; CPIC::`vftable'

; 33   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CPIC@@QAE@XZ ENDP					; CPIC::CPIC
_TEXT	ENDS
PUBLIC	??1CPIC@@UAE@XZ					; CPIC::~CPIC
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCPIC@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCPIC@@UAEPAXI@Z PROC NEAR				; CPIC::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CPIC@@UAE@XZ				; CPIC::~CPIC
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
??_GCPIC@@UAEPAXI@Z ENDP				; CPIC::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ:NEAR ; CSystem::getIOManager
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z:NEAR ; CIOManager::releasePort
_TEXT	SEGMENT
_this$ = -4
??1CPIC@@UAE@XZ PROC NEAR				; CPIC::~CPIC

; 46   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CPIC@@6B@ ; CPIC::`vftable'

; 47   : 	// Release IO ports.
; 48   : 	m_pController1Lo = Application.getSystem().getIOManager().releasePort( m_pController1Lo );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	push	edx
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	ecx, eax
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+20], eax

; 49   : 	m_pController1Hi = Application.getSystem().getIOManager().releasePort( m_pController1Hi );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+24]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	ecx, eax
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+24], eax

; 50   : 	m_pController2Lo = Application.getSystem().getIOManager().releasePort( m_pController2Lo );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+28]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	ecx, eax
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+28], eax

; 51   : 	m_pController2Hi = Application.getSystem().getIOManager().releasePort( m_pController2Hi );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+32]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	ecx, eax
	call	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ; CIOManager::releasePort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+32], eax

; 52   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CPIC@@UAE@XZ ENDP					; CPIC::~CPIC
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?restart@CPIC@@AAEXPBVCIOPort@@0_NEE@Z		; CPIC::restart
PUBLIC	?create@CPIC@@QAE?BJXZ				; CPIC::create
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?writeByte@CIOPort@@QBEXE@Z:NEAR		; CIOPort::writeByte
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z:NEAR ; CIOManager::requestPort
_DATA	SEGMENT
$SG2446	DB	'Programmable interrupt controller...', 00H
	ORG $+3
$SG2453	DB	'Ok', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -16
_iIRQ$ = -8
_iIndex$ = -4
_pIOManager$ = -12
?create@CPIC@@QAE?BJXZ PROC NEAR			; CPIC::create

; 65   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 66   : 	int iIRQ;	
; 67   : 	int iIndex;
; 68   : 	CIOManager* pIOManager;
; 69   : 
; 70   : 	// Prolog.
; 71   : 	cout << "Programmable interrupt controller...";

	push	OFFSET FLAT:$SG2446
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 72   : 
; 73   : 	// Request IO resources.
; 74   : 	pIOManager = &(Application.getSystem().getIOManager());

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	DWORD PTR _pIOManager$[ebp], eax

; 75   : 	m_pController1Lo = pIOManager->requestPort( 0x20 );

	push	32					; 00000020H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+20], eax

; 76   : 	m_pController1Hi = pIOManager->requestPort( 0x21 );

	push	33					; 00000021H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+24], eax

; 77   : 	m_pController2Lo = pIOManager->requestPort( 0xa0 );

	push	160					; 000000a0H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+28], eax

; 78   : 	m_pController2Hi = pIOManager->requestPort( 0xa1 );

	push	161					; 000000a1H
	mov	ecx, DWORD PTR _pIOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+32], eax

; 79   : 
; 80   : 	// Map IRQ address ranges.
; 81   : 	iIRQ = m_IRQ_BASE_1;

	mov	DWORD PTR _iIRQ$[ebp], 32		; 00000020H

; 82   : 	for( iIndex=0 ; iIndex<8 ; iIndex++ )

	mov	DWORD PTR _iIndex$[ebp], 0
	jmp	SHORT $L2447
$L2448:
	mov	eax, DWORD PTR _iIndex$[ebp]
	add	eax, 1
	mov	DWORD PTR _iIndex$[ebp], eax
$L2447:
	cmp	DWORD PTR _iIndex$[ebp], 8
	jge	SHORT $L2449

; 83   : 		m_pIRQToInterrupt[iIndex] = iIRQ++;

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, DWORD PTR _iIndex$[ebp]
	mov	dl, BYTE PTR _iIRQ$[ebp]
	mov	BYTE PTR [ecx+4], dl
	mov	eax, DWORD PTR _iIRQ$[ebp]
	add	eax, 1
	mov	DWORD PTR _iIRQ$[ebp], eax
	jmp	SHORT $L2448
$L2449:

; 84   : 	iIRQ = m_IRQ_BASE_2;

	mov	DWORD PTR _iIRQ$[ebp], 112		; 00000070H

; 85   : 	for( iIndex=8 ; iIndex<16 ; iIndex++ )

	mov	DWORD PTR _iIndex$[ebp], 8
	jmp	SHORT $L2450
$L2451:
	mov	ecx, DWORD PTR _iIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iIndex$[ebp], ecx
$L2450:
	cmp	DWORD PTR _iIndex$[ebp], 16		; 00000010H
	jge	SHORT $L2452

; 86   : 		m_pIRQToInterrupt[iIndex] = iIRQ++;

	mov	edx, DWORD PTR _this$[ebp]
	add	edx, DWORD PTR _iIndex$[ebp]
	mov	al, BYTE PTR _iIRQ$[ebp]
	mov	BYTE PTR [edx+4], al
	mov	ecx, DWORD PTR _iIRQ$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iIRQ$[ebp], ecx
	jmp	SHORT $L2451
$L2452:

; 87   : 
; 88   : 	// Restart controllers.
; 89   : 	restart( m_pController1Lo, m_pController1Hi, true, m_pIRQToInterrupt[0], 4 );

	push	4
	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+4]
	push	eax
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+24]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?restart@CPIC@@AAEXPBVCIOPort@@0_NEE@Z	; CPIC::restart

; 90   : 	restart( m_pController2Lo, m_pController2Hi, true, m_pIRQToInterrupt[8], 2 );

	push	2
	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+12]
	push	eax
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+32]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?restart@CPIC@@AAEXPBVCIOPort@@0_NEE@Z	; CPIC::restart

; 91   : 
; 92   : 	// Enable all interrupt lines (OCW1).
; 93   : 	m_pController1Hi->writeByte( 0x00 );

	push	0
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+24]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 94   : 	m_pController2Hi->writeByte( 0x00 );

	push	0
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+32]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 95   : 
; 96   : 	// Epilog.
; 97   : 	cout << "Ok" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2453
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 98   : 
; 99   : 	// Always return success.
; 100  : 	return true;

	mov	eax, 1

; 101  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CPIC@@QAE?BJXZ ENDP				; CPIC::create
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
_TEXT	SEGMENT
_pLoPort$ = 8
_pHiPort$ = 12
_Cascade$ = 16
_BaseIRQ$ = 20
_CascadeBitmap$ = 24
_this$ = -4
?restart@CPIC@@AAEXPBVCIOPort@@0_NEE@Z PROC NEAR	; CPIC::restart

; 114  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 115  : 	// Write ICW1.
; 116  : 	if( Cascade==true )

	mov	eax, DWORD PTR _Cascade$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2462

; 118  : 		// More than one controller.
; 119  : 		pLoPort->writeByte( 0x11 );

	push	17					; 00000011H
	mov	ecx, DWORD PTR _pLoPort$[ebp]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 121  : 	else

	jmp	SHORT $L2463
$L2462:

; 123  : 		// Single controller.
; 124  : 		pLoPort->writeByte( 0x13 );

	push	19					; 00000013H
	mov	ecx, DWORD PTR _pLoPort$[ebp]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte
$L2463:

; 126  : 
; 127  : 	// Write ICW2(5 MSBs of interrupt type).
; 128  : 	pHiPort->writeByte( BaseIRQ&0xf8 );

	mov	ecx, DWORD PTR _BaseIRQ$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 248				; 000000f8H
	push	ecx
	mov	ecx, DWORD PTR _pHiPort$[ebp]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 129  : 
; 130  : 	// Write ICW3.
; 131  : 	pHiPort->writeByte( CascadeBitmap );

	mov	dl, BYTE PTR _CascadeBitmap$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pHiPort$[ebp]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 132  : 
; 133  : 	// Write ICW4(Not fully nested, Nonbuffered, Master/Slave not relevant, Normal EOI, 8086).
; 134  : 	pHiPort->writeByte( 0x01 );

	push	1
	mov	ecx, DWORD PTR _pHiPort$[ebp]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 135  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?restart@CPIC@@AAEXPBVCIOPort@@0_NEE@Z ENDP		; CPIC::restart
_TEXT	ENDS
PUBLIC	?irqToInt@CPIC@@QBE?BEE@Z			; CPIC::irqToInt
_TEXT	SEGMENT
_iIRQ$ = 8
_this$ = -8
_iInterrupt$ = -4
?irqToInt@CPIC@@QBE?BEE@Z PROC NEAR			; CPIC::irqToInt

; 148  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 149  : 	BYTE iInterrupt;
; 150  : 
; 151  : 	// Assume failure.
; 152  : 	iInterrupt = 0;

	mov	BYTE PTR _iInterrupt$[ebp], 0

; 153  : 
; 154  : 	// Lookup interrupt from IRQ number.
; 155  : 	if( iIRQ<16 )

	mov	eax, DWORD PTR _iIRQ$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 16					; 00000010H
	jge	SHORT $L2469

; 156  : 		iInterrupt = m_pIRQToInterrupt[iIRQ];

	mov	ecx, DWORD PTR _iIRQ$[ebp]
	and	ecx, 255				; 000000ffH
	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+ecx+4]
	mov	BYTE PTR _iInterrupt$[ebp], al
$L2469:

; 157  : 
; 158  : 	// Return interrupt number.
; 159  : 	return iInterrupt;

	mov	al, BYTE PTR _iInterrupt$[ebp]

; 160  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?irqToInt@CPIC@@QBE?BEE@Z ENDP				; CPIC::irqToInt
_TEXT	ENDS
PUBLIC	?endOfInterrupt@CPIC@@QBEXXZ			; CPIC::endOfInterrupt
_TEXT	SEGMENT
_this$ = -4
?endOfInterrupt@CPIC@@QBEXXZ PROC NEAR			; CPIC::endOfInterrupt

; 173  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 174  : 	// Signal end of interrupt processing.
; 175  : 	m_pController1Lo->writeByte( 0x20 );

	push	32					; 00000020H
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 176  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?endOfInterrupt@CPIC@@QBEXXZ ENDP			; CPIC::endOfInterrupt
_TEXT	ENDS
END
