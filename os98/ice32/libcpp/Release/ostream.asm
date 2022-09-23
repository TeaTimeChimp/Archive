	TITLE	E:\WORKSHOP\os98\ice32\libcpp\ostream.cpp
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
$$SYMBOLS	SEGMENT BYTE USE32 'DEBSYM'
$$SYMBOLS	ENDS
$$TYPES	SEGMENT BYTE USE32 'DEBTYP'
$$TYPES	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0ostream@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_Gostream@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1ostream@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@E@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@G@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@K@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@D@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@J@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??6ostream@@QAEAAV0@PBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?flush@ostream@@UAEAAV1@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@D@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@E@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@G@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@K@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@PBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7ostream@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?Output@ostream@@EAEAAV1@D@Z			; ostream::Output
PUBLIC	?Output@ostream@@EAEAAV1@E@Z			; ostream::Output
PUBLIC	?Output@ostream@@EAEAAV1@G@Z			; ostream::Output
PUBLIC	?Output@ostream@@EAEAAV1@K@Z			; ostream::Output
PUBLIC	?Output@ostream@@EAEAAV1@PBD@Z			; ostream::Output
PUBLIC	??0ostream@@QAE@XZ				; ostream::ostream
PUBLIC	?flush@ostream@@UAEAAV1@XZ			; ostream::flush
PUBLIC	??_7ostream@@6B@				; ostream::`vftable'
PUBLIC	??_Gostream@@UAEPAXI@Z				; ostream::`scalar deleting destructor'
PUBLIC	??_Eostream@@UAEPAXI@Z				; ostream::`vector deleting destructor'
;	COMDAT ??_7ostream@@6B@
; File e:\workshop\os98\ice32\libcpp\ostream.cpp
CONST	SEGMENT
??_7ostream@@6B@ DD FLAT:?Output@ostream@@EAEAAV1@PBD@Z	; ostream::`vftable'
	DD	FLAT:?Output@ostream@@EAEAAV1@K@Z
	DD	FLAT:?Output@ostream@@EAEAAV1@G@Z
	DD	FLAT:?Output@ostream@@EAEAAV1@E@Z
	DD	FLAT:?Output@ostream@@EAEAAV1@D@Z
	DD	FLAT:??_Eostream@@UAEPAXI@Z
	DD	FLAT:?flush@ostream@@UAEAAV1@XZ
CONST	ENDS
;	COMDAT ??0ostream@@QAE@XZ
_TEXT	SEGMENT
_this$ = -4
??0ostream@@QAE@XZ PROC NEAR				; ostream::ostream, COMDAT

; 13   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ostream@@6B@ ; ostream::`vftable'

; 14   : 
; 15   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0ostream@@QAE@XZ ENDP					; ostream::ostream
_TEXT	ENDS
PUBLIC	??1ostream@@UAE@XZ				; ostream::~ostream
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_Gostream@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_Gostream@@UAEPAXI@Z PROC NEAR			; ostream::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1ostream@@UAE@XZ			; ostream::~ostream
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L329
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L329:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??_Gostream@@UAEPAXI@Z ENDP				; ostream::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??1ostream@@UAE@XZ
_TEXT	SEGMENT
_this$ = -4
??1ostream@@UAE@XZ PROC NEAR				; ostream::~ostream, COMDAT

; 18   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ostream@@6B@ ; ostream::`vftable'

; 19   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??1ostream@@UAE@XZ ENDP					; ostream::~ostream
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z		; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z
_TEXT	SEGMENT
_pOStreamFunction$ = 8
_this$ = -4
??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z PROC NEAR		; ostream::operator<<, COMDAT

; 23   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 24   : 	// Return self-reference.
; 25   : 	return pOStreamFunction(*this);

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	DWORD PTR _pOStreamFunction$[ebp]
	add	esp, 4

; 26   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z ENDP		; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@E@Z				; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@E@Z
_TEXT	SEGMENT
_Byte$ = 8
_this$ = -4
??6ostream@@QAEAAV0@E@Z PROC NEAR			; ostream::operator<<, COMDAT

; 30   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 31   : 	// Output byte.
; 32   : 	return Output( Byte );

	mov	al, BYTE PTR _Byte$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 33   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@E@Z ENDP				; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@G@Z				; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@G@Z
