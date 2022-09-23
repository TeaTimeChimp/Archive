	TITLE	E:\WORKSHOP\os98\ice32\DMAManager.cpp
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
;	COMDAT ??_GCDMAManager@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCDMAController@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCDMAController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCDMAController@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCDMAController@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCDMAController@@@@QAEXPAVCDMAController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
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
;	COMDAT ??0?$TCursor@PAVCDMAController@@@@QAE@AAV?$TCollection@PAVCDMAController@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PAVCDMAController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?more@?$TCursor@PAVCDMAController@@@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDMAController@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDMAController@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCDMAController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCDMAController@@@@QBEPAVCDMAController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCDMAController@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCDMAController@@@@QAEXPAVCDMAController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCDMAController@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCDMAController@@@@QAEXPAV12@@Z
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
;	COMDAT ??0?$TCollection@PAVCDMAController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCDMAController@@@@QAEXPAVCDMAController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCDMAController@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCDMAChannel@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCDMAController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCDMAController@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCDMAChannel@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCDMAChannel@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CDMAManager@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDMAChannel@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDMAChannel@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDMAController@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDMAController@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDMAManager@@0QBDB		; CDMAManager::m_pClassName
PUBLIC	?m_bDebug@CDMAManager@@0_NB			; CDMAManager::m_bDebug
PUBLIC	?m_iPortBaseController1@CDMAManager@@0GB	; CDMAManager::m_iPortBaseController1
PUBLIC	?m_iPortBaseController2@CDMAManager@@0GB	; CDMAManager::m_iPortBaseController2
PUBLIC	?waste_of_space@@3PAGA				; waste_of_space
PUBLIC	?pPagePortMap@@3PAGA				; pPagePortMap
CONST	SEGMENT
?m_pClassName@CDMAManager@@0QBDB DB 'DMAManager::', 00H	; CDMAManager::m_pClassName
?m_bDebug@CDMAManager@@0_NB DB 00H			; CDMAManager::m_bDebug
?m_iPortBaseController1@CDMAManager@@0GB DW 00H		; CDMAManager::m_iPortBaseController1
?m_iPortBaseController2@CDMAManager@@0GB DW 0c0H	; CDMAManager::m_iPortBaseController2
CONST	ENDS
_DATA	SEGMENT
?waste_of_space@@3PAGA DW 00H				; waste_of_space
	DW	01H
?pPagePortMap@@3PAGA DW 087H				; pPagePortMap
	DW	083H
	DW	081H
	DW	082H
	DW	08fH
	DW	08bH
	DW	089H
	DW	08aH
_DATA	ENDS
PUBLIC	??0CDMAManager@@QAE@XZ				; CDMAManager::CDMAManager
PUBLIC	??_7CDMAManager@@6B@				; CDMAManager::`vftable'
PUBLIC	??_GCDMAManager@@UAEPAXI@Z			; CDMAManager::`scalar deleting destructor'
PUBLIC	??_ECDMAManager@@UAEPAXI@Z			; CDMAManager::`vector deleting destructor'
;	COMDAT ??_7CDMAManager@@6B@
; File E:\WORKSHOP\os98\ice32\DMAManager.cpp
CONST	SEGMENT
??_7CDMAManager@@6B@ DD FLAT:??_ECDMAManager@@UAEPAXI@Z	; CDMAManager::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CDMAManager@@QAE@XZ PROC NEAR			; CDMAManager::CDMAManager

; 39   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAManager@@6B@ ; CDMAManager::`vftable'

; 40   : 	// Initialise state.
; 41   : 	m_pControllers			= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 42   : 	m_pAllocatedChannels	= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0

; 43   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CDMAManager@@QAE@XZ ENDP				; CDMAManager::CDMAManager
_TEXT	ENDS
PUBLIC	??1CDMAManager@@UAE@XZ				; CDMAManager::~CDMAManager
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCDMAManager@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCDMAManager@@UAEPAXI@Z PROC NEAR			; CDMAManager::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDMAManager@@UAE@XZ			; CDMAManager::~CDMAManager
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L696
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L696:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCDMAManager@@UAEPAXI@Z ENDP				; CDMAManager::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CDMAManager@@UAE@XZ PROC NEAR			; CDMAManager::~CDMAManager

