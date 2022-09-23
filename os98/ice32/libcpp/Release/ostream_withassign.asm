	TITLE	E:\WORKSHOP\os98\ice32\libcpp\ostream_withassign.cpp
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
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
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
;	COMDAT ??0ostream_withassign@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_Gostream_withassign@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1ostream_withassign@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?flush@ostream_withassign@@UAEAAVostream@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@PBD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@E@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@G@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@K@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@D@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?PrintChar@ostream_withassign@@AAEXD@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7ostream_withassign@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS, CRT$XCA, CRT$XCU, CRT$XCL, CRT$XCC, CRT$XCZ
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?cout@@3Vostream_withassign@@A			; cout
_BSS	SEGMENT
?cout@@3Vostream_withassign@@A DB 018H DUP (?)		; cout
_BSS	ENDS
CRT$XCU	SEGMENT
_$S5	DD	FLAT:_$E4
CRT$XCU	ENDS
CONST	SEGMENT
_m_pHex	DB	'0123456789abcdef', 00H
CONST	ENDS
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
PUBLIC	??0ostream_withassign@@QAE@XZ			; ostream_withassign::ostream_withassign
;	COMDAT _$E1
_TEXT	SEGMENT
_$E1	PROC NEAR					; COMDAT

; 16   : ostream_withassign cout;

	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??0ostream_withassign@@QAE@XZ		; ostream_withassign::ostream_withassign
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
PUBLIC	??1ostream_withassign@@UAE@XZ			; ostream_withassign::~ostream_withassign
;	COMDAT _$E2
_TEXT	SEGMENT
_$E2	PROC NEAR					; COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 64					; 00000040H
	push	ebx
	push	esi
	push	edi
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??1ostream_withassign@@UAE@XZ		; ostream_withassign::~ostream_withassign
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
_$E2	ENDP
_TEXT	ENDS
PUBLIC	?Output@ostream_withassign@@EAEAAVostream@@D@Z	; ostream_withassign::Output
PUBLIC	?Output@ostream_withassign@@EAEAAVostream@@E@Z	; ostream_withassign::Output
PUBLIC	?Output@ostream_withassign@@EAEAAVostream@@G@Z	; ostream_withassign::Output
PUBLIC	?Output@ostream_withassign@@EAEAAVostream@@K@Z	; ostream_withassign::Output
PUBLIC	?Output@ostream_withassign@@EAEAAVostream@@PBD@Z ; ostream_withassign::Output
PUBLIC	?flush@ostream_withassign@@UAEAAVostream@@XZ	; ostream_withassign::flush
PUBLIC	??_7ostream_withassign@@6B@			; ostream_withassign::`vftable'
PUBLIC	??_Gostream_withassign@@UAEPAXI@Z		; ostream_withassign::`scalar deleting destructor'
PUBLIC	??_Eostream_withassign@@UAEPAXI@Z		; ostream_withassign::`vector deleting destructor'
EXTRN	??0ostream@@QAE@XZ:NEAR				; ostream::ostream
;	COMDAT ??_7ostream_withassign@@6B@
; File e:\workshop\os98\ice32\libcpp\ostream_withassign.cpp
CONST	SEGMENT
??_7ostream_withassign@@6B@ DD FLAT:?Output@ostream_withassign@@EAEAAVostream@@PBD@Z ; ostream_withassign::`vftable'
	DD	FLAT:?Output@ostream_withassign@@EAEAAVostream@@K@Z
	DD	FLAT:?Output@ostream_withassign@@EAEAAVostream@@G@Z
	DD	FLAT:?Output@ostream_withassign@@EAEAAVostream@@E@Z
	DD	FLAT:?Output@ostream_withassign@@EAEAAVostream@@D@Z
	DD	FLAT:??_Eostream_withassign@@UAEPAXI@Z
	DD	FLAT:?flush@ostream_withassign@@UAEAAVostream@@XZ
CONST	ENDS
;	COMDAT ??0ostream_withassign@@QAE@XZ
_TEXT	SEGMENT
_this$ = -4
??0ostream_withassign@@QAE@XZ PROC NEAR			; ostream_withassign::ostream_withassign, COMDAT

