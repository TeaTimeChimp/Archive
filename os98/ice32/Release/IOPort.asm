	TITLE	E:\WORKSHOP\os98\ice32\IOPort.cpp
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
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CIOPort@@QAE@G@Z				; CIOPort::CIOPort
_TEXT	SEGMENT
_iAddress$ = 8
_this$ = -4
??0CIOPort@@QAE@G@Z PROC NEAR				; CIOPort::CIOPort

; 24   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 25   : 	// Initialise port object.
; 26   : 	m_iAddress = iAddress;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iAddress$[ebp]
	mov	WORD PTR [eax], cx

; 27   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0CIOPort@@QAE@G@Z ENDP				; CIOPort::CIOPort
_TEXT	ENDS
PUBLIC	??1CIOPort@@QAE@XZ				; CIOPort::~CIOPort
_TEXT	SEGMENT
_this$ = -4
??1CIOPort@@QAE@XZ PROC NEAR				; CIOPort::~CIOPort

; 40   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 41   : 
; 42   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CIOPort@@QAE@XZ ENDP					; CIOPort::~CIOPort
_TEXT	ENDS
PUBLIC	?getAddress@CIOPort@@QBE?BGXZ			; CIOPort::getAddress
_TEXT	SEGMENT
_this$ = -4
?getAddress@CIOPort@@QBE?BGXZ PROC NEAR			; CIOPort::getAddress

; 55   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 56   : 	// Return port member.
; 57   : 	return m_iAddress;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax]

; 58   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getAddress@CIOPort@@QBE?BGXZ ENDP			; CIOPort::getAddress
_TEXT	ENDS
PUBLIC	?readByte@CIOPort@@QBE?BEXZ			; CIOPort::readByte
_TEXT	SEGMENT
_this$ = -12
_iByte$ = -8
_iAddress$ = -4
?readByte@CIOPort@@QBE?BEXZ PROC NEAR			; CIOPort::readByte

; 71   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 72   : 	BYTE iByte;
; 73   : 	WORD iAddress;
; 74   : 
; 75   : 	// Copy address member to local storage.
; 76   : 	iAddress = m_iAddress;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR [eax]
	mov	WORD PTR _iAddress$[ebp], cx

; 77   : 
; 78   : 	__asm	mov	dx, iAddress

	mov	dx, WORD PTR _iAddress$[ebp]

; 79   : 	__asm	in	al, dx

	in	al, dx

; 80   : 	__asm	mov	iByte, al

	mov	BYTE PTR _iByte$[ebp], al

; 81   : 
; 82   : 	// Return byte read from port.
; 83   : 	return iByte;

	mov	al, BYTE PTR _iByte$[ebp]

; 84   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?readByte@CIOPort@@QBE?BEXZ ENDP			; CIOPort::readByte
_TEXT	ENDS
PUBLIC	?writeByte@CIOPort@@QBEXE@Z			; CIOPort::writeByte
_TEXT	SEGMENT
_iByte$ = 8
_this$ = -8
_iAddress$ = -4
?writeByte@CIOPort@@QBEXE@Z PROC NEAR			; CIOPort::writeByte

; 97   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 98   : 	WORD iAddress;
; 99   : 
; 100  : 	// Copy address member to local storage.
; 101  : 	//cout << "IOPort::writeByte(" << iByte << ") to port " << iAddress << "." << endl;
; 102  : 	iAddress = m_iAddress;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR [eax]
	mov	WORD PTR _iAddress$[ebp], cx

; 103  : 
; 104  : #ifndef WIN32	
; 105  : 	__asm	mov		dx, iAddress

	mov	dx, WORD PTR _iAddress$[ebp]

; 106  : 	__asm	mov		al, iByte

	mov	al, BYTE PTR _iByte$[ebp]

; 107  : 	__asm	out		dx, al

	out	dx, al

; 108  : #endif
; 109  : 
; 110  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?writeByte@CIOPort@@QBEXE@Z ENDP			; CIOPort::writeByte
_TEXT	ENDS
END
