	TITLE	E:\WORKSHOP\os98\ice32\DMAChannel.cpp
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
;	COMDAT ??_GCDMAChannel@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CDMAChannel@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDMAChannel@@0QBDB		; CDMAChannel::m_pClassName
CONST	SEGMENT
?m_pClassName@CDMAChannel@@0QBDB DB 'DMAChannel::', 00H	; CDMAChannel::m_pClassName
CONST	ENDS
PUBLIC	??0CDMAChannel@@QAE@XZ				; CDMAChannel::CDMAChannel
PUBLIC	??_7CDMAChannel@@6B@				; CDMAChannel::`vftable'
PUBLIC	??_GCDMAChannel@@UAEPAXI@Z			; CDMAChannel::`scalar deleting destructor'
PUBLIC	??_ECDMAChannel@@UAEPAXI@Z			; CDMAChannel::`vector deleting destructor'
;	COMDAT ??_7CDMAChannel@@6B@
; File E:\WORKSHOP\os98\ice32\DMAChannel.cpp
CONST	SEGMENT
??_7CDMAChannel@@6B@ DD FLAT:??_ECDMAChannel@@UAEPAXI@Z	; CDMAChannel::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CDMAChannel@@QAE@XZ PROC NEAR			; CDMAChannel::CDMAChannel

; 20   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAChannel@@6B@ ; CDMAChannel::`vftable'

; 21   : 	m_bDebug					= false;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+4], 0

; 22   : 	m_iNumber					= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+9], 0

; 23   : 	m_pAddressRegister			= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+10], 0

; 24   : 	m_pCountRegister			= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+14], 0

; 25   : 	m_pPageRegister				= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+18], 0

; 26   : 	m_pController				= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+5], 0

; 27   : 	m_iTransferAreaStartPage	= 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+22], 0

; 28   : 	m_iTransferAreaPageCount	= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+26], 0

; 29   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CDMAChannel@@QAE@XZ ENDP				; CDMAChannel::CDMAChannel
_TEXT	ENDS
PUBLIC	??1CDMAChannel@@UAE@XZ				; CDMAChannel::~CDMAChannel
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCDMAChannel@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCDMAChannel@@UAEPAXI@Z PROC NEAR			; CDMAChannel::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDMAChannel@@UAE@XZ			; CDMAChannel::~CDMAChannel
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2431
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2431:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCDMAChannel@@UAEPAXI@Z ENDP				; CDMAChannel::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CDMAChannel@@UAE@XZ PROC NEAR			; CDMAChannel::~CDMAChannel

