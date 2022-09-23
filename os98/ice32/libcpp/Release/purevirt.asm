	TITLE	E:\WORKSHOP\os98\ice32\libcpp\purevirt.cpp
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
;	COMDAT ??_C@_0BP@FDPM@?6Pure?5virtual?5function?5called?4?$AA@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT __purecall
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	__purecall
PUBLIC	??_C@_0BP@FDPM@?6Pure?5virtual?5function?5called?4?$AA@ ; `string'
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
;	COMDAT ??_C@_0BP@FDPM@?6Pure?5virtual?5function?5called?4?$AA@
; File e:\workshop\os98\ice32\libcpp\purevirt.cpp
CONST	SEGMENT
??_C@_0BP@FDPM@?6Pure?5virtual?5function?5called?4?$AA@ DB 0aH, 'Pure vir'
	DB	'tual function called.', 00H			; `string'
CONST	ENDS
;	COMDAT __purecall
_TEXT	SEGMENT
__purecall PROC NEAR					; COMDAT

; 14   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 15   : 	// Display message and never return.
; 16   : 	cout << "\nPure virtual function called.";

	push	OFFSET FLAT:??_C@_0BP@FDPM@?6Pure?5virtual?5function?5called?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
$L322:

; 17   : 	while(1);

	mov	eax, 1
	test	eax, eax
	je	SHORT $L323
	jmp	SHORT $L322
$L323:

; 18   : 
; 19   : 	// Never returns.
; 20   : 	return 0;

	xor	eax, eax

; 21   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
__purecall ENDP
_TEXT	ENDS
END
