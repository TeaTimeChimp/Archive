	TITLE	E:\WORKSHOP\os98\ice32\BootController.cpp
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
;	COMDAT ??_GCBootController@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CBootController@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CBootController@@QAE@XZ			; CBootController::CBootController
PUBLIC	??_7CBootController@@6B@			; CBootController::`vftable'
PUBLIC	??_GCBootController@@UAEPAXI@Z			; CBootController::`scalar deleting destructor'
PUBLIC	??_ECBootController@@UAEPAXI@Z			; CBootController::`vector deleting destructor'
EXTRN	__purecall:NEAR
;	COMDAT ??_7CBootController@@6B@
; File E:\WORKSHOP\os98\ice32\BootController.cpp
CONST	SEGMENT
??_7CBootController@@6B@ DD FLAT:??_ECBootController@@UAEPAXI@Z ; CBootController::`vftable'
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CBootController@@QAE@XZ PROC NEAR			; CBootController::CBootController

; 12   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootController@@6B@ ; CBootController::`vftable'

; 13   : 
; 14   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CBootController@@QAE@XZ ENDP				; CBootController::CBootController
_TEXT	ENDS
PUBLIC	??1CBootController@@UAE@XZ			; CBootController::~CBootController
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCBootController@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCBootController@@UAEPAXI@Z PROC NEAR		; CBootController::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CBootController@@UAE@XZ		; CBootController::~CBootController
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L261
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L261:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCBootController@@UAEPAXI@Z ENDP			; CBootController::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CBootController@@UAE@XZ PROC NEAR			; CBootController::~CBootController

; 17   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootController@@6B@ ; CBootController::`vftable'

; 18   : 
; 19   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CBootController@@UAE@XZ ENDP				; CBootController::~CBootController
_TEXT	ENDS
END
