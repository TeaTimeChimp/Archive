	TITLE	E:\WORKSHOP\os98\ice32\libc\malloc.cpp
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
_BSS	SEGMENT PARA USE32 PUBLIC 'BSS'
_BSS	ENDS
$$SYMBOLS	SEGMENT BYTE USE32 'DEBSYM'
$$SYMBOLS	ENDS
$$TYPES	SEGMENT BYTE USE32 'DEBTYP'
$$TYPES	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
CRT$XCA	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCA	ENDS
CRT$XCU	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCU	ENDS
CRT$XCL	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCL	ENDS
CRT$XCC	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCC	ENDS
CRT$XCZ	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCZ	ENDS
;	COMDAT _$E1
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E2
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E3
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT _$E4
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?free@@YAPAXPAX@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?malloc@@YAPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS, CRT$XCA, CRT$XCU, CRT$XCL, CRT$XCC, CRT$XCZ
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?Heap@@3VCHeap@@A				; Heap
_BSS	SEGMENT
?Heap@@3VCHeap@@A DB 010H DUP (?)			; Heap
_BSS	ENDS
CRT$XCU	SEGMENT
_$S5	DD	FLAT:_$E4
CRT$XCU	ENDS
;	COMDAT _$E4
_TEXT	SEGMENT
_$E4	PROC NEAR					; COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	call	_$E1
	call	_$E3
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_$E4	ENDP
_TEXT	ENDS
EXTRN	??0CHeap@@QAE@PAX@Z:NEAR			; CHeap::CHeap
;	COMDAT _$E1
_TEXT	SEGMENT
_$E1	PROC NEAR					; COMDAT

; 5    : CHeap Heap( (void*)0x00100000 );

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	push	1048576					; 00100000H
	mov	ecx, OFFSET FLAT:?Heap@@3VCHeap@@A
	call	??0CHeap@@QAE@PAX@Z			; CHeap::CHeap
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_$E1	ENDP
_TEXT	ENDS
EXTRN	_atexit:NEAR
;	COMDAT _$E3
_TEXT	SEGMENT
_$E3	PROC NEAR					; COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	push	OFFSET FLAT:_$E2
	call	_atexit
	add	esp, 4
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_$E3	ENDP
_TEXT	ENDS
EXTRN	??1CHeap@@QAE@XZ:NEAR				; CHeap::~CHeap
;	COMDAT _$E2
_TEXT	SEGMENT
_$E2	PROC NEAR					; COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	mov	ecx, OFFSET FLAT:?Heap@@3VCHeap@@A
	call	??1CHeap@@QAE@XZ			; CHeap::~CHeap
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_$E2	ENDP
_TEXT	ENDS
PUBLIC	?free@@YAPAXPAX@Z				; free
EXTRN	?free@CHeap@@QAEPAXPAX@Z:NEAR			; CHeap::free
;	COMDAT ?free@@YAPAXPAX@Z
_TEXT	SEGMENT
_pDataSpace$ = 8
?free@@YAPAXPAX@Z PROC NEAR				; free, COMDAT

; 9    : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 10   : 	// Call through to heap storage free method.
; 11   : 	return Heap.free( pDataSpace );

	mov	eax, DWORD PTR _pDataSpace$[ebp]
	push	eax
	mov	ecx, OFFSET FLAT:?Heap@@3VCHeap@@A
	call	?free@CHeap@@QAEPAXPAX@Z		; CHeap::free

; 12   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?free@@YAPAXPAX@Z ENDP					; free
_TEXT	ENDS
PUBLIC	?malloc@@YAPAXI@Z				; malloc
EXTRN	?allocate@CHeap@@QAEPAXK@Z:NEAR			; CHeap::allocate
;	COMDAT ?malloc@@YAPAXI@Z
_TEXT	SEGMENT
_iBlockSize$ = 8
?malloc@@YAPAXI@Z PROC NEAR				; malloc, COMDAT

; 26   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi

; 27   : 	// Call through to heap storage allocate method.
; 28   : 	return Heap.allocate( iBlockSize );

	mov	eax, DWORD PTR _iBlockSize$[ebp]
	push	eax
	mov	ecx, OFFSET FLAT:?Heap@@3VCHeap@@A
	call	?allocate@CHeap@@QAEPAXK@Z		; CHeap::allocate

; 29   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?malloc@@YAPAXI@Z ENDP					; malloc
_TEXT	ENDS
END