; 22   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0ostream@@QAE@XZ			; ostream::ostream
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ostream_withassign@@6B@ ; ostream_withassign::`vftable'

; 23   : 	m_iX = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 24   : 	m_iY = 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0

; 25   : 	m_iWidth = 80;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 80			; 00000050H

; 26   : 	m_iHeight = 25;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+16], 25			; 00000019H

; 27   : 	m_iBytesPerScanline = 160;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+20], 160			; 000000a0H

; 28   : 
; 29   : #ifdef WIN32
; 30   : 	// Map text screen memory.
; 31   : 	VirtualAlloc( (void*)0x000b8000, 80*2*25, MEM_COMMIT, PAGE_READWRITE );
; 32   : #endif
; 33   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??0ostream_withassign@@QAE@XZ ENDP			; ostream_withassign::ostream_withassign
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_Gostream_withassign@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_Gostream_withassign@@UAEPAXI@Z PROC NEAR		; ostream_withassign::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1ostream_withassign@@UAE@XZ		; ostream_withassign::~ostream_withassign
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L338
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L338:
	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??_Gostream_withassign@@UAEPAXI@Z ENDP			; ostream_withassign::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1ostream@@UAE@XZ:NEAR				; ostream::~ostream
;	COMDAT ??1ostream_withassign@@UAE@XZ
_TEXT	SEGMENT
_this$ = -4
??1ostream_withassign@@UAE@XZ PROC NEAR			; ostream_withassign::~ostream_withassign, COMDAT

; 36   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7ostream_withassign@@6B@ ; ostream_withassign::`vftable'

; 37   : 
; 38   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1ostream@@UAE@XZ			; ostream::~ostream
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??1ostream_withassign@@UAE@XZ ENDP			; ostream_withassign::~ostream_withassign
_TEXT	ENDS
;	COMDAT ?flush@ostream_withassign@@UAEAAVostream@@XZ
_TEXT	SEGMENT
_this$ = -4
?flush@ostream_withassign@@UAEAAVostream@@XZ PROC NEAR	; ostream_withassign::flush, COMDAT

; 51   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 52   : 	// Return self-reference.
; 53   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 54   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?flush@ostream_withassign@@UAEAAVostream@@XZ ENDP	; ostream_withassign::flush
_TEXT	ENDS
PUBLIC	?PrintChar@ostream_withassign@@AAEXD@Z		; ostream_withassign::PrintChar
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@PBD@Z
_TEXT	SEGMENT
_pString$ = 8
_this$ = -4
?Output@ostream_withassign@@EAEAAVostream@@PBD@Z PROC NEAR ; ostream_withassign::Output, COMDAT

; 58   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx
$L350:

; 59   : 	while( *pString!='\0' )

	mov	eax, DWORD PTR _pString$[ebp]
	movsx	ecx, BYTE PTR [eax]
	test	ecx, ecx
	je	SHORT $L351

; 61   : 		PrintChar( *pString ); 

	mov	edx, DWORD PTR _pString$[ebp]
	mov	al, BYTE PTR [edx]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?PrintChar@ostream_withassign@@AAEXD@Z	; ostream_withassign::PrintChar

; 62   : 		pString++;

	mov	ecx, DWORD PTR _pString$[ebp]
	add	ecx, 1
	mov	DWORD PTR _pString$[ebp], ecx

; 63   : 	}

	jmp	SHORT $L350
$L351:

; 64   : 
; 65   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 66   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream_withassign@@EAEAAVostream@@PBD@Z ENDP	; ostream_withassign::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@E@Z
_TEXT	SEGMENT
_Byte$ = 8
_this$ = -4
?Output@ostream_withassign@@EAEAAVostream@@E@Z PROC NEAR ; ostream_withassign::Output, COMDAT

; 70   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 71   : 	// Generate hex representation of character.
; 72   : 	PrintChar( m_pHex[Byte>>4] );

	mov	eax, DWORD PTR _Byte$[ebp]
	and	eax, 255				; 000000ffH
	sar	eax, 4
	mov	cl, BYTE PTR _m_pHex[eax]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?PrintChar@ostream_withassign@@AAEXD@Z	; ostream_withassign::PrintChar

; 73   : 	PrintChar( m_pHex[Byte&0x0f] );

	mov	edx, DWORD PTR _Byte$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 15					; 0000000fH
	mov	al, BYTE PTR _m_pHex[edx]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?PrintChar@ostream_withassign@@AAEXD@Z	; ostream_withassign::PrintChar

