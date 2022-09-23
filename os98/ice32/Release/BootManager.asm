	TITLE	E:\WORKSHOP\os98\ice32\BootManager.cpp
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
;	COMDAT ??_GCBootManager@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCProcess@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCBootController@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCursor@PAVCBootController@@@@QAE@AAV?$TCollection@PAVCBootController@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PAVCBootController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PAVCBootController@@@@QAEQAVCBootController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?more@?$TCursor@PAVCBootController@@@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCBootController@@@@QAEQAVCBootController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCBootController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCBootController@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCBootController@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCBootController@@@@QAEXPAVCBootController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCBootController@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCBootController@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCBootController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCBootController@@@@QBEPAVCBootController@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCBootController@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCBootController@@@@QAEXPAVCBootController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCBootController@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCBootController@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCBootController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCBootController@@@@QAEXPAVCBootController@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCBootController@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCBootController@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCBootController@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7?$TList@PAVCBootController@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7CBootManager@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCBootController@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CBootManager@@0QBDB		; CBootManager::m_pClassName
PUBLIC	?m_pVirtualLoadAddress@CBootManager@@0PBXB	; CBootManager::m_pVirtualLoadAddress
CONST	SEGMENT
?m_pClassName@CBootManager@@0QBDB DB 'BootManager::', 00H ; CBootManager::m_pClassName
CONST	ENDS
_DATA	SEGMENT
?m_pVirtualLoadAddress@CBootManager@@0PBXB DD 090000000H ; CBootManager::m_pVirtualLoadAddress
_DATA	ENDS
PUBLIC	??0CBootManager@@QAE@XZ				; CBootManager::CBootManager
PUBLIC	??_7CBootManager@@6B@				; CBootManager::`vftable'
PUBLIC	??_GCBootManager@@UAEPAXI@Z			; CBootManager::`scalar deleting destructor'
PUBLIC	??_ECBootManager@@UAEPAXI@Z			; CBootManager::`vector deleting destructor'
;	COMDAT ??_7CBootManager@@6B@
; File E:\WORKSHOP\os98\ice32\BootManager.cpp
CONST	SEGMENT
??_7CBootManager@@6B@ DD FLAT:??_ECBootManager@@UAEPAXI@Z ; CBootManager::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CBootManager@@QAE@XZ PROC NEAR			; CBootManager::CBootManager

; 29   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootManager@@6B@ ; CBootManager::`vftable'

; 30   : 
; 31   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CBootManager@@QAE@XZ ENDP				; CBootManager::CBootManager
_TEXT	ENDS
PUBLIC	??1CBootManager@@UAE@XZ				; CBootManager::~CBootManager
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCBootManager@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCBootManager@@UAEPAXI@Z PROC NEAR			; CBootManager::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CBootManager@@UAE@XZ			; CBootManager::~CBootManager
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2668
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2668:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCBootManager@@UAEPAXI@Z ENDP			; CBootManager::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CBootManager@@UAE@XZ PROC NEAR			; CBootManager::~CBootManager

