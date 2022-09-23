	TITLE	E:\WORKSHOP\os98\ice32\libcpp\NEW.CPP
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
;	COMDAT ??2@YAPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??2@YAPAXI@Z					; operator new
EXTRN	?malloc@@YAPAXI@Z:NEAR				; malloc
;	COMDAT ??2@YAPAXI@Z
_TEXT	SEGMENT
_cb$ = 8
??2@YAPAXI@Z PROC NEAR					; operator new, COMDAT

; 13   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 14   :         return malloc( cb );

	mov	eax, DWORD PTR _cb$[ebp]
	push	eax
	call	?malloc@@YAPAXI@Z			; malloc
	add	esp, 4

; 15   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??2@YAPAXI@Z ENDP					; operator new
_TEXT	ENDS
END