; 74   : 
; 75   : 	// Return ostream object.
; 76   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 77   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream_withassign@@EAEAAVostream@@E@Z ENDP	; ostream_withassign::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@G@Z
_TEXT	SEGMENT
_Word$ = 8
_this$ = -4
?Output@ostream_withassign@@EAEAAVostream@@G@Z PROC NEAR ; ostream_withassign::Output, COMDAT

; 81   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 82   : 	// Use byte output method to represent word.
; 83   : 	Output( (unsigned char)(Word>>8) );

	mov	eax, DWORD PTR _Word$[ebp]
	and	eax, 65535				; 0000ffffH
	sar	eax, 8
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 84   : 	Output( (unsigned char)Word );

	mov	al, BYTE PTR _Word$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 85   : 
; 86   : 	// Return ostream object.
; 87   : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 88   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream_withassign@@EAEAAVostream@@G@Z ENDP	; ostream_withassign::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@K@Z
_TEXT	SEGMENT
_DWord$ = 8
_this$ = -4
?Output@ostream_withassign@@EAEAAVostream@@K@Z PROC NEAR ; ostream_withassign::Output, COMDAT

; 92   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 93   : 	// Use byte output method to represent double word.
; 94   : 	Output( (unsigned char)(DWord>>24) );

	mov	eax, DWORD PTR _DWord$[ebp]
	shr	eax, 24					; 00000018H
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 95   : 	Output( (unsigned char)(DWord>>16) );

	mov	eax, DWORD PTR _DWord$[ebp]
	shr	eax, 16					; 00000010H
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 96   : 	Output( (unsigned char)(DWord>>8) );

	mov	eax, DWORD PTR _DWord$[ebp]
	shr	eax, 8
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 97   : 	Output( (unsigned char)DWord );

	mov	al, BYTE PTR _DWord$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [edx+12]

; 98   : 
; 99   : 	// Return ostream object.
; 100  : 	return *this;

	mov	eax, DWORD PTR _this$[ebp]

; 101  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream_withassign@@EAEAAVostream@@K@Z ENDP	; ostream_withassign::Output
_TEXT	ENDS
;	COMDAT ?Output@ostream_withassign@@EAEAAVostream@@D@Z
_TEXT	SEGMENT
_iCharacter$ = 8
_this$ = -4
_pString$ = -8
?Output@ostream_withassign@@EAEAAVostream@@D@Z PROC NEAR ; ostream_withassign::Output, COMDAT

; 114  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 115  : 	char pString[2];
; 116  : 
; 117  : 	// Convert to string for printing.
; 118  : 	pString[0] = iCharacter;

	mov	al, BYTE PTR _iCharacter$[ebp]
	mov	BYTE PTR _pString$[ebp], al

; 119  : 	pString[1] = '\0';

	mov	BYTE PTR _pString$[ebp+1], 0

; 120  : 
; 121  : 	// Return self-reference.
; 122  : 	return Output( pString );

	lea	ecx, DWORD PTR _pString$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR _this$[ebp]
	call	DWORD PTR [eax]

; 123  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?Output@ostream_withassign@@EAEAAVostream@@D@Z ENDP	; ostream_withassign::Output
_TEXT	ENDS
;	COMDAT ?PrintChar@ostream_withassign@@AAEXD@Z
_TEXT	SEGMENT
_Char$ = 8
_this$ = -4
_pAddress$ = -8
_row$391 = -12
_col$395 = -16
_col$400 = -20
?PrintChar@ostream_withassign@@AAEXD@Z PROC NEAR	; ostream_withassign::PrintChar, COMDAT

; 126  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 88					; 00000058H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 130  : 	{

	mov	al, BYTE PTR _Char$[ebp]
	mov	BYTE PTR -24+[ebp], al
	cmp	BYTE PTR -24+[ebp], 10			; 0000000aH
	je	SHORT $L384
	cmp	BYTE PTR -24+[ebp], 13			; 0000000dH
	je	SHORT $L385
	jmp	SHORT $L386
$L384:

; 133  : 			// New line+CRN.
; 134  : 			m_iY++;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	add	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx

; 135  : 			m_iX = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 136  : 			break;

	jmp	SHORT $L381
$L385:

; 140  : 			// Carriage return.
; 141  : 			m_iX = 0; 

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], 0

