	TITLE	E:\WORKSHOP\os98\ice32\libc\crt0.cpp
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
;	COMDAT _atexit
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _NtProcessStartup
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _mainCRTStartup
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?_outp@@YAXGE@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_iX@@3HA					; m_iX
PUBLIC	?m_iY@@3HA					; m_iY
_BSS	SEGMENT
?m_iX@@3HA DD	01H DUP (?)				; m_iX
?m_iY@@3HA DD	01H DUP (?)				; m_iY
_BSS	ENDS
PUBLIC	_atexit
;	COMDAT _atexit
_TEXT	SEGMENT
_atexit	PROC NEAR					; COMDAT

; 18   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 19   : 	return 1;

	mov	eax, 1

; 20   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_atexit	ENDP
_TEXT	ENDS
PUBLIC	_NtProcessStartup
EXTRN	_main:NEAR
;	COMDAT _NtProcessStartup
_TEXT	SEGMENT
_NtProcessStartup PROC NEAR				; COMDAT

; 33   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 34   : 	// Call main function.
; 35   : 	main();

	call	_main

; 36   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_NtProcessStartup ENDP
_TEXT	ENDS
PUBLIC	_mainCRTStartup
;	COMDAT _mainCRTStartup
_TEXT	SEGMENT
_mainCRTStartup PROC NEAR				; COMDAT

; 41   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 42   : 	// Call main function.
; 43   : 	main();

	call	_main

; 44   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_mainCRTStartup ENDP
_TEXT	ENDS
PUBLIC	?_outp@@YAXGE@Z					; _outp
;	COMDAT ?_outp@@YAXGE@Z
_TEXT	SEGMENT
_Port$ = 8
_Char$ = 12
?_outp@@YAXGE@Z PROC NEAR				; _outp, COMDAT

; 48   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 49   : 	__asm mov dx, Port

	mov	dx, WORD PTR _Port$[ebp]

; 50   : 	__asm mov al, Char

	mov	al, BYTE PTR _Char$[ebp]

; 51   : 	__asm out dx, al

	out	dx, al

; 52   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?_outp@@YAXGE@Z ENDP					; _outp
_TEXT	ENDS
END
