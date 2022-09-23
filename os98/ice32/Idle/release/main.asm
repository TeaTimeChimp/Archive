	TITLE	E:\WORKSHOP\os98\ice32\Idle\main.cpp
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
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	_main
_TEXT	SEGMENT
_main	PROC NEAR

; 13   : {

	push	ebp
	mov	ebp, esp
$L276:

; 14   : 	// Infinite loop.
; 15   : 	while( true==true );

	mov	eax, 1
	test	eax, eax
	je	SHORT $L277
	jmp	SHORT $L276
$L277:

; 16   : 	
; 17   : 	// Only exits on shutdown.
; 18   : 	return true;

	mov	eax, 1

; 19   : }

	pop	ebp
	ret	0
_main	ENDP
_TEXT	ENDS
END
