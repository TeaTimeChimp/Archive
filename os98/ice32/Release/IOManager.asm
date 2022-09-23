	TITLE	E:\WORKSHOP\os98\ice32\IOManager.cpp
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
;	COMDAT ??_GCIOManager@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCIOPort@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PBVCIOPort@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PBVCIOPort@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PBVCIOPort@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PBVCIOPort@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PBVCIOPort@@@@QAEXPBVCIOPort@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PBVCIOPort@@@@QAEXPBVCIOPort@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCursor@PBVCIOPort@@@@QAE@AAV?$TCollection@PBVCIOPort@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PBVCIOPort@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PBVCIOPort@@@@QAEQBVCIOPort@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?more@?$TCursor@PBVCIOPort@@@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PBVCIOPort@@@@QAEQBVCIOPort@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PBVCIOPort@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PBVCIOPort@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PBVCIOPort@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PBVCIOPort@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PBVCIOPort@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PBVCIOPort@@@@QBEPBVCIOPort@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PBVCIOPort@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PBVCIOPort@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PBVCIOPort@@@@QAEXPBVCIOPort@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PBVCIOPort@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PBVCIOPort@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PBVCIOPort@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CIOManager@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TList@PBVCIOPort@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PBVCIOPort@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_bDebug@CIOManager@@0_NB			; CIOManager::m_bDebug
CONST	SEGMENT
?m_bDebug@CIOManager@@0_NB DB 00H			; CIOManager::m_bDebug
CONST	ENDS
PUBLIC	??0CIOManager@@QAE@XZ				; CIOManager::CIOManager
PUBLIC	??_7CIOManager@@6B@				; CIOManager::`vftable'
PUBLIC	??_GCIOManager@@UAEPAXI@Z			; CIOManager::`scalar deleting destructor'
PUBLIC	??_ECIOManager@@UAEPAXI@Z			; CIOManager::`vector deleting destructor'
;	COMDAT ??_7CIOManager@@6B@
; File E:\WORKSHOP\os98\ice32\IOManager.cpp
CONST	SEGMENT
??_7CIOManager@@6B@ DD FLAT:??_ECIOManager@@UAEPAXI@Z	; CIOManager::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CIOManager@@QAE@XZ PROC NEAR				; CIOManager::CIOManager

; 37   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CIOManager@@6B@ ; CIOManager::`vftable'

; 38   : 	// Invalidate port allocation list.
; 39   : 	m_pAllocatedPorts = NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 40   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CIOManager@@QAE@XZ ENDP				; CIOManager::CIOManager
_TEXT	ENDS
PUBLIC	??1CIOManager@@UAE@XZ				; CIOManager::~CIOManager
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCIOManager@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCIOManager@@UAEPAXI@Z PROC NEAR			; CIOManager::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CIOManager@@UAE@XZ			; CIOManager::~CIOManager
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
??_GCIOManager@@UAEPAXI@Z ENDP				; CIOManager::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CIOManager@@UAE@XZ PROC NEAR				; CIOManager::~CIOManager

