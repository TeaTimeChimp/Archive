	TITLE	E:\WORKSHOP\os98\ice32\libcpp\delete.cpp
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
;	COMDAT ??3@YAXPAX@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??3@YAXPAX@Z					; operator delete
EXTRN	?free@@YAPAXPAX@Z:NEAR				; free
;	COMDAT ??3@YAXPAX@Z
_TEXT	SEGMENT
_pObject$ = 8
??3@YAXPAX@Z PROC NEAR					; operator delete, COMDAT

; 4    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 5    : 	// Delete object space.
; 6    : 	free( pObject );

	mov	eax, DWORD PTR _pObject$[ebp]
	push	eax
	call	?free@@YAPAXPAX@Z			; free
	add	esp, 4

; 7    : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??3@YAXPAX@Z ENDP					; operator delete
_TEXT	ENDS
END