; 142  : 			break;

	jmp	SHORT $L381
$L386:

; 146  : 			// Any non-control character is displayed.
; 147  : 			pAddress = (char*)(0xb8000+(m_iY*(m_iWidth<<1))+(m_iX<<1));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	shl	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	imul	eax, ecx
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	lea	eax, DWORD PTR [eax+edx*2+753664]
	mov	DWORD PTR _pAddress$[ebp], eax

; 148  : 			*pAddress = Char;

	mov	ecx, DWORD PTR _pAddress$[ebp]
	mov	dl, BYTE PTR _Char$[ebp]
	mov	BYTE PTR [ecx], dl

; 149  : 			m_iX++;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	add	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+4], ecx

; 150  : 			if( m_iX==m_iWidth )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+4]
	cmp	edx, DWORD PTR [ecx+12]
	jne	SHORT $L388

; 152  : 				m_iX = 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 153  : 				m_iY++;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	add	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx
$L388:
$L381:

; 158  : 
; 159  : 	// Bound check cursor position.
; 160  : 	if( m_iY==m_iHeight )

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [ecx+8]
	cmp	eax, DWORD PTR [edx+16]
	jne	$L403

; 162  : 		pAddress = (char*)0xb8000;

	mov	DWORD PTR _pAddress$[ebp], 753664	; 000b8000H

; 163  : 		for( int row=0 ; row<m_iHeight-1 ; row++ )

	mov	DWORD PTR _row$391[ebp], 0
	jmp	SHORT $L392
$L393:
	mov	ecx, DWORD PTR _row$391[ebp]
	add	ecx, 1
	mov	DWORD PTR _row$391[ebp], ecx
$L392:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+16]
	sub	eax, 1
	cmp	DWORD PTR _row$391[ebp], eax
	jge	SHORT $L394

; 165  : 			for( int col=0 ; col<m_iWidth ; col++ )

	mov	DWORD PTR _col$395[ebp], 0
	jmp	SHORT $L396
$L397:
	mov	ecx, DWORD PTR _col$395[ebp]
	add	ecx, 1
	mov	DWORD PTR _col$395[ebp], ecx
$L396:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _col$395[ebp]
	cmp	eax, DWORD PTR [edx+12]
	jge	SHORT $L398

; 167  : 				*pAddress = pAddress[m_iBytesPerScanline];

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+20]
	mov	eax, DWORD PTR _pAddress$[ebp]
	mov	ecx, DWORD PTR _pAddress$[ebp]
	mov	dl, BYTE PTR [ecx+edx]
	mov	BYTE PTR [eax], dl

; 168  : 				pAddress += 2;

	mov	eax, DWORD PTR _pAddress$[ebp]
	add	eax, 2
	mov	DWORD PTR _pAddress$[ebp], eax

; 169  : 			}

	jmp	SHORT $L397
$L398:

; 170  : 		}

	jmp	SHORT $L393
$L394:

; 171  : 		m_iY = m_iHeight-1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx

; 172  : 		pAddress = (char*)0xb8000+(m_iBytesPerScanline*(m_iHeight-1));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+20]
	imul	ecx, edx
	add	ecx, 753664				; 000b8000H
	mov	DWORD PTR _pAddress$[ebp], ecx

; 173  : 		for( int col=0 ; col<m_iWidth ; col++ )

	mov	DWORD PTR _col$400[ebp], 0
	jmp	SHORT $L401
$L402:
	mov	edx, DWORD PTR _col$400[ebp]
	add	edx, 1
	mov	DWORD PTR _col$400[ebp], edx
$L401:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _col$400[ebp]
	cmp	ecx, DWORD PTR [eax+12]
	jge	SHORT $L403

; 175  : 			*pAddress = ' ';

	mov	edx, DWORD PTR _pAddress$[ebp]
	mov	BYTE PTR [edx], 32			; 00000020H

; 176  : 			pAddress += 2;

	mov	eax, DWORD PTR _pAddress$[ebp]
	add	eax, 2
	mov	DWORD PTR _pAddress$[ebp], eax

; 177  : 		}

	jmp	SHORT $L402
$L403:

; 179  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?PrintChar@ostream_withassign@@AAEXD@Z ENDP		; ostream_withassign::PrintChar
_TEXT	ENDS
END