; 43   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CIOManager@@6B@ ; CIOManager::`vftable'

; 44   : 
; 45   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CIOManager@@UAE@XZ ENDP				; CIOManager::~CIOManager
_TEXT	ENDS
PUBLIC	?create@CIOManager@@QAE?BKXZ			; CIOManager::create
PUBLIC	??_7?$TCollection@PBVCIOPort@@@@6B@		; TCollection<CIOPort const *>::`vftable'
PUBLIC	??_G?$TCollection@PBVCIOPort@@@@UAEPAXI@Z	; TCollection<CIOPort const *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PBVCIOPort@@@@UAEPAXI@Z	; TCollection<CIOPort const *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PBVCIOPort@@@@UBE?BKXZ		; TList<CIOPort const *>::count
PUBLIC	?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ ; TList<CIOPort const *>::first
PUBLIC	?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ ; TList<CIOPort const *>::last
PUBLIC	??_7?$TList@PBVCIOPort@@@@6B@			; TList<CIOPort const *>::`vftable'
PUBLIC	??_G?$TList@PBVCIOPort@@@@UAEPAXI@Z		; TList<CIOPort const *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PBVCIOPort@@@@UAEPAXI@Z		; TList<CIOPort const *>::`vector deleting destructor'
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
;	COMDAT ??_7?$TCollection@PBVCIOPort@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.cpp
CONST	SEGMENT
??_7?$TCollection@PBVCIOPort@@@@6B@ DD FLAT:??_E?$TCollection@PBVCIOPort@@@@UAEPAXI@Z ; TCollection<CIOPort const *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
;	COMDAT ??_7?$TList@PBVCIOPort@@@@6B@
CONST	SEGMENT
??_7?$TList@PBVCIOPort@@@@6B@ DD FLAT:??_E?$TList@PBVCIOPort@@@@UAEPAXI@Z ; TList<CIOPort const *>::`vftable'
	DD	FLAT:?count@?$TList@PBVCIOPort@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
	DD	FLAT:?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
CONST	ENDS
_TEXT	SEGMENT
_this$ = -12
_lpError$ = -4
$T2785 = -8
?create@CIOManager@@QAE?BKXZ PROC NEAR			; CIOManager::create

; 57   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 58   : 	unsigned long lpError;
; 59   : 
; 60   : 	// Allocate list for recording port allocations.
; 61   : 	m_pAllocatedPorts = new TList<const CIOPort*>;

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2785[ebp], eax
	cmp	DWORD PTR $T2785[ebp], 0
	je	SHORT $L2786
	mov	eax, DWORD PTR $T2785[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PBVCIOPort@@@@6B@ ; TCollection<CIOPort const *>::`vftable'
	mov	ecx, DWORD PTR $T2785[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PBVCIOPort@@@@6B@ ; TList<CIOPort const *>::`vftable'
	mov	edx, DWORD PTR $T2785[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T2785[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T2785[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T2785[ebp]
	mov	DWORD PTR -16+[ebp], edx
	jmp	SHORT $L2787
$L2786:
	mov	DWORD PTR -16+[ebp], 0
$L2787:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -16+[ebp]
	mov	DWORD PTR [eax+4], ecx

; 62   : 	if( m_pAllocatedPorts==NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+4], 0
	jne	SHORT $L2548

; 64   : 		// Signal memory allocation error.
; 65   : 		lpError = EC_IOMANAGER_MEM_ALLOCATED_PORTS;

	mov	DWORD PTR _lpError$[ebp], 1

; 67   : 	else

	jmp	SHORT $L2549
$L2548:

; 69   : 		// No error occured.
; 70   : 		lpError = EC_NONE;

	mov	DWORD PTR _lpError$[ebp], 0
$L2549:

; 72   : 
; 73   : 	// Return success of creation.
; 74   : 	return lpError;

	mov	eax, DWORD PTR _lpError$[ebp]

; 75   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CIOManager@@QAE?BKXZ ENDP			; CIOManager::create
_TEXT	ENDS
PUBLIC	?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z	; CIOManager::releasePort
EXTRN	??1CIOPort@@QAE@XZ:NEAR				; CIOPort::~CIOPort
_TEXT	SEGMENT
_pPort$ = 8
_this$ = -48
$T2797 = -4
$T2798 = -8
$T2809 = -28
$T2819 = -32
$T2826 = -36
$T2833 = -40
_pNode$2844 = -12
_pNext$2845 = -16
$T2852 = -20
$T2853 = -24
$T2877 = -44
?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z PROC NEAR ; CIOManager::releasePort

; 88   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H
	mov	DWORD PTR _this$[ebp], ecx

; 89   : 	// Remove port from collection of those allocated.
; 90   : 	m_pAllocatedPorts->remove( pPort );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T2877[ebp], ecx
	mov	edx, DWORD PTR $T2877[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$2844[ebp], eax
$L2846:
	cmp	DWORD PTR _pNode$2844[ebp], 0
	je	SHORT $L2847
	mov	ecx, DWORD PTR _pNode$2844[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T2809[ebp], edx
	mov	eax, DWORD PTR $T2809[ebp]
	cmp	eax, DWORD PTR _pPort$[ebp]
	je	SHORT $L2847
	mov	ecx, DWORD PTR _pNode$2844[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$2844[ebp], edx
	jmp	SHORT $L2846
$L2847:
	cmp	DWORD PTR _pNode$2844[ebp], 0
	je	$L2843
	mov	eax, DWORD PTR _pNode$2844[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$2845[ebp], ecx
	mov	edx, DWORD PTR _pNode$2844[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2819[ebp], eax
	mov	ecx, DWORD PTR $T2819[ebp]
	mov	edx, DWORD PTR _pNext$2845[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$2844[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2826[ebp], ecx
	mov	edx, DWORD PTR _pNext$2845[ebp]
	mov	eax, DWORD PTR $T2826[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T2877[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$2844[ebp]
	jne	SHORT $L2849
	mov	eax, DWORD PTR $T2877[ebp]
	mov	ecx, DWORD PTR _pNext$2845[ebp]
	mov	DWORD PTR [eax+8], ecx
$L2849:
	mov	edx, DWORD PTR $T2877[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$2844[ebp]
	jne	SHORT $L2850
	mov	ecx, DWORD PTR _pNode$2844[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2833[ebp], edx
	mov	eax, DWORD PTR $T2877[ebp]
	mov	ecx, DWORD PTR $T2833[ebp]
	mov	DWORD PTR [eax+12], ecx
$L2850:
	mov	edx, DWORD PTR _pNode$2844[ebp]
	mov	DWORD PTR $T2853[ebp], edx
	mov	eax, DWORD PTR $T2853[ebp]
	mov	DWORD PTR $T2852[ebp], eax
	cmp	DWORD PTR $T2852[ebp], 0
	je	SHORT $L2854
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2872
	mov	edx, DWORD PTR $T2852[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2872:
	mov	eax, DWORD PTR $T2852[ebp]
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L2855
$L2854:
	mov	DWORD PTR -52+[ebp], 0
$L2855:
	mov	ecx, DWORD PTR $T2877[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR $T2877[ebp]
	mov	DWORD PTR [eax+4], edx
$L2843:

; 91   : 
; 92   : 	// Free port resource.
; 93   : 	delete pPort;

	mov	ecx, DWORD PTR _pPort$[ebp]
	mov	DWORD PTR $T2798[ebp], ecx
	mov	edx, DWORD PTR $T2798[ebp]
	mov	DWORD PTR $T2797[ebp], edx
	cmp	DWORD PTR $T2797[ebp], 0
	je	SHORT $L2799
	mov	ecx, DWORD PTR $T2797[ebp]
	call	??1CIOPort@@QAE@XZ			; CIOPort::~CIOPort
	mov	eax, 1
	and	eax, 1
	test	eax, eax
	je	SHORT $L2879
	mov	ecx, DWORD PTR $T2797[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2879:
	mov	edx, DWORD PTR $T2797[ebp]
	mov	DWORD PTR -56+[ebp], edx
	jmp	SHORT $L2800
$L2799:
	mov	DWORD PTR -56+[ebp], 0
$L2800:

; 94   : 
; 95   : 	// Return NULL.
; 96   : 	return NULL;

	xor	eax, eax

; 97   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?releasePort@CIOManager@@QAEPBVCIOPort@@PBV2@@Z ENDP	; CIOManager::releasePort
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z	; CIOManager::requestPort
PUBLIC	?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB		; TCursor<CIOPort const *>::m_bDebug
PUBLIC	??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
PUBLIC	??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
PUBLIC	??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
PUBLIC	??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
PUBLIC	??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
PUBLIC	??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
PUBLIC	??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	??0CIOPort@@QAE@G@Z:NEAR			; CIOPort::CIOPort
EXTRN	?getAddress@CIOPort@@QBE?BGXZ:NEAR		; CIOPort::getAddress
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
;	COMDAT ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCursor.cpp
CONST	SEGMENT
?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB DB 00H		; TCursor<CIOPort const *>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
$SG2566	DB	'IOManager::requestPort(', 00H
$SG2567	DB	').', 00H
	ORG $+1
$SG2599	DB	'CIOManager::requestPort() - Port inuse.', 00H
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
_iPortAddress$ = 8
_this$ = -64
_pPort$ = -16
_Cursor$ = -12
$T2883 = -20
$T2886 = -24
$T2896 = -28
_Item$2902 = -32
$T2914 = -40
_Next$2919 = -36
$T2946 = -52
$T2950 = -56
_pLink$2952 = -44
$T2957 = -48
$T2968 = -60
?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z PROC NEAR	; CIOManager::requestPort

; 111  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	mov	DWORD PTR _this$[ebp], ecx

; 112  : 	const CIOPort* pPort;
; 113  : 
; 114  : 	// Iterate over allocated port checking for requested port.
; 115  : 	if(m_bDebug) cout << "IOManager::requestPort(" << iPortAddress << ")." << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2565
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2567
	mov	cx, WORD PTR _iPortAddress$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2566
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2565:

; 116  : 	TCursor<const CIOPort*> Cursor( *m_pAllocatedPorts );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T2896[ebp], eax
	cmp	DWORD PTR $T2896[ebp], 0
	jne	SHORT $L2891
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2890:
	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L2891
	jmp	SHORT $L2890
$L2891:
	mov	edx, DWORD PTR $T2896[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR $T2896[ebp]
	call	DWORD PTR [eax+8]
	mov	DWORD PTR _Cursor$[ebp], eax
	mov	ecx, DWORD PTR $T2896[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR $T2896[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _Cursor$[ebp+4], eax
	mov	eax, DWORD PTR _Cursor$[ebp]
	mov	DWORD PTR _Cursor$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2892
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Cursor$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2892:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	eax, eax
	je	SHORT $L2893
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Cursor$[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2893:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	edx, edx
	je	SHORT $L2888
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Cursor$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2888:

; 117  : 	for( pPort=Cursor.first() ; Cursor.more() ; pPort=Cursor.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2903
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Cursor$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2903:
	cmp	DWORD PTR _Cursor$[ebp], 0
	jne	SHORT $L2904
	mov	DWORD PTR _Cursor$[ebp+8], 0
	mov	DWORD PTR _Item$2902[ebp], 0
	jmp	SHORT $L2901
$L2904:
	mov	eax, DWORD PTR _Cursor$[ebp]
	mov	DWORD PTR _Cursor$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2906
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Cursor$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2906:
	mov	eax, DWORD PTR _Cursor$[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$2902[ebp], ecx
$L2901:
	mov	edx, DWORD PTR _Item$2902[ebp]
	mov	DWORD PTR _pPort$[ebp], edx
	jmp	$L2591
$L2592:
	mov	DWORD PTR _Next$2919[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	eax, eax
	je	SHORT $L2920
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Cursor$[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2920:
	cmp	DWORD PTR _Cursor$[ebp+8], 0
	je	SHORT $L2918
	mov	edx, DWORD PTR _Cursor$[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T2914[ebp], eax
	mov	ecx, DWORD PTR $T2914[ebp]
	mov	DWORD PTR _Cursor$[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	edx, edx
	je	SHORT $L2922
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Cursor$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2922:
	cmp	DWORD PTR _Cursor$[ebp+8], 0
	je	SHORT $L2918
	mov	ecx, DWORD PTR _Cursor$[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$2919[ebp], edx
$L2918:
	mov	eax, DWORD PTR _Next$2919[ebp]
	mov	DWORD PTR _pPort$[ebp], eax
$L2591:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PBVCIOPort@@@@0_NB ; TCursor<CIOPort const *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2930
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Cursor$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2930:
	xor	eax, eax
	cmp	DWORD PTR _Cursor$[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2593

; 118  : 		if( pPort->getAddress()==iPortAddress )

	mov	ecx, DWORD PTR _pPort$[ebp]
	call	?getAddress@CIOPort@@QBE?BGXZ		; CIOPort::getAddress
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _iPortAddress$[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	eax, ecx
	jne	SHORT $L2594

; 119  : 			break;

	jmp	SHORT $L2593
$L2594:

; 120  : 
; 121  : 	// If port is NULL the port is not allocated.
; 122  : 	if( pPort==NULL )

	jmp	$L2592
$L2593:
	cmp	DWORD PTR _pPort$[ebp], 0
	jne	$L2595

; 124  : 		// Allocate the port for the caller.
; 125  : 		pPort = new CIOPort( iPortAddress );

	push	2
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2883[ebp], eax
	cmp	DWORD PTR $T2883[ebp], 0
	je	SHORT $L2884
	mov	dx, WORD PTR _iPortAddress$[ebp]
	push	edx
	mov	ecx, DWORD PTR $T2883[ebp]
	call	??0CIOPort@@QAE@G@Z			; CIOPort::CIOPort
	mov	DWORD PTR -68+[ebp], eax
	jmp	SHORT $L2885
$L2884:
	mov	DWORD PTR -68+[ebp], 0
$L2885:
	mov	eax, DWORD PTR -68+[ebp]
	mov	DWORD PTR _pPort$[ebp], eax

; 126  : 		m_pAllocatedPorts->insert( pPort );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T2968[ebp], edx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2957[ebp], eax
	cmp	DWORD PTR $T2957[ebp], 0
	je	SHORT $L2958
	mov	eax, DWORD PTR $T2957[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	ecx, DWORD PTR $T2957[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T2957[ebp]
	mov	DWORD PTR -72+[ebp], edx
	jmp	SHORT $L2959
$L2958:
	mov	DWORD PTR -72+[ebp], 0
$L2959:
	mov	eax, DWORD PTR -72+[ebp]
	mov	DWORD PTR _pLink$2952[ebp], eax
	cmp	DWORD PTR _pLink$2952[ebp], 0
	je	SHORT $L2951
	mov	ecx, DWORD PTR _pLink$2952[ebp]
	mov	edx, DWORD PTR _pPort$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR $T2968[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L2964
	mov	ecx, DWORD PTR $T2968[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2946[ebp], edx
	mov	eax, DWORD PTR $T2946[ebp]
	mov	ecx, DWORD PTR _pLink$2952[ebp]
	mov	DWORD PTR [eax+8], ecx
$L2964:
	mov	edx, DWORD PTR $T2968[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2950[ebp], eax
	mov	ecx, DWORD PTR _pLink$2952[ebp]
	mov	edx, DWORD PTR $T2950[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T2968[ebp]
	mov	ecx, DWORD PTR _pLink$2952[ebp]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR $T2968[ebp]
	cmp	DWORD PTR [edx+12], 0
	jne	SHORT $L2955
	mov	eax, DWORD PTR $T2968[ebp]
	mov	ecx, DWORD PTR _pLink$2952[ebp]
	mov	DWORD PTR [eax+12], ecx
$L2955:
	mov	edx, DWORD PTR $T2968[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 1
	mov	ecx, DWORD PTR $T2968[ebp]
	mov	DWORD PTR [ecx+4], eax
$L2951:

; 128  : 	else

	jmp	SHORT $L2598
$L2595:

; 130  : 		// Return NULL indicating the port is in use.
; 131  : 		Application.halt( "CIOManager::requestPort() - Port inuse." );

	push	OFFSET FLAT:$SG2599
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 132  : 		pPort = NULL;

	mov	DWORD PTR _pPort$[ebp], 0
$L2598:

; 134  : 
; 135  : 	//for( DWORD iDelay=0 ; iDelay<20000 ; iDelay++ );
; 136  : 
; 137  : 	// Return port object.
; 138  : 	return pPort;

	mov	edx, DWORD PTR _pPort$[ebp]
	mov	DWORD PTR $T2886[ebp], edx
	mov	eax, DWORD PTR $T2886[ebp]

; 139  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ENDP	; CIOManager::requestPort
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
;	COMDAT ?count@?$TList@PBVCIOPort@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PBVCIOPort@@@@UBE?BKXZ PROC NEAR		; TList<CIOPort const *>::count, COMDAT

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
?count@?$TList@PBVCIOPort@@@@UBE?BKXZ ENDP		; TList<CIOPort const *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ PROC NEAR ; TList<CIOPort const *>::first, COMDAT

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
?first@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ ENDP ; TList<CIOPort const *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ PROC NEAR ; TList<CIOPort const *>::last, COMDAT

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
?last@?$TList@PBVCIOPort@@@@UBEPBVCNode@?$TCollection@PBVCIOPort@@@@XZ ENDP ; TList<CIOPort const *>::last
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PBVCIOPort@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PBVCIOPort@@@@UAEPAXI@Z PROC NEAR	; TCollection<CIOPort const *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PBVCIOPort@@@@6B@ ; TCollection<CIOPort const *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2710
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2710:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PBVCIOPort@@@@UAEPAXI@Z ENDP		; TCollection<CIOPort const *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PBVCIOPort@@@@UAEPAXI@Z
_TEXT	SEGMENT
_pNode$3073 = -8
_pNext$3074 = -12
$T3081 = -16
$T3082 = -20
___flags$ = 8
_this$ = -40
$T2986 = -4
$T2995 = -24
$T3005 = -28
$T3012 = -32
$T3019 = -36
??_G?$TList@PBVCIOPort@@@@UAEPAXI@Z PROC NEAR		; TList<CIOPort const *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PBVCIOPort@@@@6B@ ; TList<CIOPort const *>::`vftable'
$L3067:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L3066
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T2986[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$3073[ebp], eax
$L3075:
	cmp	DWORD PTR _pNode$3073[ebp], 0
	je	SHORT $L3076
	mov	ecx, DWORD PTR _pNode$3073[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T2995[ebp], edx
	mov	eax, DWORD PTR $T2995[ebp]
	cmp	eax, DWORD PTR $T2986[ebp]
	je	SHORT $L3076
	mov	ecx, DWORD PTR _pNode$3073[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$3073[ebp], edx
	jmp	SHORT $L3075
$L3076:
	cmp	DWORD PTR _pNode$3073[ebp], 0
	je	$L3072
	mov	eax, DWORD PTR _pNode$3073[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$3074[ebp], ecx
	mov	edx, DWORD PTR _pNode$3073[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T3005[ebp], eax
	mov	ecx, DWORD PTR $T3005[ebp]
	mov	edx, DWORD PTR _pNext$3074[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$3073[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3012[ebp], ecx
	mov	edx, DWORD PTR _pNext$3074[ebp]
	mov	eax, DWORD PTR $T3012[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$3073[ebp]
	jne	SHORT $L3078
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$3074[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3078:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$3073[ebp]
	jne	SHORT $L3079
	mov	ecx, DWORD PTR _pNode$3073[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3019[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T3019[ebp]
	mov	DWORD PTR [eax+12], ecx
$L3079:
	mov	edx, DWORD PTR _pNode$3073[ebp]
	mov	DWORD PTR $T3082[ebp], edx
	mov	eax, DWORD PTR $T3082[ebp]
	mov	DWORD PTR $T3081[ebp], eax
	cmp	DWORD PTR $T3081[ebp], 0
	je	SHORT $L3083
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3101
	mov	edx, DWORD PTR $T3081[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3101:
	mov	eax, DWORD PTR $T3081[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L3084
$L3083:
	mov	DWORD PTR -44+[ebp], 0
$L3084:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L3072:
	jmp	$L3067
$L3066:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PBVCIOPort@@@@6B@ ; TCollection<CIOPort const *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L2713
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2713:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PBVCIOPort@@@@UAEPAXI@Z ENDP		; TList<CIOPort const *>::`scalar deleting destructor'
_TEXT	ENDS
END