; 34   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootManager@@6B@ ; CBootManager::`vftable'

; 35   : 
; 36   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CBootManager@@UAE@XZ ENDP				; CBootManager::~CBootManager
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?boot@CBootManager@@QAE_NXZ			; CBootManager::boot
PUBLIC	?createBootProcess@CBootManager@@QAEPAVCProcess@@PAVCBootDevice@@@Z ; CBootManager::createBootProcess
PUBLIC	?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB	; TCursor<CBootController *>::m_bDebug
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
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
;	COMDAT ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCursor.cpp
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB DB 00H	; TCursor<CBootController *>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
$SG2779	DB	'CBootManager::boot(0) - No bootable devices.', 00H
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
_this$ = -52
_bSuccess$ = -12
_pBootProcess$ = -4
_pBootDevice$ = -16
_pController$ = -8
_Controllers$ = -28
$T3002 = -32
$T3012 = -36
_Item$3018 = -40
$T3030 = -48
_Next$3035 = -44
?boot@CBootManager@@QAE_NXZ PROC NEAR			; CBootManager::boot

; 49   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	mov	DWORD PTR _this$[ebp], ecx

; 50   : 	bool bSuccess;
; 51   : 	CProcess* pBootProcess;
; 52   : 	CBootDevice* pBootDevice;
; 53   : 	CBootController* pController;
; 54   : 
; 55   : 	// Assume boot failure.
; 56   : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 57   : 
; 58   : 	// Request boot device from each controller until booted.
; 59   : 	TCursor<CBootController*> Controllers( *m_pControllers );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3012[ebp], ecx
	cmp	DWORD PTR $T3012[ebp], 0
	jne	SHORT $L3007
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3006:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L3007
	jmp	SHORT $L3006
$L3007:
	mov	eax, DWORD PTR $T3012[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3012[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _Controllers$[ebp], eax
	mov	eax, DWORD PTR $T3012[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3012[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _Controllers$[ebp+4], eax
	mov	eax, DWORD PTR _Controllers$[ebp]
	mov	DWORD PTR _Controllers$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3008
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3008:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	eax, eax
	je	SHORT $L3009
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Controllers$[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3009:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	edx, edx
	je	SHORT $L3004
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Controllers$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3004:

; 60   : 	for( pController=Controllers.first() ; Controllers.more() ; pController=Controllers.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3019
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3019:
	cmp	DWORD PTR _Controllers$[ebp], 0
	jne	SHORT $L3020
	mov	DWORD PTR _Controllers$[ebp+8], 0
	mov	DWORD PTR _Item$3018[ebp], 0
	jmp	SHORT $L3017
$L3020:
	mov	eax, DWORD PTR _Controllers$[ebp]
	mov	DWORD PTR _Controllers$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3022
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3022:
	mov	eax, DWORD PTR _Controllers$[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$3018[ebp], ecx
$L3017:
	mov	edx, DWORD PTR _Item$3018[ebp]
	mov	DWORD PTR _pController$[ebp], edx
	jmp	$L2773
$L2774:
	mov	DWORD PTR _Next$3035[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	eax, eax
	je	SHORT $L3036
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _Controllers$[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3036:
	cmp	DWORD PTR _Controllers$[ebp+8], 0
	je	SHORT $L3034
	mov	edx, DWORD PTR _Controllers$[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3030[ebp], eax
	mov	ecx, DWORD PTR $T3030[ebp]
	mov	DWORD PTR _Controllers$[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	edx, edx
	je	SHORT $L3038
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _Controllers$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3038:
	cmp	DWORD PTR _Controllers$[ebp+8], 0
	je	SHORT $L3034
	mov	ecx, DWORD PTR _Controllers$[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$3035[ebp], edx
$L3034:
	mov	eax, DWORD PTR _Next$3035[ebp]
	mov	DWORD PTR _pController$[ebp], eax
$L2773:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCBootController@@@@0_NB ; TCursor<CBootController *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3046
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _Controllers$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3046:
	xor	eax, eax
	cmp	DWORD PTR _Controllers$[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2775

; 62   : 		// Request boot device from controller.
; 63   : 		pBootDevice = pController->getBootDevice();

	mov	ecx, DWORD PTR _pController$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _pController$[ebp]
	call	DWORD PTR [edx+4]
	mov	DWORD PTR _pBootDevice$[ebp], eax

; 64   : 		if( pBootDevice!=NULL )

	cmp	DWORD PTR _pBootDevice$[ebp], 0
	je	SHORT $L2777

; 66   : 			// Attempt boot from device.
; 67   : 			pBootProcess = createBootProcess( pBootDevice );

	mov	eax, DWORD PTR _pBootDevice$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?createBootProcess@CBootManager@@QAEPAVCProcess@@PAVCBootDevice@@@Z ; CBootManager::createBootProcess
	mov	DWORD PTR _pBootProcess$[ebp], eax

; 68   : 			if( pBootProcess!=NULL )

	cmp	DWORD PTR _pBootProcess$[ebp], 0
	je	SHORT $L2777

; 69   : 				break;

	jmp	SHORT $L2775
$L2777:

; 71   : 	}

	jmp	$L2774
$L2775:

; 72   : 
; 73   : 	// Check for successful boot.
; 74   : 	if( pBootProcess==NULL )

	cmp	DWORD PTR _pBootProcess$[ebp], 0
	jne	SHORT $L2778

; 76   : 		// Failed to boot.
; 77   : 		cout << "CBootManager::boot(0) - No bootable devices." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2779
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 79   : 	else

	jmp	SHORT $L2780
$L2778:

; 81   : 		// Execute the boot process.
; 82   : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2780:

; 84   : 
; 85   : 	// Return boot status.
; 86   : 	return bSuccess;

	mov	cl, BYTE PTR _bSuccess$[ebp]
	mov	BYTE PTR $T3002[ebp], cl
	mov	al, BYTE PTR $T3002[ebp]

; 87   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?boot@CBootManager@@QAE_NXZ ENDP			; CBootManager::boot
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
PUBLIC	?create@CBootManager@@QAE_NXZ			; CBootManager::create
PUBLIC	??_7?$TCollection@PAVCBootController@@@@6B@	; TCollection<CBootController *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCBootController@@@@UAEPAXI@Z ; TCollection<CBootController *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCBootController@@@@UAEPAXI@Z ; TCollection<CBootController *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCBootController@@@@UBE?BKXZ	; TList<CBootController *>::count
PUBLIC	?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ ; TList<CBootController *>::first
PUBLIC	?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ ; TList<CBootController *>::last
PUBLIC	??_7?$TList@PAVCBootController@@@@6B@		; TList<CBootController *>::`vftable'
PUBLIC	??_G?$TList@PAVCBootController@@@@UAEPAXI@Z	; TList<CBootController *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCBootController@@@@UAEPAXI@Z	; TList<CBootController *>::`vector deleting destructor'
EXTRN	?getFloppyDiskController@CSystem@@QAEAAVCFloppyDiskController@@XZ:NEAR ; CSystem::getFloppyDiskController
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
;	COMDAT ??_7?$TList@PAVCBootController@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.h
CONST	SEGMENT
??_7?$TList@PAVCBootController@@@@6B@ DD FLAT:??_E?$TList@PAVCBootController@@@@UAEPAXI@Z ; TList<CBootController *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCBootController@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
	DD	FLAT:?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCBootController@@@@6B@
CONST	SEGMENT
??_7?$TCollection@PAVCBootController@@@@6B@ DD FLAT:??_E?$TCollection@PAVCBootController@@@@UAEPAXI@Z ; TCollection<CBootController *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
$T3079 = -20
$T3083 = -24
_pLink$3092 = -12
$T3097 = -16
$T3101 = -28
$T3102 = -32
_this$ = -36
_bSuccess$ = -4
$T3055 = -8
?create@CBootManager@@QAE_NXZ PROC NEAR			; CBootManager::create

; 100  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx

; 101  : 	bool bSuccess;
; 102  : 
; 103  : 	// Assume creation failure.
; 104  : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 105  : 
; 106  : 	// Allocate the boot controller list.
; 107  : 	m_pControllers = new TList<CBootController*>();	

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3055[ebp], eax
	cmp	DWORD PTR $T3055[ebp], 0
	je	SHORT $L3056
	mov	eax, DWORD PTR $T3055[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCBootController@@@@6B@ ; TCollection<CBootController *>::`vftable'
	mov	ecx, DWORD PTR $T3055[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PAVCBootController@@@@6B@ ; TList<CBootController *>::`vftable'
	mov	edx, DWORD PTR $T3055[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3055[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T3055[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T3055[ebp]
	mov	DWORD PTR -40+[ebp], edx
	jmp	SHORT $L3057
$L3056:
	mov	DWORD PTR -40+[ebp], 0
$L3057:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -40+[ebp]
	mov	DWORD PTR [eax+4], ecx

; 108  : 	if( m_pControllers!=NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+4], 0
	je	$L2788

; 110  : 		// Add known boot devices.
; 111  : 		m_pControllers->insert( &(Application.getSystem().getFloppyDiskController()) );

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getFloppyDiskController@CSystem@@QAEAAVCFloppyDiskController@@XZ ; CSystem::getFloppyDiskController
	mov	DWORD PTR $T3102[ebp], eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3101[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3097[ebp], eax
	cmp	DWORD PTR $T3097[ebp], 0
	je	SHORT $L3098
	mov	edx, DWORD PTR $T3097[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3097[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T3097[ebp]
	mov	DWORD PTR -44+[ebp], ecx
	jmp	SHORT $L3099
$L3098:
	mov	DWORD PTR -44+[ebp], 0
$L3099:
	mov	edx, DWORD PTR -44+[ebp]
	mov	DWORD PTR _pLink$3092[ebp], edx
	cmp	DWORD PTR _pLink$3092[ebp], 0
	je	SHORT $L3091
	mov	eax, DWORD PTR _pLink$3092[ebp]
	mov	ecx, DWORD PTR $T3102[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T3101[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L3088
	mov	eax, DWORD PTR $T3101[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3079[ebp], ecx
	mov	edx, DWORD PTR $T3079[ebp]
	mov	eax, DWORD PTR _pLink$3092[ebp]
	mov	DWORD PTR [edx+8], eax
$L3088:
	mov	ecx, DWORD PTR $T3101[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3083[ebp], edx
	mov	eax, DWORD PTR _pLink$3092[ebp]
	mov	ecx, DWORD PTR $T3083[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T3101[ebp]
	mov	eax, DWORD PTR _pLink$3092[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T3101[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L3095
	mov	edx, DWORD PTR $T3101[ebp]
	mov	eax, DWORD PTR _pLink$3092[ebp]
	mov	DWORD PTR [edx+12], eax
$L3095:
	mov	ecx, DWORD PTR $T3101[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T3101[ebp]
	mov	DWORD PTR [eax+4], edx
$L3091:

; 112  : 
; 113  : 		// Return success.
; 114  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2788:

; 116  : 
; 117  : 	// Return creation success.
; 118  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 119  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CBootManager@@QAE_NXZ ENDP			; CBootManager::create
_TEXT	ENDS
EXTRN	??1CProcess@@QAE@XZ:NEAR			; CProcess::~CProcess
EXTRN	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z:NEAR ; CProcess::allocateMemory
EXTRN	?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z:NEAR ; CProcess::createThread
EXTRN	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z:NEAR	; CProcess::getPhysicalAddress
EXTRN	?createProcess@CProcessManager@@QAEPAVCProcess@@XZ:NEAR ; CProcessManager::createProcess
EXTRN	?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ:NEAR ; CApplication::getProcessManager
EXTRN	?initialise@CPortableExecutable@@QAE_NPAVCProcess@@PAX@Z:NEAR ; CPortableExecutable::initialise
EXTRN	?getEntryPoint@CPortableExecutable@@QAEPAXXZ:NEAR ; CPortableExecutable::getEntryPoint
_DATA	SEGMENT
	ORG $+3
$SG2798	DB	'createBootProcess() - ', 00H
	ORG $+1
$SG2799	DB	'Trying ''', 00H
	ORG $+3
$SG2800	DB	'''.', 00H
	ORG $+1
$SG2803	DB	'Process load area linear address 0x', 00H
$SG2805	DB	'Process load area physical address 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
$T3104 = -48
$T3105 = -52
$T3106 = -56
$T3107 = -60
_pBootDevice$ = 8
_this$ = -64
_iImageSize$ = -8
_pPhysicalImageBase$ = -36
_pAllocatedBase$ = -40
_pProcess$ = -4
_pFunctionName$ = -32
_pExecutable$2806 = -44
?createBootProcess@CBootManager@@QAEPAVCProcess@@PAVCBootDevice@@@Z PROC NEAR ; CBootManager::createBootProcess

; 132  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 133  : 	long iImageSize;
; 134  : 	void* pPhysicalImageBase;	
; 135  : 	void* pAllocatedBase;
; 136  : 	CProcess* pProcess;
; 137  : 	const char pFunctionName[] = "createBootProcess() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2798
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsw
	movsb

; 138  : 
; 139  : 	// Get boot image requirements.
; 140  : 	cout << m_pClassName << pFunctionName << "Trying '" << pBootDevice->getName() << "'." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2800
	mov	eax, DWORD PTR _pBootDevice$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR _pBootDevice$[ebp]
	call	DWORD PTR [edx+4]
	push	eax
	push	OFFSET FLAT:$SG2799
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CBootManager@@0QBDB ; CBootManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 141  : 	iImageSize = pBootDevice->getImageSize();

	mov	ecx, DWORD PTR _pBootDevice$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _pBootDevice$[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _iImageSize$[ebp], eax

; 142  : 
; 143  : 	// Create the process to boot into.
; 144  : 	pProcess = Application.getProcessManager().createProcess();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ ; CApplication::getProcessManager
	mov	ecx, eax
	call	?createProcess@CProcessManager@@QAEPAVCProcess@@XZ ; CProcessManager::createProcess
	mov	DWORD PTR _pProcess$[ebp], eax

; 145  : 
; 146  : 	// Allocate boot image area.
; 147  : 	pAllocatedBase = pProcess->allocateMemory( m_pVirtualLoadAddress, iImageSize, AT_COMMIT, MT_EXECUTE_READ_WRITE );

	push	7
	push	1
	mov	eax, DWORD PTR _iImageSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR ?m_pVirtualLoadAddress@CBootManager@@0PBXB ; CBootManager::m_pVirtualLoadAddress
	push	ecx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
	mov	DWORD PTR _pAllocatedBase$[ebp], eax

; 148  : 	if( pAllocatedBase==m_pVirtualLoadAddress )

	mov	edx, DWORD PTR _pAllocatedBase$[ebp]
	cmp	edx, DWORD PTR ?m_pVirtualLoadAddress@CBootManager@@0PBXB ; CBootManager::m_pVirtualLoadAddress
	jne	$L2801

; 150  : 		// Convert commited process space address to a physical memory address.
; 151  : 		cout << m_pClassName << pFunctionName << "Process load area linear address 0x" << (DWORD)pAllocatedBase << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pAllocatedBase$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2803
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CBootManager@@0QBDB ; CBootManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 152  : 		pPhysicalImageBase = pProcess->getPhysicalAddress( m_pVirtualLoadAddress );

	mov	edx, DWORD PTR ?m_pVirtualLoadAddress@CBootManager@@0PBXB ; CBootManager::m_pVirtualLoadAddress
	push	edx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z ; CProcess::getPhysicalAddress
	mov	DWORD PTR _pPhysicalImageBase$[ebp], eax

; 153  : 		cout << m_pClassName << pFunctionName << "Process load area physical address 0x" << (DWORD)pPhysicalImageBase << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pPhysicalImageBase$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2805
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CBootManager@@0QBDB ; CBootManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 154  : 
; 155  : 		// Load image into process space using physical address.
; 156  : 		// Cannot assume program format so device is responsible for relocation.
; 157  : 		pBootDevice->readBootImage( pPhysicalImageBase );

	mov	edx, DWORD PTR _pPhysicalImageBase$[ebp]
	push	edx
	mov	eax, DWORD PTR _pBootDevice$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR _pBootDevice$[ebp]
	call	DWORD PTR [edx+12]

; 158  : 
; 159  : 		// Map-image - this in the opposite of what it says above but is temporary.
; 160  : 		CPortableExecutable* pExecutable = new CPortableExecutable();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3104[ebp], eax
	mov	eax, DWORD PTR $T3104[ebp]
	mov	DWORD PTR _pExecutable$2806[ebp], eax

; 161  : 		pExecutable->initialise( pProcess, pPhysicalImageBase );

	mov	ecx, DWORD PTR _pPhysicalImageBase$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pProcess$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pExecutable$2806[ebp]
	call	?initialise@CPortableExecutable@@QAE_NPAVCProcess@@PAX@Z ; CPortableExecutable::initialise

; 162  : 
; 163  : 		// Dump boot image to the screen.
; 164  : 		//Application.getSystem().getCPU().dumpMemory( pPhysicalImageBase );
; 165  : 
; 166  : 		// Prepare a thread for execution at the entry point.
; 167  : 		pProcess->createThread( (void(*)())(pExecutable->getEntryPoint()) );

	mov	ecx, DWORD PTR _pExecutable$2806[ebp]
	call	?getEntryPoint@CPortableExecutable@@QAEPAXXZ ; CPortableExecutable::getEntryPoint
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z ; CProcess::createThread

; 168  : 
; 169  : 		// Free executable parser.
; 170  : 		delete pExecutable;

	mov	eax, DWORD PTR _pExecutable$2806[ebp]
	mov	DWORD PTR $T3105[ebp], eax
	mov	ecx, DWORD PTR $T3105[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4

; 171  : 		pExecutable = NULL;

	mov	DWORD PTR _pExecutable$2806[ebp], 0

; 173  : 	else

	jmp	SHORT $L2811
$L2801:

; 175  : 		// Allocate failed.
; 176  : 		delete pProcess;

	mov	edx, DWORD PTR _pProcess$[ebp]
	mov	DWORD PTR $T3107[ebp], edx
	mov	eax, DWORD PTR $T3107[ebp]
	mov	DWORD PTR $T3106[ebp], eax
	cmp	DWORD PTR $T3106[ebp], 0
	je	SHORT $L3108
	mov	ecx, DWORD PTR $T3106[ebp]
	call	??1CProcess@@QAE@XZ			; CProcess::~CProcess
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3112
	mov	edx, DWORD PTR $T3106[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3112:
	mov	eax, DWORD PTR $T3106[ebp]
	mov	DWORD PTR -68+[ebp], eax
	jmp	SHORT $L3109
$L3108:
	mov	DWORD PTR -68+[ebp], 0
$L3109:

; 177  : 		pProcess = NULL;

	mov	DWORD PTR _pProcess$[ebp], 0
$L2811:

; 179  : 
; 180  : 	// Return process object or NULL.
; 181  : 	return pProcess;

	mov	eax, DWORD PTR _pProcess$[ebp]

; 182  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?createBootProcess@CBootManager@@QAEPAVCProcess@@PAVCBootDevice@@@Z ENDP ; CBootManager::createBootProcess
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCBootController@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCBootController@@@@UBE?BKXZ PROC NEAR	; TList<CBootController *>::count, COMDAT

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
?count@?$TList@PAVCBootController@@@@UBE?BKXZ ENDP	; TList<CBootController *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ PROC NEAR ; TList<CBootController *>::first, COMDAT

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
?first@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ ENDP ; TList<CBootController *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ PROC NEAR ; TList<CBootController *>::last, COMDAT

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
?last@?$TList@PAVCBootController@@@@UBEPBVCNode@?$TCollection@PAVCBootController@@@@XZ ENDP ; TList<CBootController *>::last
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCBootController@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCBootController@@@@UAEPAXI@Z PROC NEAR ; TCollection<CBootController *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCBootController@@@@6B@ ; TCollection<CBootController *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2911
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2911:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCBootController@@@@UAEPAXI@Z ENDP	; TCollection<CBootController *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCBootController@@@@UAEPAXI@Z
_TEXT	SEGMENT
$T3126 = -4
$T3135 = -24
$T3145 = -28
$T3152 = -32
$T3159 = -36
$T3210 = -16
$T3211 = -20
_pNode$3236 = -8
_pNext$3237 = -12
___flags$ = 8
_this$ = -40
??_G?$TList@PAVCBootController@@@@UAEPAXI@Z PROC NEAR	; TList<CBootController *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCBootController@@@@6B@ ; TList<CBootController *>::`vftable'
$L3246:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L3245
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T3126[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$3236[ebp], eax
$L3238:
	cmp	DWORD PTR _pNode$3236[ebp], 0
	je	SHORT $L3239
	mov	ecx, DWORD PTR _pNode$3236[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T3135[ebp], edx
	mov	eax, DWORD PTR $T3135[ebp]
	cmp	eax, DWORD PTR $T3126[ebp]
	je	SHORT $L3239
	mov	ecx, DWORD PTR _pNode$3236[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$3236[ebp], edx
	jmp	SHORT $L3238
$L3239:
	cmp	DWORD PTR _pNode$3236[ebp], 0
	je	$L3235
	mov	eax, DWORD PTR _pNode$3236[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$3237[ebp], ecx
	mov	edx, DWORD PTR _pNode$3236[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T3145[ebp], eax
	mov	ecx, DWORD PTR $T3145[ebp]
	mov	edx, DWORD PTR _pNext$3237[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$3236[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3152[ebp], ecx
	mov	edx, DWORD PTR _pNext$3237[ebp]
	mov	eax, DWORD PTR $T3152[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$3236[ebp]
	jne	SHORT $L3241
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$3237[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3241:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$3236[ebp]
	jne	SHORT $L3242
	mov	ecx, DWORD PTR _pNode$3236[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3159[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T3159[ebp]
	mov	DWORD PTR [eax+12], ecx
$L3242:
	mov	edx, DWORD PTR _pNode$3236[ebp]
	mov	DWORD PTR $T3211[ebp], edx
	mov	eax, DWORD PTR $T3211[ebp]
	mov	DWORD PTR $T3210[ebp], eax
	cmp	DWORD PTR $T3210[ebp], 0
	je	SHORT $L3212
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3233
	mov	edx, DWORD PTR $T3210[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3233:
	mov	eax, DWORD PTR $T3210[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L3213
$L3212:
	mov	DWORD PTR -44+[ebp], 0
$L3213:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L3235:
	jmp	$L3246
$L3245:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCBootController@@@@6B@ ; TCollection<CBootController *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L2914
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2914:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCBootController@@@@UAEPAXI@Z ENDP	; TList<CBootController *>::`scalar deleting destructor'
_TEXT	ENDS
END
