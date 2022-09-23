	TITLE	E:\WORKSHOP\os98\ice32\BootDevice.cpp
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
;	COMDAT ??_GCBootDevice@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CBootDevice@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CBootDevice@@QAE@XZ				; CBootDevice::CBootDevice
PUBLIC	??_7CBootDevice@@6B@				; CBootDevice::`vftable'
PUBLIC	??_GCBootDevice@@UAEPAXI@Z			; CBootDevice::`scalar deleting destructor'
PUBLIC	??_ECBootDevice@@UAEPAXI@Z			; CBootDevice::`vector deleting destructor'
EXTRN	__purecall:NEAR
;	COMDAT ??_7CBootDevice@@6B@
; File E:\WORKSHOP\os98\ice32\BootDevice.cpp
CONST	SEGMENT
??_7CBootDevice@@6B@ DD FLAT:??_ECBootDevice@@UAEPAXI@Z	; CBootDevice::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CBootDevice@@QAE@XZ PROC NEAR			; CBootDevice::CBootDevice

; 12   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootDevice@@6B@ ; CBootDevice::`vftable'

; 13   : 
; 14   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CBootDevice@@QAE@XZ ENDP				; CBootDevice::CBootDevice
_TEXT	ENDS
PUBLIC	??1CBootDevice@@UAE@XZ				; CBootDevice::~CBootDevice
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCBootDevice@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCBootDevice@@UAEPAXI@Z PROC NEAR			; CBootDevice::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CBootDevice@@UAE@XZ			; CBootDevice::~CBootDevice
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L242
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L242:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCBootDevice@@UAEPAXI@Z ENDP				; CBootDevice::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CBootDevice@@UAE@XZ PROC NEAR			; CBootDevice::~CBootDevice

; 17   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CBootDevice@@6B@ ; CBootDevice::`vftable'

; 18   : 
; 19   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CBootDevice@@UAE@XZ ENDP				; CBootDevice::~CBootDevice
_TEXT	ENDS
END