; 33   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAChannel@@6B@ ; CDMAChannel::`vftable'

; 34   : 
; 35   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CDMAChannel@@UAE@XZ ENDP				; CDMAChannel::~CDMAChannel
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?create@CDMAChannel@@QAEKPAVCDMAController@@EPBVCIOPort@@11@Z ; CDMAChannel::create
PUBLIC	?getNumber@CDMAChannel@@QBEEXZ			; CDMAChannel::getNumber
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?getAddress@CIOPort@@QBE?BGXZ:NEAR		; CIOPort::getAddress
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2444	DB	'create() - ', 00H
$SG2446	DB	'-----------------------------', 00H
	ORG $+2
$SG2447	DB	'Channel number   : 0x', 00H
	ORG $+2
$SG2448	DB	'Address register : 0x', 00H
	ORG $+2
$SG2449	DB	'Page register    : 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pController$ = 8
_iChannelNumber$ = 12
_pAddressRegister$ = 16
_pCountRegister$ = 20
_pPageRegister$ = 24
_this$ = -20
_pFunctionName$ = -12
_iDelay$2450 = -16
?create@CDMAChannel@@QAEKPAVCDMAController@@EPBVCIOPort@@11@Z PROC NEAR ; CDMAChannel::create

; 48   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 49   : 	const char pFunctionName[] = "create() - ";

	mov	eax, DWORD PTR $SG2444
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2444+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2444+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx

; 50   : 
; 51   : 	// Initialise object state.
; 52   : 	m_iNumber					= iChannelNumber;	

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _iChannelNumber$[ebp]
	mov	BYTE PTR [eax+9], cl

; 53   : 	m_pController				= pController;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pController$[ebp]
	mov	DWORD PTR [edx+5], eax

; 54   : 	m_pAddressRegister			= pAddressRegister;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pAddressRegister$[ebp]
	mov	DWORD PTR [ecx+10], edx

; 55   : 	m_pCountRegister			= pCountRegister;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pCountRegister$[ebp]
	mov	DWORD PTR [eax+14], ecx

; 56   : 	m_pPageRegister				= pPageRegister;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pPageRegister$[ebp]
	mov	DWORD PTR [edx+18], eax

; 57   : 	m_iTransferAreaStartPage	= 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+22], 0

; 58   : 	m_iTransferAreaPageCount	= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+26], 0

; 59   : 
; 60   : 	if( m_bDebug )

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	$L2453

; 62   : 		cout << m_pClassName << pFunctionName << "-----------------------------" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2446
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 63   : 		cout << m_pClassName << pFunctionName << "Channel number   : 0x" << getNumber() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	push	eax
	push	OFFSET FLAT:$SG2447
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 64   : 		cout << m_pClassName << pFunctionName << "Address register : 0x" << m_pAddressRegister->getAddress() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+10]
	call	?getAddress@CIOPort@@QBE?BGXZ		; CIOPort::getAddress
	push	eax
	push	OFFSET FLAT:$SG2448
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 65   : 		cout << m_pClassName << pFunctionName << "Page register    : 0x" << m_pPageRegister->getAddress() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	call	?getAddress@CIOPort@@QBE?BGXZ		; CIOPort::getAddress
	push	eax
	push	OFFSET FLAT:$SG2449
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 66   : 		for( DWORD iDelay=0 ; iDelay<200000 ; iDelay++ );

	mov	DWORD PTR _iDelay$2450[ebp], 0
	jmp	SHORT $L2451
$L2452:
	mov	edx, DWORD PTR _iDelay$2450[ebp]
	add	edx, 1
	mov	DWORD PTR _iDelay$2450[ebp], edx
$L2451:
	cmp	DWORD PTR _iDelay$2450[ebp], 200000	; 00030d40H
	jae	SHORT $L2453
	jmp	SHORT $L2452
$L2453:

; 68   : 
; 69   : 	// Always return no error(for now).
; 70   : 	return 0;

	xor	eax, eax

; 71   : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?create@CDMAChannel@@QAEKPAVCDMAController@@EPBVCIOPort@@11@Z ENDP ; CDMAChannel::create
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
_this$ = -4
?getNumber@CDMAChannel@@QBEEXZ PROC NEAR		; CDMAChannel::getNumber

; 84   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 85   : 	// Return channel number.
; 86   : 	return m_iNumber;

	mov	eax, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [eax+9]

; 87   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getNumber@CDMAChannel@@QBEEXZ ENDP			; CDMAChannel::getNumber
_TEXT	ENDS
PUBLIC	?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ	; CDMAChannel::getTransferAreaPointer
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
_DATA	SEGMENT
	ORG $+2
$SG2461	DB	'getTransferAreaPointer() - ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -32
_pFunctionName$ = -28
?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ PROC NEAR	; CDMAChannel::getTransferAreaPointer

; 100  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 101  : 	const char pFunctionName[] = "getTransferAreaPointer() - ";

	mov	ecx, 7
	mov	esi, OFFSET FLAT:$SG2461
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd

; 102  : 	
; 103  : 	// Return DMA transfer area address.
; 104  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << (m_iTransferAreaStartPage<<12) << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2462
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+22]
	shl	eax, 12					; 0000000cH
	push	eax
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2462:

; 105  : 	return (void*)(m_iTransferAreaStartPage<<12);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+22]
	shl	eax, 12					; 0000000cH

; 106  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ ENDP	; CDMAChannel::getTransferAreaPointer
_TEXT	ENDS
PUBLIC	?getTransferAreaSize@CDMAChannel@@QBEKXZ	; CDMAChannel::getTransferAreaSize
EXTRN	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ:NEAR ; CSystem::getPhysicalMemoryManager
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?getBytesPerPage@CPhysicalMemoryManager@@QBEKXZ:NEAR ; CPhysicalMemoryManager::getBytesPerPage
_TEXT	SEGMENT
_this$ = -4
?getTransferAreaSize@CDMAChannel@@QBEKXZ PROC NEAR	; CDMAChannel::getTransferAreaSize

; 119  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 120  : 	// Return number of byte in the transfer area.
; 121  : 	return Application.getSystem().getPhysicalMemoryManager().getBytesPerPage() * m_iTransferAreaPageCount;

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
	mov	ecx, eax
	call	?getBytesPerPage@CPhysicalMemoryManager@@QBEKXZ ; CPhysicalMemoryManager::getBytesPerPage
	mov	ecx, DWORD PTR _this$[ebp]
	imul	eax, DWORD PTR [ecx+26]

; 122  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getTransferAreaSize@CDMAChannel@@QBEKXZ ENDP		; CDMAChannel::getTransferAreaSize
_TEXT	ENDS
PUBLIC	?setDebug@CDMAChannel@@QAEX_N@Z			; CDMAChannel::setDebug
_TEXT	SEGMENT
_bDebug$ = 8
_this$ = -4
?setDebug@CDMAChannel@@QAEX_N@Z PROC NEAR		; CDMAChannel::setDebug

; 135  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 136  : 	// Set debug status.
; 137  : 	m_bDebug = bDebug;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _bDebug$[ebp]
	mov	BYTE PTR [eax+4], cl

; 138  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDebug@CDMAChannel@@QAEX_N@Z ENDP			; CDMAChannel::setDebug
_TEXT	ENDS
PUBLIC	?setTransferAreaStartPage@CDMAChannel@@AAEXK@Z	; CDMAChannel::setTransferAreaStartPage
EXTRN	?writeByte@CIOPort@@QBEXE@Z:NEAR		; CIOPort::writeByte
EXTRN	?clearFlipFlop@CDMAController@@ABEXXZ:NEAR	; CDMAController::clearFlipFlop
_TEXT	SEGMENT
_iStartPage$ = 8
_this$ = -8
_pAddress$ = -4
?setTransferAreaStartPage@CDMAChannel@@AAEXK@Z PROC NEAR ; CDMAChannel::setTransferAreaStartPage

; 151  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 152  : 	void* pAddress;
; 153  : 
; 154  : 	// Convert page to address.
; 155  : 	pAddress = (void*)(iStartPage<<12);

	mov	eax, DWORD PTR _iStartPage$[ebp]
	shl	eax, 12					; 0000000cH
	mov	DWORD PTR _pAddress$[ebp], eax

; 156  : 	m_iTransferAreaStartPage = iStartPage;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _iStartPage$[ebp]
	mov	DWORD PTR [ecx+22], edx

; 157  : 
; 158  : 	// Prepare for LSB-MSB write.
; 159  : 	m_pController->clearFlipFlop();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+5]
	call	?clearFlipFlop@CDMAController@@ABEXXZ	; CDMAController::clearFlipFlop

; 160  : 
; 161  : 	// Write 16-bit of address LSB then MSB.
; 162  : 	m_pAddressRegister->writeByte( (BYTE)( (DWORD)pAddress&0x000000ff) );

	mov	ecx, DWORD PTR _pAddress$[ebp]
	and	ecx, 255				; 000000ffH
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+10]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 163  : 	m_pAddressRegister->writeByte( (BYTE)(((DWORD)pAddress&0x0000ff00)>>8) );

	mov	eax, DWORD PTR _pAddress$[ebp]
	and	eax, 65280				; 0000ff00H
	shr	eax, 8
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+10]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 164  : 
; 165  : 	// Write upper 4-bits of address to page register.
; 166  : 	m_pPageRegister->writeByte( (BYTE)(((DWORD)pAddress&0x000f0000)>>16) );

	mov	edx, DWORD PTR _pAddress$[ebp]
	and	edx, 983040				; 000f0000H
	shr	edx, 16					; 00000010H
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 167  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setTransferAreaStartPage@CDMAChannel@@AAEXK@Z ENDP	; CDMAChannel::setTransferAreaStartPage
_TEXT	ENDS
PUBLIC	?setTransferAreaSize@CDMAChannel@@QAEKK@Z	; CDMAChannel::setTransferAreaSize
EXTRN	?allocatePagesFromBaseMemory@CPhysicalMemoryManager@@QAEKK@Z:NEAR ; CPhysicalMemoryManager::allocatePagesFromBaseMemory
EXTRN	?freePages@CPhysicalMemoryManager@@QAEXKK@Z:NEAR ; CPhysicalMemoryManager::freePages
_DATA	SEGMENT
$SG2489	DB	'setTransferAreaSize() - ', 00H
	ORG $+3
$SG2493	DB	'Channel ', 00H
	ORG $+3
$SG2494	DB	', Pages required ', 00H
	ORG $+2
$SG2495	DB	'.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iRequiredSize$ = 8
_this$ = -40
_iPagesRequired$ = -32
_pFunctionName$ = -28
_PMM$ = -36
?setTransferAreaSize@CDMAChannel@@QAEKK@Z PROC NEAR	; CDMAChannel::setTransferAreaSize

; 182  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 183  : 	DWORD iPagesRequired;
; 184  : 	const char pFunctionName[] = "setTransferAreaSize() - ";

	mov	ecx, 6
	mov	esi, OFFSET FLAT:$SG2489
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsb

; 185  : 
; 186  : 	// Reference physical memory manager.
; 187  : 	CPhysicalMemoryManager& PMM = Application.getSystem().getPhysicalMemoryManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
	mov	DWORD PTR _PMM$[ebp], eax

; 188  : 
; 189  : 	// Convert the number of bytes required to pages.
; 190  : 	iPagesRequired = iRequiredSize>>12;

	mov	eax, DWORD PTR _iRequiredSize$[ebp]
	shr	eax, 12					; 0000000cH
	mov	DWORD PTR _iPagesRequired$[ebp], eax

; 191  : 	if( (iPagesRequired<<12)<iRequiredSize )

	mov	ecx, DWORD PTR _iPagesRequired$[ebp]
	shl	ecx, 12					; 0000000cH
	cmp	ecx, DWORD PTR _iRequiredSize$[ebp]
	jae	SHORT $L2491

; 192  : 		iPagesRequired++;

	mov	edx, DWORD PTR _iPagesRequired$[ebp]
	add	edx, 1
	mov	DWORD PTR _iPagesRequired$[ebp], edx
$L2491:

; 193  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Channel " << getNumber() << ", Pages required " << iPagesRequired << "." << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2492
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2495
	mov	edx, DWORD PTR _iPagesRequired$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2494
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	push	eax
	push	OFFSET FLAT:$SG2493
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDMAChannel@@0QBDB ; CDMAChannel::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2492:

; 194  : 
; 195  : 	// Check for exiting transfer area size against required size.
; 196  : 	if( getTransferAreaSize()<iRequiredSize )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getTransferAreaSize@CDMAChannel@@QBEKXZ ; CDMAChannel::getTransferAreaSize
	cmp	eax, DWORD PTR _iRequiredSize$[ebp]
	jae	SHORT $L2496

; 198  : 		// Reallocate transfer area.
; 199  : 		PMM.freePages( m_iTransferAreaStartPage, m_iTransferAreaPageCount );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+26]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+22]
	push	ecx
	mov	ecx, DWORD PTR _PMM$[ebp]
	call	?freePages@CPhysicalMemoryManager@@QAEXKK@Z ; CPhysicalMemoryManager::freePages

; 200  : 		setTransferAreaStartPage( PMM.allocatePagesFromBaseMemory(iPagesRequired) );

	mov	edx, DWORD PTR _iPagesRequired$[ebp]
	push	edx
	mov	ecx, DWORD PTR _PMM$[ebp]
	call	?allocatePagesFromBaseMemory@CPhysicalMemoryManager@@QAEKK@Z ; CPhysicalMemoryManager::allocatePagesFromBaseMemory
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setTransferAreaStartPage@CDMAChannel@@AAEXK@Z ; CDMAChannel::setTransferAreaStartPage
$L2496:

; 202  : 
; 203  : 	// Return actual size of transfer area allocated.
; 204  : 	return getTransferAreaSize();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getTransferAreaSize@CDMAChannel@@QBEKXZ ; CDMAChannel::getTransferAreaSize

; 205  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?setTransferAreaSize@CDMAChannel@@QAEKK@Z ENDP		; CDMAChannel::setTransferAreaSize
_TEXT	ENDS
PUBLIC	?setWordCount@CDMAChannel@@AAEXG@Z		; CDMAChannel::setWordCount
_TEXT	SEGMENT
_iCount$ = 8
_this$ = -4
?setWordCount@CDMAChannel@@AAEXG@Z PROC NEAR		; CDMAChannel::setWordCount

; 218  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 219  : 	// Prepare LSB-MSB write.
; 220  : 	m_pController->clearFlipFlop();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+5]
	call	?clearFlipFlop@CDMAController@@ABEXXZ	; CDMAController::clearFlipFlop

; 221  : 
; 222  : 	// Write LSB then MSB of count.
; 223  : 	m_pCountRegister->writeByte( (BYTE)(iCount&0x00ff) );

	mov	ecx, DWORD PTR _iCount$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 255				; 000000ffH
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+14]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 224  : 	m_pCountRegister->writeByte( (BYTE)((iCount&0xff00)>>8) );

	mov	eax, DWORD PTR _iCount$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 65280				; 0000ff00H
	sar	eax, 8
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+14]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 225  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setWordCount@CDMAChannel@@AAEXG@Z ENDP			; CDMAChannel::setWordCount
_TEXT	ENDS
PUBLIC	?transfer@CDMAChannel@@QAEXKW4EDMAType@@W4EDMADirection@@@Z ; CDMAChannel::transfer
EXTRN	?setMode@CDMAController@@ABEXPAVCDMAChannel@@W4EDMAType@@W4EDMADirection@@@Z:NEAR ; CDMAController::setMode
_TEXT	SEGMENT
_iCount$ = 8
_eType$ = 12
_eDirection$ = 16
_this$ = -4
?transfer@CDMAChannel@@QAEXKW4EDMAType@@W4EDMADirection@@@Z PROC NEAR ; CDMAChannel::transfer

; 238  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 239  : 	setWordCount( (WORD)iCount );

	mov	ax, WORD PTR _iCount$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setWordCount@CDMAChannel@@AAEXG@Z	; CDMAChannel::setWordCount

; 240  : 	m_pController->setMode( this, eType, eDirection );

	mov	ecx, DWORD PTR _eDirection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _eType$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+5]
	call	?setMode@CDMAController@@ABEXPAVCDMAChannel@@W4EDMAType@@W4EDMADirection@@@Z ; CDMAController::setMode

; 241  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?transfer@CDMAChannel@@QAEXKW4EDMAType@@W4EDMADirection@@@Z ENDP ; CDMAChannel::transfer
_TEXT	ENDS
END