_TEXT	SEGMENT
_Word$ = 8
_this$ = -4
??6ostream@@QAEAAV0@G@Z PROC NEAR			; ostream::operator<<, COMDAT

; 36   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 37   : 	// Output word (2 bytes).
; 38   : 	return Output( Word );

	mov	ax, WORD PTR _Word$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+8]

; 39   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@G@Z ENDP				; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@K@Z				; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@K@Z
_TEXT	SEGMENT
_DWord$ = 8
_this$ = -4
??6ostream@@QAEAAV0@K@Z PROC NEAR			; ostream::operator<<, COMDAT

; 42   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 43   : 	// Output double word (4 bytes).
; 44   : 	return Output( DWord );

	mov	eax, DWORD PTR _DWord$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+4]

; 45   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@K@Z ENDP				; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@D@Z				; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@D@Z
_TEXT	SEGMENT
_iCharacter$ = 8
_this$ = -4
??6ostream@@QAEAAV0@D@Z PROC NEAR			; ostream::operator<<, COMDAT

; 58   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 59   : 	// Return self-reference.
; 60   : 	return Output( iCharacter );

	mov	al, BYTE PTR _iCharacter$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+16]

; 61   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@D@Z ENDP				; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@J@Z				; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@J@Z
_TEXT	SEGMENT
_DWord$ = 8
_this$ = -4
??6ostream@@QAEAAV0@J@Z PROC NEAR			; ostream::operator<<, COMDAT

; 65   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 66   : 	// Output double word (4 bytes).
; 67   : 	return Output( (unsigned long)DWord );

	mov	eax, DWORD PTR _DWord$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+4]

; 68   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@J@Z ENDP				; ostream::operator<<
_TEXT	ENDS
PUBLIC	??6ostream@@QAEAAV0@PBD@Z			; ostream::operator<<
;	COMDAT ??6ostream@@QAEAAV0@PBD@Z
_TEXT	SEGMENT
_pString$ = 8
_this$ = -4
??6ostream@@QAEAAV0@PBD@Z PROC NEAR			; ostream::operator<<, COMDAT

; 71   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 72   : 	// Output character string.
; 73   : 	return Output( pString );

	mov	eax, DWORD PTR _pString$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx]

; 74   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??6ostream@@QAEAAV0@PBD@Z ENDP				; ostream::operator<<
_TEXT	ENDS
;	COMDAT ?flush@ostream@@UAEAAV1@XZ
_TEXT	SEGMENT
_this$ = -4
?flush@ostream@@UAEAAV1@XZ PROC NEAR			; ostream::flush, COMDAT

; 93   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 94   : 	// Return self-reference.
; 95   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 96   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?flush@ostream@@UAEAAV1@XZ ENDP				; ostream::flush
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@D@Z
_TEXT	SEGMENT
_this$ = -4
?Output@ostream@@EAEAAV1@D@Z PROC NEAR			; ostream::Output, COMDAT

; 99   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 100  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 101  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream@@EAEAAV1@D@Z ENDP			; ostream::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@E@Z
_TEXT	SEGMENT
_this$ = -4
?Output@ostream@@EAEAAV1@E@Z PROC NEAR			; ostream::Output, COMDAT

; 104  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 105  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 106  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream@@EAEAAV1@E@Z ENDP			; ostream::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@G@Z
_TEXT	SEGMENT
_this$ = -4
?Output@ostream@@EAEAAV1@G@Z PROC NEAR			; ostream::Output, COMDAT

; 109  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 110  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 111  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream@@EAEAAV1@G@Z ENDP			; ostream::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@K@Z
_TEXT	SEGMENT
_this$ = -4
?Output@ostream@@EAEAAV1@K@Z PROC NEAR			; ostream::Output, COMDAT

; 114  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 115  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 116  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream@@EAEAAV1@K@Z ENDP			; ostream::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream@@EAEAAV1@PBD@Z
_TEXT	SEGMENT
_this$ = -4
?Output@ostream@@EAEAAV1@PBD@Z PROC NEAR		; ostream::Output, COMDAT

; 119  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 120  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 121  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream@@EAEAAV1@PBD@Z ENDP			; ostream::Output
_TEXT	ENDS
END
