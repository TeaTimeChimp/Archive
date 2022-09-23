	TITLE	E:\WORKSHOP\os98\ice32\DMAController.cpp
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
;	COMDAT ??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCDMAController@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCDMAChannel@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCDMAChannel@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCursor@PAVCDMAChannel@@@@QAE@AAV?$TCollection@PAVCDMAChannel@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PAVCDMAChannel@@@@QAEQAVCDMAChannel@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?more@?$TCursor@PAVCDMAChannel@@@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCDMAChannel@@@@QAEQAVCDMAChannel@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCDMAChannel@@@@QBEPAVCDMAChannel@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCDMAChannel@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCDMAChannel@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCDMAChannel@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCDMAChannel@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCDMAChannel@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CDMAController@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDMAChannel@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDMAChannel@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDMAController@@0QBDB		; CDMAController::m_pClassName
PUBLIC	?m_bDebug@CDMAController@@0_NB			; CDMAController::m_bDebug
PUBLIC	?m_bDebugIO@CDMAController@@0_NB		; CDMAController::m_bDebugIO
PUBLIC	?m_iAddressPortOffset@CDMAController@@0GB	; CDMAController::m_iAddressPortOffset
PUBLIC	?m_iWordCountPortOffset@CDMAController@@0GB	; CDMAController::m_iWordCountPortOffset
PUBLIC	?m_iStatusPortOffset@CDMAController@@0GB	; CDMAController::m_iStatusPortOffset
PUBLIC	?m_iRequestPortOffset@CDMAController@@0GB	; CDMAController::m_iRequestPortOffset
PUBLIC	?m_iSingleMaskBitPortOffset@CDMAController@@0GB	; CDMAController::m_iSingleMaskBitPortOffset
PUBLIC	?m_iModePortOffset@CDMAController@@0GB		; CDMAController::m_iModePortOffset
PUBLIC	?m_iClearFlipFlopPortOffset@CDMAController@@0GB	; CDMAController::m_iClearFlipFlopPortOffset
PUBLIC	?m_iMasterClearPortOffset@CDMAController@@0GB	; CDMAController::m_iMasterClearPortOffset
PUBLIC	?m_iClearMaskPortOffset@CDMAController@@0GB	; CDMAController::m_iClearMaskPortOffset
PUBLIC	?m_iWriteAllMaskBitsPortOffset@CDMAController@@0GB ; CDMAController::m_iWriteAllMaskBitsPortOffset
CONST	SEGMENT
?m_pClassName@CDMAController@@0QBDB DB 'DMAController::', 00H ; CDMAController::m_pClassName
?m_bDebug@CDMAController@@0_NB DB 00H			; CDMAController::m_bDebug
?m_bDebugIO@CDMAController@@0_NB DB 00H			; CDMAController::m_bDebugIO
?m_iAddressPortOffset@CDMAController@@0GB DW 00H	; CDMAController::m_iAddressPortOffset
?m_iWordCountPortOffset@CDMAController@@0GB DW 01H	; CDMAController::m_iWordCountPortOffset
?m_iModePortOffset@CDMAController@@0GB DW 0bH		; CDMAController::m_iModePortOffset
?m_iClearFlipFlopPortOffset@CDMAController@@0GB DW 0cH	; CDMAController::m_iClearFlipFlopPortOffset
?m_iStatusPortOffset@CDMAController@@0GB DW 010H	; CDMAController::m_iStatusPortOffset
?m_iRequestPortOffset@CDMAController@@0GB DW 012H	; CDMAController::m_iRequestPortOffset
?m_iSingleMaskBitPortOffset@CDMAController@@0GB DW 014H	; CDMAController::m_iSingleMaskBitPortOffset
?m_iMasterClearPortOffset@CDMAController@@0GB DW 01aH	; CDMAController::m_iMasterClearPortOffset
?m_iClearMaskPortOffset@CDMAController@@0GB DW 01cH	; CDMAController::m_iClearMaskPortOffset
?m_iWriteAllMaskBitsPortOffset@CDMAController@@0GB DW 01eH ; CDMAController::m_iWriteAllMaskBitsPortOffset
CONST	ENDS
PUBLIC	??0CDMAController@@QAE@XZ			; CDMAController::CDMAController
PUBLIC	??_7CDMAController@@6B@				; CDMAController::`vftable'
PUBLIC	??_GCDMAController@@UAEPAXI@Z			; CDMAController::`scalar deleting destructor'
PUBLIC	??_ECDMAController@@UAEPAXI@Z			; CDMAController::`vector deleting destructor'
;	COMDAT ??_7CDMAController@@6B@
; File E:\WORKSHOP\os98\ice32\DMAController.cpp
CONST	SEGMENT
??_7CDMAController@@6B@ DD FLAT:??_ECDMAController@@UAEPAXI@Z ; CDMAController::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CDMAController@@QAE@XZ PROC NEAR			; CDMAController::CDMAController

; 42   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAController@@6B@ ; CDMAController::`vftable'