; 56   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDMAManager@@6B@ ; CDMAManager::`vftable'

; 57   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CDMAManager@@UAE@XZ ENDP				; CDMAManager::~CDMAManager
_TEXT	ENDS
PUBLIC	?create@CDMAManager@@QAE_NXZ			; CDMAManager::create
PUBLIC	??_7?$TCollection@PAVCDMAController@@@@6B@	; TCollection<CDMAController *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCDMAController@@@@UAEPAXI@Z ; TCollection<CDMAController *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCDMAController@@@@UAEPAXI@Z ; TCollection<CDMAController *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCDMAController@@@@UBE?BKXZ	; TList<CDMAController *>::count
PUBLIC	?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ ; TList<CDMAController *>::first
PUBLIC	?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ ; TList<CDMAController *>::last
PUBLIC	??_7?$TList@PAVCDMAController@@@@6B@		; TList<CDMAController *>::`vftable'
PUBLIC	??_G?$TList@PAVCDMAController@@@@UAEPAXI@Z	; TList<CDMAController *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCDMAController@@@@UAEPAXI@Z	; TList<CDMAController *>::`vector deleting destructor'
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
EXTRN	??0CDMAController@@QAE@XZ:NEAR			; CDMAController::CDMAController
EXTRN	?create@CDMAController@@QAE_NHGQAGEE@Z:NEAR	; CDMAController::create
;	COMDAT ??_7?$TCollection@PAVCDMAChannel@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.cpp
CONST	SEGMENT
??_7?$TCollection@PAVCDMAChannel@@@@6B@ DD FLAT:??_E?$TCollection@PAVCDMAChannel@@@@UAEPAXI@Z ; TCollection<CDMAChannel *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDMAChannel@@@@6B@
CONST	SEGMENT
??_7?$TList@PAVCDMAChannel@@@@6B@ DD FLAT:??_E?$TList@PAVCDMAChannel@@@@UAEPAXI@Z ; TList<CDMAChannel *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCDMAChannel@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
	DD	FLAT:?last@?$TList@PAVCDMAChannel@@@@UBEPBVCNode@?$TCollection@PAVCDMAChannel@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDMAController@@@@6B@
CONST	SEGMENT
??_7?$TList@PAVCDMAController@@@@6B@ DD FLAT:??_E?$TList@PAVCDMAController@@@@UAEPAXI@Z ; TList<CDMAController *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCDMAController@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
	DD	FLAT:?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDMAController@@@@6B@
CONST	SEGMENT
??_7?$TCollection@PAVCDMAController@@@@6B@ DD FLAT:??_E?$TCollection@PAVCDMAController@@@@UAEPAXI@Z ; TCollection<CDMAController *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
$T1268 = -12
$T1271 = -16
$T1274 = -20
$T1277 = -24
$T1301 = -36
$T1305 = -40
$T1307 = -32
_pLink$1319 = -28
$T1323 = -44
$T1337 = -56
$T1341 = -60
$T1343 = -52
_pLink$1355 = -48
$T1359 = -64
_this$ = -68
_bSuccess$ = -8
_pController$ = -4
?create@CDMAManager@@QAE_NXZ PROC NEAR			; CDMAManager::create

; 70   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 92					; 0000005cH
	mov	DWORD PTR _this$[ebp], ecx

; 71   : 	bool bSuccess;
; 72   : 	CDMAController* pController;
; 73   : 
; 74   : 	// Assume failure.
; 75   : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 76   : 
; 77   : 	// Allocate controller collection.
; 78   : 	m_pControllers = new TList<CDMAController*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1268[ebp], eax
	cmp	DWORD PTR $T1268[ebp], 0
	je	SHORT $L1269
	mov	eax, DWORD PTR $T1268[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCDMAController@@@@6B@ ; TCollection<CDMAController *>::`vftable'
	mov	ecx, DWORD PTR $T1268[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PAVCDMAController@@@@6B@ ; TList<CDMAController *>::`vftable'
	mov	edx, DWORD PTR $T1268[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T1268[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T1268[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T1268[ebp]
	mov	DWORD PTR -72+[ebp], edx
	jmp	SHORT $L1270
$L1269:
	mov	DWORD PTR -72+[ebp], 0
$L1270:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -72+[ebp]
	mov	DWORD PTR [eax+4], ecx

; 79   : 	if( m_pControllers!=NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+4], 0
	je	$L858

; 81   : 		// Create DMA controller objects.
; 82   : 		pController = new CDMAController();

	push	61					; 0000003dH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1271[ebp], eax
	cmp	DWORD PTR $T1271[ebp], 0
	je	SHORT $L1272
	mov	ecx, DWORD PTR $T1271[ebp]
	call	??0CDMAController@@QAE@XZ		; CDMAController::CDMAController
	mov	DWORD PTR -76+[ebp], eax
	jmp	SHORT $L1273
$L1272:
	mov	DWORD PTR -76+[ebp], 0
$L1273:
	mov	eax, DWORD PTR -76+[ebp]
	mov	DWORD PTR _pController$[ebp], eax

; 83   : 		pController->create( 0, m_iPortBaseController1, pPagePortMap, 0, 4 );

	push	4
	push	0
	push	OFFSET FLAT:?pPagePortMap@@3PAGA	; pPagePortMap
	push	0
	push	0
	mov	ecx, DWORD PTR _pController$[ebp]
	call	?create@CDMAController@@QAE_NHGQAGEE@Z	; CDMAController::create

; 84   : 		if( pController!=NULL )

	cmp	DWORD PTR _pController$[ebp], 0
	je	$L1318

; 85   : 			m_pControllers->insert( pController );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T1323[ebp], edx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1307[ebp], eax
	cmp	DWORD PTR $T1307[ebp], 0
	je	SHORT $L1308
	mov	eax, DWORD PTR $T1307[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	ecx, DWORD PTR $T1307[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T1307[ebp]
	mov	DWORD PTR -80+[ebp], edx
	jmp	SHORT $L1309
$L1308:
	mov	DWORD PTR -80+[ebp], 0
$L1309:
	mov	eax, DWORD PTR -80+[ebp]
	mov	DWORD PTR _pLink$1319[ebp], eax
	cmp	DWORD PTR _pLink$1319[ebp], 0
	je	SHORT $L1318
	mov	ecx, DWORD PTR _pLink$1319[ebp]
	mov	edx, DWORD PTR _pController$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR $T1323[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L1314
	mov	ecx, DWORD PTR $T1323[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T1301[ebp], edx
	mov	eax, DWORD PTR $T1301[ebp]
	mov	ecx, DWORD PTR _pLink$1319[ebp]
	mov	DWORD PTR [eax+8], ecx
$L1314:
	mov	edx, DWORD PTR $T1323[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T1305[ebp], eax
	mov	ecx, DWORD PTR _pLink$1319[ebp]
	mov	edx, DWORD PTR $T1305[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T1323[ebp]
	mov	ecx, DWORD PTR _pLink$1319[ebp]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR $T1323[ebp]
	cmp	DWORD PTR [edx+12], 0
	jne	SHORT $L1322
	mov	eax, DWORD PTR $T1323[ebp]
	mov	ecx, DWORD PTR _pLink$1319[ebp]
	mov	DWORD PTR [eax+12], ecx
$L1322:
	mov	edx, DWORD PTR $T1323[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 1
	mov	ecx, DWORD PTR $T1323[ebp]
	mov	DWORD PTR [ecx+4], eax
$L1318:

; 86   : 		pController = new CDMAController();

	push	61					; 0000003dH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1274[ebp], eax
	cmp	DWORD PTR $T1274[ebp], 0
	je	SHORT $L1275
	mov	ecx, DWORD PTR $T1274[ebp]
	call	??0CDMAController@@QAE@XZ		; CDMAController::CDMAController
	mov	DWORD PTR -84+[ebp], eax
	jmp	SHORT $L1276
$L1275:
	mov	DWORD PTR -84+[ebp], 0
$L1276:
	mov	edx, DWORD PTR -84+[ebp]
	mov	DWORD PTR _pController$[ebp], edx

; 87   : 		pController->create( 1, m_iPortBaseController2, pPagePortMap, 4, 4 );

	push	4
	push	4
	push	OFFSET FLAT:?pPagePortMap@@3PAGA	; pPagePortMap
	push	192					; 000000c0H
	push	1
	mov	ecx, DWORD PTR _pController$[ebp]
	call	?create@CDMAController@@QAE_NHGQAGEE@Z	; CDMAController::create

; 88   : 		if( pController!=NULL )

	cmp	DWORD PTR _pController$[ebp], 0
	je	$L1354

; 89   : 			m_pControllers->insert( pController );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T1359[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1343[ebp], eax
	cmp	DWORD PTR $T1343[ebp], 0
	je	SHORT $L1344
	mov	edx, DWORD PTR $T1343[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T1343[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T1343[ebp]
	mov	DWORD PTR -88+[ebp], ecx
	jmp	SHORT $L1345
$L1344:
	mov	DWORD PTR -88+[ebp], 0
$L1345:
	mov	edx, DWORD PTR -88+[ebp]
	mov	DWORD PTR _pLink$1355[ebp], edx
	cmp	DWORD PTR _pLink$1355[ebp], 0
	je	SHORT $L1354
	mov	eax, DWORD PTR _pLink$1355[ebp]
	mov	ecx, DWORD PTR _pController$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T1359[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L1350
	mov	eax, DWORD PTR $T1359[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T1337[ebp], ecx
	mov	edx, DWORD PTR $T1337[ebp]
	mov	eax, DWORD PTR _pLink$1355[ebp]
	mov	DWORD PTR [edx+8], eax
$L1350:
	mov	ecx, DWORD PTR $T1359[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T1341[ebp], edx
	mov	eax, DWORD PTR _pLink$1355[ebp]
	mov	ecx, DWORD PTR $T1341[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T1359[ebp]
	mov	eax, DWORD PTR _pLink$1355[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T1359[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L1358
	mov	edx, DWORD PTR $T1359[ebp]
	mov	eax, DWORD PTR _pLink$1355[ebp]
	mov	DWORD PTR [edx+12], eax
$L1358:
	mov	ecx, DWORD PTR $T1359[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T1359[ebp]
	mov	DWORD PTR [eax+4], edx
$L1354:

; 90   : 
; 91   : 		// Allocate collection of allocated channels.
; 92   : 		m_pAllocatedChannels = new TList<CDMAChannel*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1277[ebp], eax
	cmp	DWORD PTR $T1277[ebp], 0
	je	SHORT $L1278
	mov	ecx, DWORD PTR $T1277[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCDMAChannel@@@@6B@ ; TCollection<CDMAChannel *>::`vftable'
	mov	edx, DWORD PTR $T1277[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7?$TList@PAVCDMAChannel@@@@6B@ ; TList<CDMAChannel *>::`vftable'
	mov	eax, DWORD PTR $T1277[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	ecx, DWORD PTR $T1277[ebp]
	mov	DWORD PTR [ecx+12], 0
	mov	edx, DWORD PTR $T1277[ebp]
	mov	DWORD PTR [edx+4], 0
	mov	eax, DWORD PTR $T1277[ebp]
	mov	DWORD PTR -92+[ebp], eax
	jmp	SHORT $L1279
$L1278:
	mov	DWORD PTR -92+[ebp], 0
$L1279:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR -92+[ebp]
	mov	DWORD PTR [ecx+8], edx

; 93   : 		if( m_pAllocatedChannels!=NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L858

; 94   : 			bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L858:

; 96   : 
; 97   : 	// Return success of creation.
; 98   : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 99   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CDMAManager@@QAE_NXZ ENDP			; CDMAManager::create
_TEXT	ENDS
PUBLIC	??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
PUBLIC	??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
PUBLIC	??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?requestChannel@CDMAManager@@QAEPAVCDMAChannel@@E@Z ; CDMAManager::requestChannel
PUBLIC	?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z ; TList<CDMAChannel *>::insert
PUBLIC	?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB	; TCursor<CDMAChannel *>::m_bDebug
PUBLIC	?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB	; TCursor<CDMAController *>::m_bDebug
PUBLIC	?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ; TCursor<CDMAController *>::first
PUBLIC	?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ; TCursor<CDMAController *>::next
PUBLIC	??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
PUBLIC	??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
PUBLIC	??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
PUBLIC	??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?getNumber@CDMAChannel@@QBEEXZ:NEAR		; CDMAChannel::getNumber
EXTRN	?requestChannel@CDMAController@@QBEPBVCDMAChannel@@E@Z:NEAR ; CDMAController::requestChannel
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCursor.cpp
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB DB 00H	; TCursor<CDMAChannel *>::m_bDebug
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB DB 00H	; TCursor<CDMAController *>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
$SG866	DB	'requestChannel() - ', 00H
$SG868	DB	'Channel ', 00H
	ORG $+3
$SG869	DB	' requested', 00H
	ORG $+1
$SG899	DB	'Not already allocated.', 00H
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
$T1369 = -56
$T1379 = -60
_Item$1385 = -64
$T1397 = -72
_Next$1402 = -68
$T1425 = -76
_iChannel$ = 8
_this$ = -80
_pChannel$ = -16
_pController$ = -40
_pFunctionName$ = -36
_Channels$ = -12
_Controllers$922 = -52
?requestChannel@CDMAManager@@QAEPAVCDMAChannel@@E@Z PROC NEAR ; CDMAManager::requestChannel

; 112  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 80					; 00000050H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 113  : 	CDMAChannel* pChannel;
; 114  : 	CDMAController* pController;
; 115  : 	const char pFunctionName[] = "requestChannel() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG866
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd

; 116  : 
; 117  : 	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Channel " << iChannel << " requested" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L867
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG869
	mov	cl, BYTE PTR _iChannel$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG868
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDMAManager@@0QBDB ; CDMAManager::m_pClassName
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
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L867:

; 118  : 
; 119  : 	// Check resource allocation.
; 120  : 	TCursor<CDMAChannel*> Channels( *m_pAllocatedChannels );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T1379[ebp], ecx
	cmp	DWORD PTR $T1379[ebp], 0
	jne	SHORT $L1375
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1374:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L1375
	jmp	SHORT $L1374
$L1375:
	mov	eax, DWORD PTR $T1379[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T1379[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _Channels$[ebp], eax
	mov	eax, DWORD PTR $T1379[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T1379[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _Channels$[ebp+4], eax
	mov	eax, DWORD PTR _Channels$[ebp]
	mov	DWORD PTR _Channels$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1376
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
$L1376:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	eax, eax
	je	SHORT $L1377
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
$L1377:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	edx, edx
	je	SHORT $L1372
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
$L1372:

; 121  : 	for( pChannel=Channels.first() ; Channels.more() ; pChannel=Channels.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1386
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
$L1386:
	cmp	DWORD PTR _Channels$[ebp], 0
	jne	SHORT $L1387
	mov	DWORD PTR _Channels$[ebp+8], 0
	mov	DWORD PTR _Item$1385[ebp], 0
	jmp	SHORT $L1384
$L1387:
	mov	eax, DWORD PTR _Channels$[ebp]
	mov	DWORD PTR _Channels$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1389
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
$L1389:
	mov	eax, DWORD PTR _Channels$[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$1385[ebp], ecx
$L1384:
	mov	edx, DWORD PTR _Item$1385[ebp]
	mov	DWORD PTR _pChannel$[ebp], edx
	jmp	$L893
$L894:
	mov	DWORD PTR _Next$1402[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	eax, eax
	je	SHORT $L1403
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
$L1403:
	cmp	DWORD PTR _Channels$[ebp+8], 0
	je	SHORT $L1401
	mov	edx, DWORD PTR _Channels$[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T1397[ebp], eax
	mov	ecx, DWORD PTR $T1397[ebp]
	mov	DWORD PTR _Channels$[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	edx, edx
	je	SHORT $L1405
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
$L1405:
	cmp	DWORD PTR _Channels$[ebp+8], 0
	je	SHORT $L1401
	mov	ecx, DWORD PTR _Channels$[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$1402[ebp], edx
$L1401:
	mov	eax, DWORD PTR _Next$1402[ebp]
	mov	DWORD PTR _pChannel$[ebp], eax
$L893:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAChannel@@@@0_NB ; TCursor<CDMAChannel *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1413
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
$L1413:
	xor	eax, eax
	cmp	DWORD PTR _Channels$[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L895

; 122  : 		if( pChannel->getNumber()==iChannel )

	mov	ecx, DWORD PTR _pChannel$[ebp]
	call	?getNumber@CDMAChannel@@QBEEXZ		; CDMAChannel::getNumber
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _iChannel$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	eax, ecx
	jne	SHORT $L896

; 123  : 			break;

	jmp	SHORT $L895
$L896:

; 124  : 
; 125  : 	// Only allocate channel if free.
; 126  : 	if( pChannel==NULL )

	jmp	$L894
$L895:
	cmp	DWORD PTR _pChannel$[ebp], 0
	jne	$L897

; 128  : 		if( m_bDebug ) cout << m_pClassName << pFunctionName << "Not already allocated." << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L898
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG899
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDMAManager@@0QBDB ; CDMAManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L898:

; 129  : 		TCursor<CDMAController*> Controllers( *m_pControllers );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T1425[ebp], edx
	cmp	DWORD PTR $T1425[ebp], 0
	jne	SHORT $L1420
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1419:
	mov	eax, 1
	test	eax, eax
	je	SHORT $L1420
	jmp	SHORT $L1419
$L1420:
	mov	ecx, DWORD PTR $T1425[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR $T1425[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _Controllers$922[ebp], eax
	mov	eax, DWORD PTR $T1425[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T1425[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _Controllers$922[ebp+4], eax
	mov	eax, DWORD PTR _Controllers$922[ebp]
	mov	DWORD PTR _Controllers$922[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1421
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$922[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1421:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	eax, eax
	je	SHORT $L1422
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Controllers$922[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1422:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	edx, edx
	je	SHORT $L1417
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Controllers$922[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1417:

; 130  : 		for( pController=Controllers.first() ; Controllers.more() ; pController=Controllers.next() )

	lea	ecx, DWORD PTR _Controllers$922[ebp]
	call	?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ; TCursor<CDMAController *>::first
	mov	DWORD PTR _pController$[ebp], eax
	jmp	SHORT $L923
$L924:
	lea	ecx, DWORD PTR _Controllers$922[ebp]
	call	?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ; TCursor<CDMAController *>::next
	mov	DWORD PTR _pController$[ebp], eax
$L923:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L1427
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$922[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1427:
	xor	eax, eax
	cmp	DWORD PTR _Controllers$922[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L1431

; 132  : 			pChannel = (CDMAChannel*)(pController->requestChannel( iChannel ));

	mov	cl, BYTE PTR _iChannel$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pController$[ebp]
	call	?requestChannel@CDMAController@@QBEPBVCDMAChannel@@E@Z ; CDMAController::requestChannel
	mov	DWORD PTR _pChannel$[ebp], eax

; 133  : 			if( pChannel!=NULL )

	cmp	DWORD PTR _pChannel$[ebp], 0
	je	SHORT $L927

; 135  : 				m_pAllocatedChannels->insert( pChannel );

	mov	edx, DWORD PTR _pChannel$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	call	?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z ; TList<CDMAChannel *>::insert

; 136  : 				break;

	jmp	SHORT $L1431
$L927:

; 138  : 		}

	jmp	SHORT $L924

; 139  : 	}

$L1431:

; 140  : 	else

	jmp	SHORT $L928
$L897:

; 142  : 		// Channel already allocated.
; 143  : 		pChannel = NULL;

	mov	DWORD PTR _pChannel$[ebp], 0
$L928:

; 145  : 
; 146  : 	// Return pointer to DMA channel object.
; 147  : 	return pChannel;

	mov	ecx, DWORD PTR _pChannel$[ebp]
	mov	DWORD PTR $T1369[ebp], ecx
	mov	eax, DWORD PTR $T1369[ebp]

; 148  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?requestChannel@CDMAManager@@QAEPAVCDMAChannel@@E@Z ENDP ; CDMAManager::requestChannel
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
;	COMDAT ?count@?$TList@PAVCDMAController@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCDMAController@@@@UBE?BKXZ PROC NEAR	; TList<CDMAController *>::count, COMDAT

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
?count@?$TList@PAVCDMAController@@@@UBE?BKXZ ENDP	; TList<CDMAController *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ PROC NEAR ; TList<CDMAController *>::first, COMDAT

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
?first@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ ENDP ; TList<CDMAController *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ PROC NEAR ; TList<CDMAController *>::last, COMDAT

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
?last@?$TList@PAVCDMAController@@@@UBEPBVCNode@?$TCollection@PAVCDMAController@@@@XZ ENDP ; TList<CDMAController *>::last
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
;	COMDAT ?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z
_TEXT	SEGMENT
$T1444 = -8
$T1456 = -12
$T1460 = -16
_Item$ = 8
_this$ = -20
_pLink$ = -4
?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z PROC NEAR ; TList<CDMAChannel *>::insert, COMDAT

; 97   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 98   : 	CNode* pLink;
; 99   : 
; 100  : 	// Create new link.
; 101  : 	pLink = new CNode();

	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1444[ebp], eax
	cmp	DWORD PTR $T1444[ebp], 0
	je	SHORT $L1445
	mov	eax, DWORD PTR $T1444[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	ecx, DWORD PTR $T1444[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T1444[ebp]
	mov	DWORD PTR -24+[ebp], edx
	jmp	SHORT $L1446
$L1445:
	mov	DWORD PTR -24+[ebp], 0
$L1446:
	mov	eax, DWORD PTR -24+[ebp]
	mov	DWORD PTR _pLink$[ebp], eax

; 102  : 	if( pLink!=NULL )

	cmp	DWORD PTR _pLink$[ebp], 0
	je	SHORT $L1000

; 104  : 		// Set item in link.
; 105  : 		pLink->setItem( Item );

	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	edx, DWORD PTR _Item$[ebp]
	mov	DWORD PTR [ecx], edx

; 106  : 
; 107  : 		// Add link to list.
; 108  : 		if( m_pHead!=NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L1454

; 109  : 			m_pHead->setPrevious( pLink );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T1456[ebp], edx
	mov	eax, DWORD PTR $T1456[ebp]
	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [eax+8], ecx
$L1454:

; 110  : 		pLink->setNext( m_pHead );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T1460[ebp], eax
	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	edx, DWORD PTR $T1460[ebp]
	mov	DWORD PTR [ecx+4], edx

; 111  : 		m_pHead = pLink;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [eax+8], ecx

; 112  : 		if( m_pTail==NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+12], 0
	jne	SHORT $L1002

; 113  : 			m_pTail = pLink;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [eax+12], ecx
$L1002:

; 114  : 
; 115  : 		// Increment list count.
; 116  : 		m_iCount++;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 1
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], eax
$L1000:

; 118  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?insert@?$TList@PAVCDMAChannel@@@@QAEXPAVCDMAChannel@@@Z ENDP ; TList<CDMAChannel *>::insert
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
;	COMDAT ?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ
_TEXT	SEGMENT
_this$ = -8
_Item$ = -4
?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ PROC NEAR ; TCursor<CDMAController *>::first, COMDAT

; 78   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 79   : 	ItemType Item;
; 80   : 
; 81   : 	// Check existance of collection items.
; 82   : 	if(m_bDebug) cout << "TCursor<ItemType>::first - First at 0x" << (DWORD)m_pFirst << endl;	

	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	eax, eax
	je	SHORT $L1078
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1078:

; 83   : 	if( m_pFirst==NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax], 0
	jne	SHORT $L1080

; 85   : 		// No items in the collection.
; 86   : 		m_pCurrent	= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+8], 0

; 87   : 		Item		= NULL;

	mov	DWORD PTR _Item$[ebp], 0

; 89   : 	else

	jmp	SHORT $L1464
$L1080:

; 91   : 		// Intialise current object(current in collection).
; 92   : 		m_pCurrent = m_pFirst;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR [edx+8], ecx

; 93   : 		if(m_bDebug) cout << "TCursor<ItemType>::first - Current at 0x" << (DWORD)m_pCurrent << endl;

	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	edx, edx
	je	SHORT $L1082
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1082:

; 94   : 
; 95   : 		// Return current data item.
; 96   : 		Item = m_pCurrent->getItem();		

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$[ebp], ecx
$L1464:

; 98   : 
; 99   : 	// Return first Item.
; 100  : 	return Item;

	mov	eax, DWORD PTR _Item$[ebp]

; 101  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?first@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ENDP ; TCursor<CDMAController *>::first
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ
_TEXT	SEGMENT
_this$ = -12
_Next$ = -4
$T1470 = -8
?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ PROC NEAR ; TCursor<CDMAController *>::next, COMDAT

; 134  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 135  : 	ItemType Next;
; 136  : 
; 137  : 	// Assume no next object.
; 138  : 	Next = NULL;

	mov	DWORD PTR _Next$[ebp], 0

; 139  : 
; 140  : 	// Validate next item node.
; 141  : 	if(m_bDebug) cout << "TCursor<ItemType>::next - Current at 0x" << (DWORD)m_pCurrent << endl;

	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	eax, eax
	je	SHORT $L1093
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1093:

; 142  : 	if( m_pCurrent!=NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L1472

; 144  : 		// Update current item pointer.		
; 145  : 		m_pCurrent = m_pCurrent->getNext();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T1470[ebp], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR $T1470[ebp]
	mov	DWORD PTR [ecx+8], edx

; 146  : 		if(m_bDebug) cout << "TCursor<ItemType>::next - Next at 0x" << (DWORD)m_pCurrent << endl;

	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDMAController@@@@0_NB ; TCursor<CDMAController *>::m_bDebug
	test	eax, eax
	je	SHORT $L1096
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L1096:

; 147  : 
; 148  : 		// Get next data item.
; 149  : 		if( m_pCurrent!=NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L1472

; 150  : 			Next = m_pCurrent->getItem();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _Next$[ebp], eax
$L1472:

; 152  : 
; 153  : 	// Return next data item.
; 154  : 	return Next;

	mov	eax, DWORD PTR _Next$[ebp]

; 155  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?next@?$TCursor@PAVCDMAController@@@@QAEQAVCDMAController@@XZ ENDP ; TCursor<CDMAController *>::next
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDMAController@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCDMAController@@@@UAEPAXI@Z PROC NEAR ; TCollection<CDMAController *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCDMAController@@@@6B@ ; TCollection<CDMAController *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L1105
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1105:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCDMAController@@@@UAEPAXI@Z ENDP	; TCollection<CDMAController *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDMAController@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -40
$T1483 = -4
$T1492 = -24
$T1502 = -28
$T1509 = -32
$T1516 = -36
_pNode$1567 = -8
_pNext$1568 = -12
$T1575 = -16
$T1576 = -20
??_G?$TList@PAVCDMAController@@@@UAEPAXI@Z PROC NEAR	; TList<CDMAController *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCDMAController@@@@6B@ ; TList<CDMAController *>::`vftable'
$L1603:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L1602
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T1483[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$1567[ebp], eax
$L1569:
	cmp	DWORD PTR _pNode$1567[ebp], 0
	je	SHORT $L1570
	mov	ecx, DWORD PTR _pNode$1567[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T1492[ebp], edx
	mov	eax, DWORD PTR $T1492[ebp]
	cmp	eax, DWORD PTR $T1483[ebp]
	je	SHORT $L1570
	mov	ecx, DWORD PTR _pNode$1567[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$1567[ebp], edx
	jmp	SHORT $L1569
$L1570:
	cmp	DWORD PTR _pNode$1567[ebp], 0
	je	$L1566
	mov	eax, DWORD PTR _pNode$1567[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$1568[ebp], ecx
	mov	edx, DWORD PTR _pNode$1567[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T1502[ebp], eax
	mov	ecx, DWORD PTR $T1502[ebp]
	mov	edx, DWORD PTR _pNext$1568[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$1567[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T1509[ebp], ecx
	mov	edx, DWORD PTR _pNext$1568[ebp]
	mov	eax, DWORD PTR $T1509[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$1567[ebp]
	jne	SHORT $L1572
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$1568[ebp]
	mov	DWORD PTR [eax+8], ecx
$L1572:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$1567[ebp]
	jne	SHORT $L1573
	mov	ecx, DWORD PTR _pNode$1567[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T1516[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T1516[ebp]
	mov	DWORD PTR [eax+12], ecx
$L1573:
	mov	edx, DWORD PTR _pNode$1567[ebp]
	mov	DWORD PTR $T1576[ebp], edx
	mov	eax, DWORD PTR $T1576[ebp]
	mov	DWORD PTR $T1575[ebp], eax
	cmp	DWORD PTR $T1575[ebp], 0
	je	SHORT $L1577
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L1595
	mov	edx, DWORD PTR $T1575[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1595:
	mov	eax, DWORD PTR $T1575[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L1578
$L1577:
	mov	DWORD PTR -44+[ebp], 0
$L1578:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L1566:
	jmp	$L1603
$L1602:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCDMAController@@@@6B@ ; TCollection<CDMAController *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L1108
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1108:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCDMAController@@@@UAEPAXI@Z ENDP		; TList<CDMAController *>::`scalar deleting destructor'
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
	je	SHORT $L1111
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1111:
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
$T1614 = -4
$T1623 = -24
$T1633 = -28
$T1640 = -32
$T1647 = -36
_pNode$1698 = -8
_pNext$1699 = -12
$T1706 = -16
$T1707 = -20
??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z PROC NEAR	; TList<CDMAChannel *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCDMAChannel@@@@6B@ ; TList<CDMAChannel *>::`vftable'
$L1734:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L1733
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T1614[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$1698[ebp], eax
$L1700:
	cmp	DWORD PTR _pNode$1698[ebp], 0
	je	SHORT $L1701
	mov	ecx, DWORD PTR _pNode$1698[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T1623[ebp], edx
	mov	eax, DWORD PTR $T1623[ebp]
	cmp	eax, DWORD PTR $T1614[ebp]
	je	SHORT $L1701
	mov	ecx, DWORD PTR _pNode$1698[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$1698[ebp], edx
	jmp	SHORT $L1700
$L1701:
	cmp	DWORD PTR _pNode$1698[ebp], 0
	je	$L1697
	mov	eax, DWORD PTR _pNode$1698[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$1699[ebp], ecx
	mov	edx, DWORD PTR _pNode$1698[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T1633[ebp], eax
	mov	ecx, DWORD PTR $T1633[ebp]
	mov	edx, DWORD PTR _pNext$1699[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$1698[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T1640[ebp], ecx
	mov	edx, DWORD PTR _pNext$1699[ebp]
	mov	eax, DWORD PTR $T1640[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$1698[ebp]
	jne	SHORT $L1703
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$1699[ebp]
	mov	DWORD PTR [eax+8], ecx
$L1703:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$1698[ebp]
	jne	SHORT $L1704
	mov	ecx, DWORD PTR _pNode$1698[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T1647[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T1647[ebp]
	mov	DWORD PTR [eax+12], ecx
$L1704:
	mov	edx, DWORD PTR _pNode$1698[ebp]
	mov	DWORD PTR $T1707[ebp], edx
	mov	eax, DWORD PTR $T1707[ebp]
	mov	DWORD PTR $T1706[ebp], eax
	cmp	DWORD PTR $T1706[ebp], 0
	je	SHORT $L1708
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L1726
	mov	edx, DWORD PTR $T1706[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1726:
	mov	eax, DWORD PTR $T1706[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L1709
$L1708:
	mov	DWORD PTR -44+[ebp], 0
$L1709:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L1697:
	jmp	$L1734
$L1733:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCDMAChannel@@@@6B@ ; TCollection<CDMAChannel *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L1114
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1114:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCDMAChannel@@@@UAEPAXI@Z ENDP		; TList<CDMAChannel *>::`scalar deleting destructor'
_TEXT	ENDS
END