; 43   : 	// Initialise object state.
; 44   : 	m_pChannels = NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+57], 0

; 45   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CDMAController@@QAE@XZ ENDP				; CDMAController::CDMAController
_TEXT	ENDS
PUBLIC	??1CDMAController@@UAE@XZ			; CDMAController::~CDMAController
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCDMAController@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCDMAController@@UAEPAXI@Z PROC NEAR			; CDMAController::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDMAController@@UAE@XZ		; CDMAController::~CDMAController
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2467
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2467:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCDMAController@@UAEPAXI@Z ENDP			; CDMAController::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CDMAController@@UAE@XZ PROC NEAR			; CDMAController::~CDMAController

; 58   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAController@@6B@ ; CDMAController::`vftable'

; 59   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CDMAController@@UAE@XZ ENDP				; CDMAController::~CDMAController
_TEXT	ENDS
PUBLIC	?clearFlipFlop@CDMAController@@ABEXXZ		; CDMAController::clearFlipFlop
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	?getAddress@CIOPort@@QBE?BGXZ:NEAR		; CIOPort::getAddress
EXTRN	?writeByte@CIOPort@@QBEXE@Z:NEAR		; CIOPort::writeByte
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2475	DB	'clearFlipFlop() - Port 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?clearFlipFlop@CDMAController@@ABEXXZ PROC NEAR		; CDMAController::clearFlipFlop

; 72   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 73   : 	// Write any byte to flip-flip port.
; 74   : 	if(m_bDebugIO) cout << m_pClassName << "clearFlipFlop() - Port 0x" << m_pClearFlipFlopPort->getAddress() << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2474
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+6]
	call	?getAddress@CIOPort@@QBE?BGXZ		; CIOPort::getAddress
	push	eax
	push	OFFSET FLAT:$SG2475
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2474:

; 75   : 	m_pClearFlipFlopPort->writeByte( 0x00 );

	push	0
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+6]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 76   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?clearFlipFlop@CDMAController@@ABEXXZ ENDP		; CDMAController::clearFlipFlop
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
PUBLIC	?create@CDMAController@@QAE_NHGQAGEE@Z		; CDMAController::create
PUBLIC	??_7?$TCollection@PAVCDMAChannel@@@@6B@		; TCollection<CDMAChannel *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z	; TCollection<CDMAChannel *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z	; TCollection<CDMAChannel *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ	; TList<CDMAChannel *>::count
PUBLIC	?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ ; TList<CDMAChannel *>::first
PUBLIC	?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ ; TList<CDMAChannel *>::last
PUBLIC	??_7?$TList@PAVCDMAChannel@@@@6B@		; TList<CDMAChannel *>::`vftable'
PUBLIC	??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z		; TList<CDMAChannel *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCDMAChannel@@@@UAEPAXI@Z		; TList<CDMAChannel *>::`vector deleting destructor'
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??0CDMAChannel@@QAE@XZ:NEAR			; CDMAChannel::CDMAChannel
EXTRN	?create@CDMAChannel@@QAEKPAVCDMAController@@EPBVCIOPort@@11@Z:NEAR ; CDMAChannel::create
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z:NEAR ; CIOManager::requestPort
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ:NEAR ; CSystem::getIOManager
;	COMDAT ??_7?$TList@PAVCDMAChannel@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.h
CONST	SEGMENT
??_7?$TList@PAVCDMAChannel@@@@6B@ DD FLAT:??_E?$TList@PAVCDMAChannel@@@@UAEPAXI@Z ; TList<CDMAChannel *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
	DD	FLAT:?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDMAChannel@@@@6B@
CONST	SEGMENT
??_7?$TCollection@PAVCDMAChannel@@@@6B@ DD FLAT:??_E?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z ; TCollection<CDMAChannel *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_DATA	SEGMENT
	ORG $+2
$SG2490	DB	'create - ', 00H
	ORG $+2
$SG2573	DB	'create() - Failed to create channel ', 00H
	ORG $+3
$SG2574	DB	' error ', 00H
$SG2575	DB	'.', 00H
	ORG $+2
$SG2577	DB	'Request ClearMask port', 00H
	ORG $+1
$SG2579	DB	'Request WriteAllMaskBits port', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iControllerID$ = 8
_iBasePort$ = 12
_pPagePortMap$ = 16
_iChannelBase$ = 20
_iChannelCount$ = 24
_this$ = -68
_bSuccess$ = -28
_iPort$ = -24
_iChannel$ = -36
_pChannel$ = -8
_iChannelError$ = -4
_pFunctionName$ = -20
_IOManager$ = -32
$T2843 = -40
$T2846 = -44
$T2870 = -56
$T2874 = -60
_pLink$2876 = -48
$T2881 = -52
$T2892 = -64
?create@CDMAController@@QAE_NHGQAGEE@Z PROC NEAR	; CDMAController::create

; 89   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	mov	DWORD PTR _this$[ebp], ecx

; 90   : 	bool bSuccess;
; 91   : 	WORD iPort;
; 92   : 	BYTE iChannel;
; 93   : 	CDMAChannel* pChannel;
; 94   : 	DWORD iChannelError;
; 95   : 	const char pFunctionName[] = "create - ";

	mov	eax, DWORD PTR $SG2490
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2490+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	dx, WORD PTR $SG2490+8
	mov	WORD PTR _pFunctionName$[ebp+8], dx

; 96   : 
; 97   : 	// Assume failure.
; 98   : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 99   : 
; 100  : 	// Store controller attributes.
; 101  : 	m_iID = iControllerID;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _iControllerID$[ebp]
	mov	DWORD PTR [eax+20], ecx

; 102  : 	m_iBasePort = iBasePort;

	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR _iBasePort$[ebp]
	mov	WORD PTR [edx+4], ax

; 103  : 	m_iChannelBase = iChannelBase;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR _iChannelBase$[ebp]
	mov	BYTE PTR [ecx+18], dl

; 104  : 	m_iChannelCount = iChannelCount;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _iChannelCount$[ebp]
	mov	BYTE PTR [eax+19], cl

; 105  : 
; 106  : 	// Reference IO manager.
; 107  : 	CIOManager& IOManager = Application.getSystem().getIOManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	DWORD PTR _IOManager$[ebp], eax

; 108  : 
; 109  : 	// Allocate channel collection.
; 110  : 	m_pChannels = new TList<CDMAChannel*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2843[ebp], eax
	cmp	DWORD PTR $T2843[ebp], 0
	je	SHORT $L2844
	mov	edx, DWORD PTR $T2843[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7?$TCollection@PAVCDMAChannel@@@@6B@ ; TCollection<CDMAChannel *>::`vftable'
	mov	eax, DWORD PTR $T2843[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCDMAChannel@@@@6B@ ; TList<CDMAChannel *>::`vftable'
	mov	ecx, DWORD PTR $T2843[ebp]
	mov	DWORD PTR [ecx+8], 0
	mov	edx, DWORD PTR $T2843[ebp]
	mov	DWORD PTR [edx+12], 0
	mov	eax, DWORD PTR $T2843[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T2843[ebp]
	mov	DWORD PTR -72+[ebp], ecx
	jmp	SHORT $L2845
$L2844:
	mov	DWORD PTR -72+[ebp], 0
$L2845:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR -72+[ebp]
	mov	DWORD PTR [edx+57], eax

; 111  : 	if( m_pChannels!=NULL )

	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+57], 0
	je	$L2565

; 113  : 		// Request start address ports.
; 114  : 		for( iChannel=iChannelBase, iPort=iBasePort ; iChannel<iChannelBase+iChannelCount ; iChannel++, iPort+=2 )

	mov	dl, BYTE PTR _iChannelBase$[ebp]
	mov	BYTE PTR _iChannel$[ebp], dl
	mov	ax, WORD PTR _iBasePort$[ebp]
	mov	WORD PTR _iPort$[ebp], ax
	jmp	SHORT $L2566
$L2567:
	mov	cl, BYTE PTR _iChannel$[ebp]
	add	cl, 1
	mov	BYTE PTR _iChannel$[ebp], cl
	mov	dx, WORD PTR _iPort$[ebp]
	add	dx, 2
	mov	WORD PTR _iPort$[ebp], dx
$L2566:
	mov	eax, DWORD PTR _iChannel$[ebp]
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _iChannelBase$[ebp]
	and	ecx, 255				; 000000ffH
	mov	edx, DWORD PTR _iChannelCount$[ebp]
	and	edx, 255				; 000000ffH
	add	ecx, edx
	cmp	eax, ecx
	jge	$L2568

; 116  : 			// Create new channel object.
; 117  : 			pChannel = new CDMAChannel();

	push	30					; 0000001eH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2846[ebp], eax
	cmp	DWORD PTR $T2846[ebp], 0
	je	SHORT $L2847
	mov	ecx, DWORD PTR $T2846[ebp]
	call	??0CDMAChannel@@QAE@XZ			; CDMAChannel::CDMAChannel
	mov	DWORD PTR -76+[ebp], eax
	jmp	SHORT $L2848
$L2847:
	mov	DWORD PTR -76+[ebp], 0
$L2848:
	mov	eax, DWORD PTR -76+[ebp]
	mov	DWORD PTR _pChannel$[ebp], eax

; 118  : 			iChannelError = pChannel->create( this, iChannel, 
; 119  : 								IOManager.requestPort(iPort+m_iAddressPortOffset),
; 120  : 								IOManager.requestPort(iPort+m_iWordCountPortOffset),
; 121  : 								IOManager.requestPort(pPagePortMap[iChannel]) );

	mov	ecx, DWORD PTR _iChannel$[ebp]
	and	ecx, 255				; 000000ffH
	mov	edx, DWORD PTR _pPagePortMap$[ebp]
	mov	ax, WORD PTR [edx+ecx*2]
	push	eax
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	push	eax
	mov	ecx, DWORD PTR _iPort$[ebp]
	and	ecx, 65535				; 0000ffffH
	add	ecx, 1
	push	ecx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	push	eax
	mov	dx, WORD PTR _iPort$[ebp]
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	push	eax
	mov	al, BYTE PTR _iChannel$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?create@CDMAChannel@@QAEKPAVCDMAController@@EPBVCIOPort@@11@Z ; CDMAChannel::create
	mov	DWORD PTR _iChannelError$[ebp], eax

; 122  : 			if( iChannelError==0 )

	cmp	DWORD PTR _iChannelError$[ebp], 0
	jne	$L2571

; 123  : 				m_pChannels->insert( pChannel );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+57]
	mov	DWORD PTR $T2892[ebp], eax
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2881[ebp], eax
	cmp	DWORD PTR $T2881[ebp], 0
	je	SHORT $L2882
	mov	ecx, DWORD PTR $T2881[ebp]
	mov	DWORD PTR [ecx+8], 0
	mov	edx, DWORD PTR $T2881[ebp]
	mov	DWORD PTR [edx+4], 0
	mov	eax, DWORD PTR $T2881[ebp]
	mov	DWORD PTR -80+[ebp], eax
	jmp	SHORT $L2883
$L2882:
	mov	DWORD PTR -80+[ebp], 0
$L2883:
	mov	ecx, DWORD PTR -80+[ebp]
	mov	DWORD PTR _pLink$2876[ebp], ecx
	cmp	DWORD PTR _pLink$2876[ebp], 0
	je	SHORT $L2875
	mov	edx, DWORD PTR _pLink$2876[ebp]
	mov	eax, DWORD PTR _pChannel$[ebp]
	mov	DWORD PTR [edx], eax
	mov	ecx, DWORD PTR $T2892[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L2888
	mov	edx, DWORD PTR $T2892[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2870[ebp], eax
	mov	ecx, DWORD PTR $T2870[ebp]
	mov	edx, DWORD PTR _pLink$2876[ebp]
	mov	DWORD PTR [ecx+8], edx
$L2888:
	mov	eax, DWORD PTR $T2892[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2874[ebp], ecx
	mov	edx, DWORD PTR _pLink$2876[ebp]
	mov	eax, DWORD PTR $T2874[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T2892[ebp]
	mov	edx, DWORD PTR _pLink$2876[ebp]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR $T2892[ebp]
	cmp	DWORD PTR [eax+12], 0
	jne	SHORT $L2879
	mov	ecx, DWORD PTR $T2892[ebp]
	mov	edx, DWORD PTR _pLink$2876[ebp]
	mov	DWORD PTR [ecx+12], edx
$L2879:
	mov	eax, DWORD PTR $T2892[ebp]
	mov	ecx, DWORD PTR [eax+4]
	add	ecx, 1
	mov	edx, DWORD PTR $T2892[ebp]
	mov	DWORD PTR [edx+4], ecx
$L2875:

; 124  : 			else

	jmp	SHORT $L2572
$L2571:

; 125  : 				cout << m_pClassName << "create() - Failed to create channel " << iChannel << " error " << iChannelError << "." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2575
	mov	eax, DWORD PTR _iChannelError$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2574
	mov	cl, BYTE PTR _iChannel$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2573
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
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
$L2572:

; 126  : 		}

	jmp	$L2567
$L2568:

; 127  : 
; 128  : 		// Request status(read) and command(write) port.
; 129  : 		m_pStatusPort = IOManager.requestPort( iBasePort+m_iStatusPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 16					; 00000010H
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+40], eax

; 130  : 		m_pCommandPort = m_pStatusPort;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+40]
	mov	DWORD PTR [edx+14], ecx

; 131  : 
; 132  : 		// Request request(write) port.
; 133  : 		m_pRequestPort = IOManager.requestPort( iBasePort+m_iRequestPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 18					; 00000012H
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+44], eax

; 134  : 
; 135  : 		// Request single mask bit(write) port.
; 136  : 		m_pSingleMaskBitPort = IOManager.requestPort( iBasePort+m_iSingleMaskBitPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 20					; 00000014H
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+36], eax

; 137  : 
; 138  : 		// Request mode(write) port.
; 139  : 		m_pModePort = IOManager.requestPort( iBasePort+m_iModePortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 11					; 0000000bH
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+32], eax

; 140  : 
; 141  : 		// Request clear LSB/MSB flip-flop(write) port.
; 142  : 		m_pClearFlipFlopPort = IOManager.requestPort( iBasePort+m_iClearFlipFlopPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 12					; 0000000cH
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 143  : 
; 144  : 		// Request master clear/reset(write) and temporary(read) port.
; 145  : 		m_pMasterClearPort = IOManager.requestPort( iBasePort+m_iMasterClearPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 26					; 0000001aH
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+28], eax

; 146  : 		m_pTemporaryPort = m_pMasterClearPort;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR [edx+48], ecx

; 147  : 
; 148  : 		// Request clear mask(write) port.
; 149  : 		if(m_bDebug) cout << m_pClassName << pFunctionName << "Request ClearMask port" << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2576
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2577
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2576:

; 150  : 		m_pClearMaskPort = IOManager.requestPort( iBasePort+m_iClearMaskPortOffset );

	mov	ecx, DWORD PTR _iBasePort$[ebp]
	and	ecx, 65535				; 0000ffffH
	add	ecx, 28					; 0000001cH
	push	ecx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+10], eax

; 151  : 
; 152  : 		// Request write all mask bits(write) port.
; 153  : 		if(m_bDebug) cout << m_pClassName << pFunctionName << "Request WriteAllMaskBits port" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2578
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2579
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2578:

; 154  : 		m_pWriteAllMaskBitsPort = IOManager.requestPort( iBasePort+m_iWriteAllMaskBitsPortOffset );

	mov	edx, DWORD PTR _iBasePort$[ebp]
	and	edx, 65535				; 0000ffffH
	add	edx, 30					; 0000001eH
	push	edx
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+52], eax

; 155  : 
; 156  : 		// Success.
; 157  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2565:

; 159  : 
; 160  : 	// Return success of creation.
; 161  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 162  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?create@CDMAController@@QAE_NHGQAGEE@Z ENDP		; CDMAController::create
_TEXT	ENDS
PUBLIC	?requestChannel@CDMAController@@QBEPBVCDMAChannel@@E@Z ; CDMAController::requestChannel
PUBLIC	?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB	; TCursor<CDMAChannel *>::m_bDebug
PUBLIC	??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
PUBLIC	??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
PUBLIC	??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
PUBLIC	??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
PUBLIC	??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
PUBLIC	??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
PUBLIC	??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
EXTRN	?getNumber@CDMAChannel@@QBEEXZ:NEAR		; CDMAChannel::getNumber
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCursor.cpp
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB DB 00H	; TCursor<CDMAChannel *>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
	ORG $+2
$SG2613	DB	'requestChannel() - Channel found.', 00H
_DATA	ENDS
;	COMDAT ??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@
_DATA	SEGMENT
??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ DB 'TCursor cr'
	DB	'eated on NULL - Halt.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@
_DATA	SEGMENT
??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ DB 'TCursor<I'
	DB	'temType>::TCursor - First at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@
_DATA	SEGMENT
??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ DB 'TCursor<I'
	DB	'temType>::TCursor - Last at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@
_DATA	SEGMENT
??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ DB 'TCursor<I'
	DB	'temType>::TCursor - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@
_DATA	SEGMENT
??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ DB 'TCursor<I'
	DB	'temType>::first - First at 0x', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@
_DATA	SEGMENT
??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ DB 'TCursor<I'
	DB	'temType>::first - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@
_DATA	SEGMENT
??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ DB 'TCursor<I'
	DB	'temType>::more - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
_DATA	SEGMENT
??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ DB 'TCursor<I'
	DB	'temType>::next - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@
_DATA	SEGMENT
??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ DB 'TCursor<'
	DB	'ItemType>::next - Next at 0x', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_iChannel$ = 8
_this$ = -40
_pChannel$ = -16
_Channels$ = -12
$T2894 = -20
$T2904 = -24
_Item$2910 = -28
$T2922 = -36
_Next$2927 = -32
?requestChannel@CDMAController@@QBEPBVCDMAChannel@@E@Z PROC NEAR ; CDMAController::requestChannel

; 175  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[ebp], ecx

; 176  : 	CDMAChannel* pChannel;
; 177  : 
; 178  : 	// Iterate over channels owned by this controller.
; 179  : 	TCursor<CDMAChannel*> Channels( *m_pChannels );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+57]
	mov	DWORD PTR $T2904[ebp], ecx
	cmp	DWORD PTR $T2904[ebp], 0
	jne	SHORT $L2899
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2898:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L2899
	jmp	SHORT $L2898
$L2899:
	mov	eax, DWORD PTR $T2904[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T2904[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _Channels$[ebp], eax
	mov	eax, DWORD PTR $T2904[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T2904[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _Channels$[ebp+4], eax
	mov	eax, DWORD PTR _Channels$[ebp]
	mov	DWORD PTR _Channels$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2900
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Channels$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2900:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	eax, eax
	je	SHORT $L2901
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Channels$[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2901:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	edx, edx
	je	SHORT $L2896
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Channels$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2896:

; 180  : 	for( pChannel=Channels.first() ; Channels.more() ; pChannel=Channels.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2911
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Channels$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2911:
	cmp	DWORD PTR _Channels$[ebp], 0
	jne	SHORT $L2912
	mov	DWORD PTR _Channels$[ebp+8], 0
	mov	DWORD PTR _Item$2910[ebp], 0
	jmp	SHORT $L2909
$L2912:
	mov	eax, DWORD PTR _Channels$[ebp]
	mov	DWORD PTR _Channels$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2914
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Channels$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2914:
	mov	eax, DWORD PTR _Channels$[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$2910[ebp], ecx
$L2909:
	mov	edx, DWORD PTR _Item$2910[ebp]
	mov	DWORD PTR _pChannel$[ebp], edx
	jmp	$L2608
$L2609:
	mov	DWORD PTR _Next$2927[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	eax, eax
	je	SHORT $L2928
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Channels$[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2928:
	cmp	DWORD PTR _Channels$[ebp+8], 0
	je	SHORT $L2926
	mov	edx, DWORD PTR _Channels$[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T2922[ebp], eax
	mov	ecx, DWORD PTR $T2922[ebp]
	mov	DWORD PTR _Channels$[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	edx, edx
	je	SHORT $L2930
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Channels$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2930:
	cmp	DWORD PTR _Channels$[ebp+8], 0
	je	SHORT $L2926
	mov	ecx, DWORD PTR _Channels$[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$2927[ebp], edx
$L2926:
	mov	eax, DWORD PTR _Next$2927[ebp]
	mov	DWORD PTR _pChannel$[ebp], eax
$L2608:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2938
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Channels$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2938:
	xor	eax, eax
	cmp	DWORD PTR _Channels$[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2610

; 181  : 		if( pChannel->getNumber()==iChannel )

	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _iChannel$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	eax, ecx
	jne	SHORT $L2611

; 183  : 			if(m_bDebug) cout << m_pClassName << "requestChannel() - Channel found." << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2612
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2613
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2612:

; 184  : 			break;

	jmp	SHORT $L2610
$L2611:

; 186  : 
; 187  : 	// Return channel object.
; 188  : 	return pChannel;

	jmp	$L2609
$L2610:
	mov	eax, DWORD PTR _pChannel$[ebp]
	mov	DWORD PTR $T2894[ebp], eax
	mov	eax, DWORD PTR $T2894[ebp]

; 189  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?requestChannel@CDMAController@@QBEPBVCDMAChannel@@E@Z ENDP ; CDMAController::requestChannel
_TEXT	ENDS
PUBLIC	?setChannelEnable@CDMAController@@AAEXPAVCDMAChannel@@_N@Z ; CDMAController::setChannelEnable
_TEXT	SEGMENT
_pChannel$ = 8
_bEnable$ = 12
_this$ = -8
_iMask$ = -4
?setChannelEnable@CDMAController@@AAEXPAVCDMAChannel@@_N@Z PROC NEAR ; CDMAController::setChannelEnable

; 203  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 204  : 	BYTE iMask;
; 205  : 
; 206  : 	// Convert channel number to bit mask.
; 207  : 	iMask = 1;

	mov	BYTE PTR _iMask$[ebp], 1

; 208  : 	iMask <<= pChannel->getNumber();

	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	mov	cl, al
	mov	al, BYTE PTR _iMask$[ebp]
	shl	al, cl
	mov	BYTE PTR _iMask$[ebp], al

; 209  : 	
; 210  : 	// Combine mask with known register state.
; 211  : 	if( bEnable==true )

	mov	ecx, DWORD PTR _bEnable$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 1
	jne	SHORT $L2621

; 212  : 		m_iChannelMask = m_iChannelMask|iMask;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+56]
	mov	ecx, DWORD PTR _iMask$[ebp]
	and	ecx, 255				; 000000ffH
	or	eax, ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+56], al

; 213  : 	else

	jmp	SHORT $L2622
$L2621:

; 214  : 		m_iChannelMask = m_iChannelMask&(~iMask);

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+56]
	mov	edx, DWORD PTR _iMask$[ebp]
	and	edx, 255				; 000000ffH
	not	edx
	and	ecx, edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+56], cl
$L2622:

; 215  : 
; 216  : 	// Write mask to port.
; 217  : 	m_pMaskPort->writeByte( m_iChannelMask );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+56]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+24]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 218  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setChannelEnable@CDMAController@@AAEXPAVCDMAChannel@@_N@Z ENDP ; CDMAController::setChannelEnable
_TEXT	ENDS
PUBLIC	?setMode@CDMAController@@ABEXPAVCDMAChannel@@W4EDMAType@@W4EDMADirection@@@Z ; CDMAController::setMode
_DATA	SEGMENT
	ORG $+2
$SG2631	DB	'setMode() - ', 00H
	ORG $+3
$SG2635	DB	'Ch=', 00H
$SG2636	DB	' Typ=', 00H
	ORG $+2
$SG2637	DB	' Dir=', 00H
	ORG $+2
$SG2646	DB	'Invalid type ', 00H
	ORG $+2
$SG2655	DB	'Byte 0x', 00H
$SG2656	DB	' sent to mode port 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pChannel$ = 8
_eType$ = 12
_eDirection$ = 16
_this$ = -24
_iMode$ = -20
_pFunctionName$ = -16
?setMode@CDMAController@@ABEXPAVCDMAChannel@@W4EDMAType@@W4EDMADirection@@@Z PROC NEAR ; CDMAController::setMode

; 231  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	DWORD PTR _this$[ebp], ecx

; 232  : 	BYTE iMode;
; 233  : 	const char pFunctionName[] = "setMode() - ";

	mov	eax, DWORD PTR $SG2631
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2631+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2631+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	al, BYTE PTR $SG2631+12
	mov	BYTE PTR _pFunctionName$[ebp+12], al

; 234  : 
; 235  : 	if(m_bDebugIO) cout << m_pClassName << pFunctionName << "Ch=" << pChannel->getNumber() << " Typ=" << (BYTE)eType << " Dir=" << (BYTE)eDirection << endl;

	xor	ecx, ecx
	test	ecx, ecx
	je	SHORT $L2632
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	dl, BYTE PTR _eDirection$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2637
	mov	al, BYTE PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2636
	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	push	eax
	push	OFFSET FLAT:$SG2635
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
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
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2632:

; 239  : 	{

	mov	edx, DWORD PTR _eType$[ebp]
	mov	DWORD PTR -28+[ebp], edx
	cmp	DWORD PTR -28+[ebp], 1
	je	SHORT $L2642
	cmp	DWORD PTR -28+[ebp], 2
	je	SHORT $L2643
	jmp	SHORT $L2644
$L2642:

; 240  : 	case DT_IO2RAM:	iMode = 0x04; break;

	mov	BYTE PTR _iMode$[ebp], 4
	jmp	SHORT $L2639
$L2643:

; 241  : 	case DT_RAM2IO: iMode = 0x08; break;

	mov	BYTE PTR _iMode$[ebp], 8
	jmp	SHORT $L2639
$L2644:

; 242  : 	default: cout << m_pClassName << pFunctionName << "Invalid type " << (BYTE)eType << endl; break;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	al, BYTE PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2646
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
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
$L2639:

; 244  : 
; 245  : 	// Place channel into bits 0 and 1.
; 246  : 	iMode |= pChannel->getNumber()&0x03;

	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	and	eax, 255				; 000000ffH
	and	eax, 3
	mov	dl, BYTE PTR _iMode$[ebp]
	or	dl, al
	mov	BYTE PTR _iMode$[ebp], dl

; 250  : 	{

	mov	eax, DWORD PTR _eDirection$[ebp]
	mov	DWORD PTR -32+[ebp], eax
	cmp	DWORD PTR -32+[ebp], 1
	je	SHORT $L2651
	cmp	DWORD PTR -32+[ebp], 2
	je	SHORT $L2652
	jmp	SHORT $L2653
$L2651:

; 251  : 	case DD_INC: iMode |= 0x00; break;

	mov	cl, BYTE PTR _iMode$[ebp]
	mov	BYTE PTR _iMode$[ebp], cl
	jmp	SHORT $L2648
$L2652:

; 252  : 	case DD_DEC: iMode |= 0x20; break;

	mov	dl, BYTE PTR _iMode$[ebp]
	or	dl, 32					; 00000020H
	mov	BYTE PTR _iMode$[ebp], dl
$L2653:
$L2648:

; 255  : 
; 256  : 	// Force bit 6 to 1 to enable DMA.
; 257  : 	iMode |= 0x40;

	mov	al, BYTE PTR _iMode$[ebp]
	or	al, 64					; 00000040H
	mov	BYTE PTR _iMode$[ebp], al

; 258  : 
; 259  : 	// Write mode to port.
; 260  : 	if(m_bDebugIO) cout << m_pClassName << pFunctionName << "Byte 0x" << iMode << " sent to mode port 0x" << m_pModePort->getAddress() << endl;

	xor	ecx, ecx
	test	ecx, ecx
	je	SHORT $L2654
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+32]
	call	?getAddress@CIOPort@@QBE?BGXZ		; CIOPort::getAddress
	push	eax
	push	OFFSET FLAT:$SG2656
	mov	al, BYTE PTR _iMode$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2655
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDMAController@@0QBDB ; CDMAController::m_pClassName
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
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2654:

; 261  : 	m_pModePort->writeByte( iMode );

	mov	dl, BYTE PTR _iMode$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+32]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 262  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?setMode@CDMAController@@ABEXPAVCDMAChannel@@W4EDMAType@@W4EDMADirection@@@Z ENDP ; CDMAController::setMode
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ PROC NEAR	; TList<CDMAChannel *>::count, COMDAT

; 63   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 64   : 	// Return count of items in the list.
; 65   : 	return m_iCount;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]

; 66   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ ENDP		; TList<CDMAChannel *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ PROC NEAR ; TList<CDMAChannel *>::first, COMDAT

; 80   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 81   : 	// Return first node.
; 82   : 	return m_pHead;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+8]

; 83   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ ENDP ; TList<CDMAChannel *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ PROC NEAR ; TList<CDMAChannel *>::last, COMDAT

; 132  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 133  : 	// Return first node.
; 134  : 	return m_pTail;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 135  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ ENDP ; TList<CDMAChannel *>::last
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z PROC NEAR	; TCollection<CDMAChannel *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCDMAChannel@@@@6B@ ; TCollection<CDMAChannel *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2750
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2750:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z ENDP	; TCollection<CDMAChannel *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -40
$T2958 = -4
$T2967 = -24
$T2977 = -28
$T2984 = -32
$T2991 = -36
_pNode$3045 = -8
_pNext$3046 = -12
$T3053 = -16
$T3054 = -20
??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z PROC NEAR	; TList<CDMAChannel *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCDMAChannel@@@@6B@ ; TList<CDMAChannel *>::`vftable'
$L3039:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L3038
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T2958[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$3045[ebp], eax
$L3047:
	cmp	DWORD PTR _pNode$3045[ebp], 0
	je	SHORT $L3048
	mov	ecx, DWORD PTR _pNode$3045[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T2967[ebp], edx
	mov	eax, DWORD PTR $T2967[ebp]
	cmp	eax, DWORD PTR $T2958[ebp]
	je	SHORT $L3048
	mov	ecx, DWORD PTR _pNode$3045[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$3045[ebp], edx
	jmp	SHORT $L3047
$L3048:
	cmp	DWORD PTR _pNode$3045[ebp], 0
	je	$L3044
	mov	eax, DWORD PTR _pNode$3045[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$3046[ebp], ecx
	mov	edx, DWORD PTR _pNode$3045[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2977[ebp], eax
	mov	ecx, DWORD PTR $T2977[ebp]
	mov	edx, DWORD PTR _pNext$3046[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$3045[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2984[ebp], ecx
	mov	edx, DWORD PTR _pNext$3046[ebp]
	mov	eax, DWORD PTR $T2984[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$3045[ebp]
	jne	SHORT $L3050
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$3046[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3050:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$3045[ebp]
	jne	SHORT $L3051
	mov	ecx, DWORD PTR _pNode$3045[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2991[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T2991[ebp]
	mov	DWORD PTR [eax+12], ecx
$L3051:
	mov	edx, DWORD PTR _pNode$3045[ebp]
	mov	DWORD PTR $T3054[ebp], edx
	mov	eax, DWORD PTR $T3054[ebp]
	mov	DWORD PTR $T3053[ebp], eax
	cmp	DWORD PTR $T3053[ebp], 0
	je	SHORT $L3055
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3073
	mov	edx, DWORD PTR $T3053[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3073:
	mov	eax, DWORD PTR $T3053[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L3056
$L3055:
	mov	DWORD PTR -44+[ebp], 0
$L3056:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L3044:
	jmp	$L3039
$L3038:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCDMAChannel@@@@6B@ ; TCollection<CDMAChannel *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L2753
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2753:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z ENDP		; TList<CDMAChannel *>::`scalar deleting destructor'
_TEXT	ENDS
END
