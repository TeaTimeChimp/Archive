	TITLE	E:\WORKSHOP\os98\ice32\CPU.cpp
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
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCCPU@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CCPU@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CCPU@@0QBDB			; CCPU::m_pClassName
PUBLIC	?m_iNT@CCPU@@0KA				; CCPU::m_iNT
CONST	SEGMENT
?m_pClassName@CCPU@@0QBDB DB 'CPU::', 00H		; CCPU::m_pClassName
CONST	ENDS
_DATA	SEGMENT
?m_iNT@CCPU@@0KA DD 04000H				; CCPU::m_iNT
_DATA	ENDS
PUBLIC	??0CCPU@@QAE@PAX0@Z				; CCPU::CCPU
PUBLIC	??_7CCPU@@6B@					; CCPU::`vftable'
PUBLIC	??_GCCPU@@UAEPAXI@Z				; CCPU::`scalar deleting destructor'
PUBLIC	??_ECCPU@@UAEPAXI@Z				; CCPU::`vector deleting destructor'
EXTRN	??0CGDT@@QAE@PAXG@Z:NEAR			; CGDT::CGDT
EXTRN	??0CIDT@@QAE@PAXG@Z:NEAR			; CIDT::CIDT
;	COMDAT ??_7CCPU@@6B@
; File E:\WORKSHOP\os98\ice32\CPU.cpp
CONST	SEGMENT
??_7CCPU@@6B@ DD FLAT:??_ECCPU@@UAEPAXI@Z		; CCPU::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_pIDTAddress$ = 8
_pGDTAddress$ = 12
_this$ = -4
??0CCPU@@QAE@PAX0@Z PROC NEAR				; CCPU::CCPU

; 37   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	256					; 00000100H
	mov	eax, DWORD PTR _pIDTAddress$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??0CIDT@@QAE@PAXG@Z			; CIDT::CIDT
	push	8192					; 00002000H
	mov	ecx, DWORD PTR _pGDTAddress$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	??0CGDT@@QAE@PAXG@Z			; CGDT::CGDT
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7CCPU@@6B@ ; CCPU::`vftable'

; 38   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CCPU@@QAE@PAX0@Z ENDP				; CCPU::CCPU
_TEXT	ENDS
PUBLIC	??1CCPU@@UAE@XZ					; CCPU::~CCPU
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCCPU@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCCPU@@UAEPAXI@Z PROC NEAR				; CCPU::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CCPU@@UAE@XZ				; CCPU::~CCPU
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2458
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2458:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCCPU@@UAEPAXI@Z ENDP				; CCPU::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CGDT@@UAE@XZ:NEAR				; CGDT::~CGDT
EXTRN	??1CIDT@@UAE@XZ:NEAR				; CIDT::~CIDT
_TEXT	SEGMENT
_this$ = -4
??1CCPU@@UAE@XZ PROC NEAR				; CCPU::~CCPU

; 41   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CCPU@@6B@ ; CCPU::`vftable'

; 42   : }

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	??1CGDT@@UAE@XZ				; CGDT::~CGDT
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??1CIDT@@UAE@XZ				; CIDT::~CIDT
	mov	esp, ebp
	pop	ebp
	ret	0
??1CCPU@@UAE@XZ ENDP					; CCPU::~CCPU
_TEXT	ENDS
PUBLIC	?getCS@CCPU@@QAEGXZ				; CCPU::getCS
_TEXT	SEGMENT
_this$ = -8
_iCS$ = -4
?getCS@CCPU@@QAEGXZ PROC NEAR				; CCPU::getCS

; 55   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 56   : 	SELECTOR iCS;
; 57   : 
; 58   : 	__asm	mov	ax, cs

	mov	ax, cs

; 59   : 	__asm	mov	iCS, ax

	mov	WORD PTR _iCS$[ebp], ax

; 60   : 
; 61   : 	return iCS;

	mov	ax, WORD PTR _iCS$[ebp]

; 62   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?getCS@CCPU@@QAEGXZ ENDP				; CCPU::getCS
_TEXT	ENDS
PUBLIC	?delay@CCPU@@QAEXXZ				; CCPU::delay
_TEXT	SEGMENT
_this$ = -12
_Delay1$ = -4
_Delay2$2473 = -8
?delay@CCPU@@QAEXXZ PROC NEAR				; CCPU::delay

; 75   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 76   : 	for( int Delay1=0 ; Delay1<100000 ; Delay1++ )

	mov	DWORD PTR _Delay1$[ebp], 0
	jmp	SHORT $L2470
$L2471:
	mov	eax, DWORD PTR _Delay1$[ebp]
	add	eax, 1
	mov	DWORD PTR _Delay1$[ebp], eax
$L2470:
	cmp	DWORD PTR _Delay1$[ebp], 100000		; 000186a0H
	jge	SHORT $L2472

; 77   : 		for( int Delay2=0 ; Delay2<20000 ; Delay2++ )

	mov	DWORD PTR _Delay2$2473[ebp], 0
	jmp	SHORT $L2474
$L2475:
	mov	ecx, DWORD PTR _Delay2$2473[ebp]
	add	ecx, 1
	mov	DWORD PTR _Delay2$2473[ebp], ecx
$L2474:
	cmp	DWORD PTR _Delay2$2473[ebp], 20000	; 00004e20H
	jge	SHORT $L2476

; 78   : 			__asm nop

	npad	1

; 79   : }

	jmp	SHORT $L2475
$L2476:
	jmp	SHORT $L2471
$L2472:
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?delay@CCPU@@QAEXXZ ENDP				; CCPU::delay
_TEXT	ENDS
PUBLIC	?dumpMemory@CCPU@@QAEXPAX@Z			; CCPU::dumpMemory
EXTRN	??6ostream@@QAEAAV0@D@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2490	DB	' : ', 00H
$SG2494	DB	' ', 00H
	ORG $+2
$SG2495	DB	'- ', 00H
	ORG $+1
$SG2499	DB	' ', 00H
	ORG $+2
$SG2500	DB	'  ', 00H
	ORG $+1
$SG2512	DB	0aH, 00H
_DATA	ENDS
_TEXT	SEGMENT
_pRawData$ = 8
_this$ = -20
_row$ = -4
_column$ = -12
_iIndex$ = -8
_pAddress$ = -16
?dumpMemory@CCPU@@QAEXPAX@Z PROC NEAR			; CCPU::dumpMemory

; 93   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 94   : 	int row;
; 95   : 	int column;
; 96   : 	DWORD iIndex;
; 97   : 	BYTE* pAddress;
; 98   : 	
; 99   : 	pAddress = (BYTE*)pRawData;

	mov	eax, DWORD PTR _pRawData$[ebp]
	mov	DWORD PTR _pAddress$[ebp], eax

; 100  : 
; 101  : 	for( row=0 ; row<8 ; row++ )

	mov	DWORD PTR _row$[ebp], 0
	jmp	SHORT $L2486
$L2487:
	mov	ecx, DWORD PTR _row$[ebp]
	add	ecx, 1
	mov	DWORD PTR _row$[ebp], ecx
$L2486:
	cmp	DWORD PTR _row$[ebp], 8
	jge	$L2488

; 103  : 		cout << (ADDRESS)pAddress << " : ";

	push	OFFSET FLAT:$SG2490
	mov	edx, DWORD PTR _pAddress$[ebp]
	push	edx
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 104  : 		for( iIndex=0, column=0 ; column<8 ; column++, iIndex++ )

	mov	DWORD PTR _iIndex$[ebp], 0
	mov	DWORD PTR _column$[ebp], 0
	jmp	SHORT $L2491
$L2492:
	mov	eax, DWORD PTR _column$[ebp]
	add	eax, 1
	mov	DWORD PTR _column$[ebp], eax
	mov	ecx, DWORD PTR _iIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iIndex$[ebp], ecx
$L2491:
	cmp	DWORD PTR _column$[ebp], 8
	jge	SHORT $L2493

; 105  : 			cout << pAddress[iIndex] << " ";

	push	OFFSET FLAT:$SG2494
	mov	edx, DWORD PTR _pAddress$[ebp]
	add	edx, DWORD PTR _iIndex$[ebp]
	mov	al, BYTE PTR [edx]
	push	eax
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	jmp	SHORT $L2492
$L2493:

; 106  : 		cout << "- ";

	push	OFFSET FLAT:$SG2495
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 107  : 		for( column=0 ; column<8 ; column++, iIndex++ )

	mov	DWORD PTR _column$[ebp], 0
	jmp	SHORT $L2496
$L2497:
	mov	ecx, DWORD PTR _column$[ebp]
	add	ecx, 1
	mov	DWORD PTR _column$[ebp], ecx
	mov	edx, DWORD PTR _iIndex$[ebp]
	add	edx, 1
	mov	DWORD PTR _iIndex$[ebp], edx
$L2496:
	cmp	DWORD PTR _column$[ebp], 8
	jge	SHORT $L2498

; 108  : 			cout << pAddress[iIndex] << " ";

	push	OFFSET FLAT:$SG2499
	mov	eax, DWORD PTR _pAddress$[ebp]
	add	eax, DWORD PTR _iIndex$[ebp]
	mov	cl, BYTE PTR [eax]
	push	ecx
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	jmp	SHORT $L2497
$L2498:

; 109  : 		cout << "  ";

	push	OFFSET FLAT:$SG2500
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 110  : 		for( iIndex=0, column=0 ; column<16 ; column++, iIndex++ )

	mov	DWORD PTR _iIndex$[ebp], 0
	mov	DWORD PTR _column$[ebp], 0
	jmp	SHORT $L2501
$L2502:
	mov	edx, DWORD PTR _column$[ebp]
	add	edx, 1
	mov	DWORD PTR _column$[ebp], edx
	mov	eax, DWORD PTR _iIndex$[ebp]
	add	eax, 1
	mov	DWORD PTR _iIndex$[ebp], eax
$L2501:
	cmp	DWORD PTR _column$[ebp], 16		; 00000010H
	jge	SHORT $L2503

; 112  : 			{

	mov	ecx, DWORD PTR _pAddress$[ebp]
	add	ecx, DWORD PTR _iIndex$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR -24+[ebp], dl
	cmp	BYTE PTR -24+[ebp], 10			; 0000000aH
	je	SHORT $L2508
	cmp	BYTE PTR -24+[ebp], 13			; 0000000dH
	je	SHORT $L2508
	jmp	SHORT $L2510
$L2508:

; 116  : 					cout << (char)0x00;

	push	0
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@D@Z			; ostream::operator<<

; 117  : 					break;

	jmp	SHORT $L2505
$L2510:

; 119  : 				default:
; 120  : 					cout << (char)(pAddress[iIndex]);

	mov	eax, DWORD PTR _pAddress$[ebp]
	add	eax, DWORD PTR _iIndex$[ebp]
	mov	cl, BYTE PTR [eax]
	push	ecx
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@D@Z			; ostream::operator<<
$L2505:

; 121  : 			}

	jmp	SHORT $L2502
$L2503:

; 122  : 		pAddress += 16;

	mov	edx, DWORD PTR _pAddress$[ebp]
	add	edx, 16					; 00000010H
	mov	DWORD PTR _pAddress$[ebp], edx

; 123  : 		
; 124  : 		// Add CRN to end or row.
; 125  : 		cout << "\n";

	push	OFFSET FLAT:$SG2512
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 126  : 	};

	jmp	$L2487
$L2488:

; 127  : 
; 128  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?dumpMemory@CCPU@@QAEXPAX@Z ENDP			; CCPU::dumpMemory
_TEXT	ENDS
PUBLIC	?setGlobalDataSelector@CCPU@@AAEXG@Z		; CCPU::setGlobalDataSelector
PUBLIC	?create@CCPU@@QAE?BKXZ				; CCPU::create
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z:NEAR ; CDescriptorTable::addMemoryDescriptor
EXTRN	?create@CGDT@@QAEKXZ:NEAR			; CGDT::create
EXTRN	?create@CIDT@@QAEKXZ:NEAR			; CIDT::create
_DATA	SEGMENT
	ORG $+2
$SG2518	DB	'CPU...', 00H
	ORG $+1
$SG2520	DB	'Ok', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -12
_iError$ = -8
_Code$ = -4
?create@CCPU@@QAE?BKXZ PROC NEAR			; CCPU::create

; 141  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 142  : 	unsigned long iError;
; 143  : 	SELECTOR Code;
; 144  : 
; 145  : 	// Prolog.
; 146  : 	cout << "CPU...";

	push	OFFSET FLAT:$SG2518
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 147  : 
; 148  : 	// Add flat code and data segments.
; 149  : 	m_GDT.create();

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	?create@CGDT@@QAEKXZ			; CGDT::create

; 150  : 	Code = m_GDT.addMemoryDescriptor( DT_EXECUTE_READ, DPL0, 0, 0xffffffff );

	push	-1
	push	0
	push	0
	push	10					; 0000000aH
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	mov	WORD PTR _Code$[ebp], ax

; 151  : 	setGlobalDataSelector( m_GDT.addMemoryDescriptor( DT_READ_WRITE, DPL0, 0, 0xffffffff ) );

	push	-1
	push	0
	push	0
	push	2
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setGlobalDataSelector@CCPU@@AAEXG@Z	; CCPU::setGlobalDataSelector

; 152  : 
; 153  : #ifdef WIN32
; 154  : 	// Must stick to CS provided by NT.
; 155  : 	__asm	push	cs
; 156  : 	__asm	pop		eax
; 157  : 	__asm	mov		Code, ax
; 158  : #endif
; 159  : 
; 160  : 	// Start executing in new code segment.
; 161  : 	__asm	movzx	eax, Code

	movzx	eax, WORD PTR _Code$[ebp]

; 162  : 	__asm	push	eax

	push	eax

; 163  : 	__asm	mov		eax, offset restart

	mov	eax, OFFSET FLAT:$restart$2519

; 164  : 	__asm	push	eax

	push	eax

; 165  : 	__asm	retf

	retf	0
$restart$2519:

; 166  : restart:
; 167  : 
; 168  : 	// Create IDT.
; 169  : 	m_IDT.create();

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?create@CIDT@@QAEKXZ			; CIDT::create

; 170  : 	
; 171  : 	// Epilog.
; 172  : 	cout << "Ok" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2520
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 173  : 
; 174  : 	// Return error code.
; 175  : 	return iError;

	mov	eax, DWORD PTR _iError$[ebp]

; 176  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?create@CCPU@@QAE?BKXZ ENDP				; CCPU::create
_TEXT	ENDS
PUBLIC	?flush@@YAAAVostream@@AAV1@@Z			; flush
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT
__outs$ = 8
?endl@@YAAAVostream@@AAV1@@Z PROC NEAR			; endl, COMDAT

; 41   : inline ostream& __cdecl endl(ostream& _outs) { return _outs << '\n' << flush; }

	push	ebp
	mov	ebp, esp
	push	OFFSET FLAT:?flush@@YAAAVostream@@AAV1@@Z ; flush
	push	10					; 0000000aH
	mov	ecx, DWORD PTR __outs$[ebp]
	call	??6ostream@@QAEAAV0@D@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
	pop	ebp
	ret	0
?endl@@YAAAVostream@@AAV1@@Z ENDP			; endl
_TEXT	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT
__outs$ = 8
?flush@@YAAAVostream@@AAV1@@Z PROC NEAR			; flush, COMDAT

; 40   : inline ostream& __cdecl flush(ostream& _outs) { return _outs.flush(); }

	push	ebp
	mov	ebp, esp
	mov	eax, DWORD PTR __outs$[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR __outs$[ebp]
	call	DWORD PTR [edx+24]
	pop	ebp
	ret	0
?flush@@YAAAVostream@@AAV1@@Z ENDP			; flush
_TEXT	ENDS
PUBLIC	?getGDT@CCPU@@QAEAAVCGDT@@XZ			; CCPU::getGDT
_TEXT	SEGMENT
_this$ = -4
?getGDT@CCPU@@QAEAAVCGDT@@XZ PROC NEAR			; CCPU::getGDT

; 191  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 192  : 	// Return global descriptor table.
; 193  : 	return m_GDT;

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 22					; 00000016H

; 194  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getGDT@CCPU@@QAEAAVCGDT@@XZ ENDP			; CCPU::getGDT
_TEXT	ENDS
PUBLIC	?getGlobalDataSelector@CCPU@@QAEGXZ		; CCPU::getGlobalDataSelector
_TEXT	SEGMENT
_this$ = -4
?getGlobalDataSelector@CCPU@@QAEGXZ PROC NEAR		; CCPU::getGlobalDataSelector

; 207  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 208  : 	// Return global data selector.
; 209  : 	return m_iGlobalDataSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+40]

; 210  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getGlobalDataSelector@CCPU@@QAEGXZ ENDP		; CCPU::getGlobalDataSelector
_TEXT	ENDS
PUBLIC	?getIDT@CCPU@@QAEAAVCIDT@@XZ			; CCPU::getIDT
_TEXT	SEGMENT
_this$ = -4
?getIDT@CCPU@@QAEAAVCIDT@@XZ PROC NEAR			; CCPU::getIDT

; 224  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 225  : 	// Return interrupt descriptor table.
; 226  : 	return m_IDT;

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4

; 227  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getIDT@CCPU@@QAEAAVCIDT@@XZ ENDP			; CCPU::getIDT
_TEXT	ENDS
PUBLIC	?getSegmentType@CCPU@@QAE?AW4EDescriptorType@@G@Z ; CCPU::getSegmentType
EXTRN	?getLDT@CProcess@@QAEPAVCLDT@@XZ:NEAR		; CProcess::getLDT
EXTRN	?getCurrentProcess@CProcessManager@@QAEPAVCProcess@@XZ:NEAR ; CProcessManager::getCurrentProcess
EXTRN	?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ:NEAR ; CApplication::getProcessManager
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	??0CSelector@@QAE@G@Z:NEAR			; CSelector::CSelector
EXTRN	??1CSelector@@QAE@XZ:NEAR			; CSelector::~CSelector
EXTRN	?getDescriptorTableScope@CSelector@@QAE?AW4EDescriptorTableScope@@XZ:NEAR ; CSelector::getDescriptorTableScope
EXTRN	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ:NEAR ; CDescriptor::getType
EXTRN	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z:NEAR ; CDescriptorTable::getDescriptor
_DATA	SEGMENT
	ORG $+1
$SG2544	DB	'EDescriptorType CCPU::getSegmentType( SELECTOR iSelector'
	DB	' ) - Invalid table.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -16
_eType$ = -4
$T2622 = -8
$T2623 = -12
?getSegmentType@CCPU@@QAE?AW4EDescriptorType@@G@Z PROC NEAR ; CCPU::getSegmentType

; 241  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 246  : 	{

	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T2623[ebp]
	call	??0CSelector@@QAE@G@Z			; CSelector::CSelector
	mov	ecx, eax
	call	?getDescriptorTableScope@CSelector@@QAE?AW4EDescriptorTableScope@@XZ ; CSelector::getDescriptorTableScope
	mov	DWORD PTR $T2622[ebp], eax
	lea	ecx, DWORD PTR $T2623[ebp]
	call	??1CSelector@@QAE@XZ			; CSelector::~CSelector
	mov	ecx, DWORD PTR $T2622[ebp]
	mov	DWORD PTR -20+[ebp], ecx
	cmp	DWORD PTR -20+[ebp], 0
	je	SHORT $L2542
	cmp	DWORD PTR -20+[ebp], 1
	je	SHORT $L2541
	jmp	SHORT $L2543
$L2541:

; 249  : 				// Selector refers to the local descriptor table.
; 250  : 				eType = Application.getProcessManager().getCurrentProcess()->getLDT()->getDescriptor(iSelector)->getType();

	mov	dx, WORD PTR _iSelector$[ebp]
	push	edx
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ ; CApplication::getProcessManager
	mov	ecx, eax
	call	?getCurrentProcess@CProcessManager@@QAEPAVCProcess@@XZ ; CProcessManager::getCurrentProcess
	mov	ecx, eax
	call	?getLDT@CProcess@@QAEPAVCLDT@@XZ	; CProcess::getLDT
	mov	ecx, eax
	call	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
	mov	ecx, eax
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	mov	DWORD PTR _eType$[ebp], eax

; 251  : 				break;

	jmp	SHORT $L2537
$L2542:

; 255  : 				// Selector refers to the global descriptor table.
; 256  : 				eType = m_GDT.getDescriptor(iSelector)->getType();

	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 22					; 00000016H
	call	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
	mov	ecx, eax
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	mov	DWORD PTR _eType$[ebp], eax

; 257  : 				break;

	jmp	SHORT $L2537
$L2543:

; 261  : 			// Catch unknown descriptor table resources.
; 262  : 			Application.halt( "EDescriptorType CCPU::getSegmentType( SELECTOR iSelector ) - Invalid table." );

	push	OFFSET FLAT:$SG2544
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2537:

; 266  : 
; 267  : 	// Return segment type.
; 268  : 	return eType;

	mov	eax, DWORD PTR _eType$[ebp]

; 269  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getSegmentType@CCPU@@QAE?AW4EDescriptorType@@G@Z ENDP	; CCPU::getSegmentType
_TEXT	ENDS
PUBLIC	?enableInterrupts@CCPU@@QAEX_N@Z		; CCPU::enableInterrupts
_TEXT	SEGMENT
_bEnable$ = 8
_this$ = -4
?enableInterrupts@CCPU@@QAEX_N@Z PROC NEAR		; CCPU::enableInterrupts

; 282  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 283  : #ifndef WIN32
; 284  : 	if( bEnable==true )

	mov	eax, DWORD PTR _bEnable$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2549

; 285  : 		__asm	sti

	sti

; 286  : 	else

	jmp	SHORT $L2550
$L2549:

; 287  : 		__asm	cli

	cli
$L2550:

; 288  : #endif
; 289  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?enableInterrupts@CCPU@@QAEX_N@Z ENDP			; CCPU::enableInterrupts
_TEXT	ENDS
PUBLIC	?getPageDirectoryTable@CCPU@@QBEPBXXZ		; CCPU::getPageDirectoryTable
_TEXT	SEGMENT
_this$ = -8
_pAddress$ = -4
?getPageDirectoryTable@CCPU@@QBEPBXXZ PROC NEAR		; CCPU::getPageDirectoryTable

; 302  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 303  : 	void* pAddress;
; 304  : 
; 305  : #ifdef WIN32
; 306  : 	pAddress = (unsigned long)m_pCR3;
; 307  : #else
; 308  : 	__asm	mov	eax, cr3

	mov	eax, cr3

; 309  : 	__asm	mov	pAddress, eax	

	mov	DWORD PTR _pAddress$[ebp], eax

; 310  : #endif
; 311  : 
; 312  : 	// Return address of page directory table.
; 313  : 	return pAddress;

	mov	eax, DWORD PTR _pAddress$[ebp]

; 314  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?getPageDirectoryTable@CCPU@@QBEPBXXZ ENDP		; CCPU::getPageDirectoryTable
_TEXT	ENDS
PUBLIC	?setCS@CCPU@@QAEXG@Z				; CCPU::setCS
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	?dump@CSelector@@QAEXXZ:NEAR			; CSelector::dump
_DATA	SEGMENT
$SG2559	DB	'setCS(', 00H
	ORG $+1
$SG2560	DB	')', 00H
	ORG $+2
$SG2567	DB	'Affraid to continue :(', 00H
	ORG $+1
$SG2570	DB	'CPU::setCS - Invalid selector.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -12
$T2627 = -4
$T2628 = -8
?setCS@CCPU@@QAEXG@Z PROC NEAR				; CCPU::setCS

; 327  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 328  : 	// Validate selector against descriptor tables.
; 329  : 	cout << m_pClassName << "setCS(" << iSelector << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2560
	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2559
	push	OFFSET FLAT:?m_pClassName@CCPU@@0QBDB	; CCPU::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 331  : 	{

	mov	cx, WORD PTR _iSelector$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getSegmentType@CCPU@@QAE?AW4EDescriptorType@@G@Z ; CCPU::getSegmentType
	mov	DWORD PTR -16+[ebp], eax
	cmp	DWORD PTR -16+[ebp], 10			; 0000000aH
	je	SHORT $L2565
	cmp	DWORD PTR -16+[ebp], 265		; 00000109H
	je	SHORT $L2565
	jmp	SHORT $L2568
$L2565:

; 335  : 			// Trashes stack, execution won't be returning here.
; 336  : 			CSelector(iSelector).dump();

	mov	dx, WORD PTR _iSelector$[ebp]
	push	edx
	lea	ecx, DWORD PTR $T2627[ebp]
	call	??0CSelector@@QAE@G@Z			; CSelector::CSelector
	mov	ecx, eax
	call	?dump@CSelector@@QAEXXZ			; CSelector::dump
	lea	ecx, DWORD PTR $T2627[ebp]
	call	??1CSelector@@QAE@XZ			; CSelector::~CSelector

; 337  : 			Application.halt( "Affraid to continue :(" );

	push	OFFSET FLAT:$SG2567
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 338  : 			__asm	push	iSelector

	push	WORD PTR _iSelector$[ebp]

; 339  : 			__asm	push	0

	push	0

; 340  : 			__asm	retf

	retf	0
$L2568:

; 344  : 			// Invalid selector passed.
; 345  : 			CSelector(iSelector).dump();

	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T2628[ebp]
	call	??0CSelector@@QAE@G@Z			; CSelector::CSelector
	mov	ecx, eax
	call	?dump@CSelector@@QAEXXZ			; CSelector::dump
	lea	ecx, DWORD PTR $T2628[ebp]
	call	??1CSelector@@QAE@XZ			; CSelector::~CSelector

; 346  : 			Application.halt( "CPU::setCS - Invalid selector." );

	push	OFFSET FLAT:$SG2570
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 349  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?setCS@CCPU@@QAEXG@Z ENDP				; CCPU::setCS
_iGlobalDataSelector$ = 8
_this$ = -4
?setGlobalDataSelector@CCPU@@AAEXG@Z PROC NEAR		; CCPU::setGlobalDataSelector

; 362  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 363  : 	// Store global data selector.
; 364  : 	m_iGlobalDataSelector = iGlobalDataSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iGlobalDataSelector$[ebp]
	mov	WORD PTR [eax+40], cx

; 365  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setGlobalDataSelector@CCPU@@AAEXG@Z ENDP		; CCPU::setGlobalDataSelector
_TEXT	ENDS
PUBLIC	?setNT@CCPU@@QAEX_N@Z				; CCPU::setNT
_DATA	SEGMENT
	ORG $+1
$SG2580	DB	'setNT(', 00H
	ORG $+1
$SG2581	DB	')', 00H
_DATA	ENDS
_TEXT	SEGMENT
_bState$ = 8
_this$ = -12
_iNestedTask$2583 = -4
_iNotNT$2585 = -8
?setNT@CCPU@@QAEX_N@Z PROC NEAR				; CCPU::setNT

; 378  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 379  : 	cout << m_pClassName << "setNT(" << (BYTE)bState << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2581
	mov	al, BYTE PTR _bState$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2580
	push	OFFSET FLAT:?m_pClassName@CCPU@@0QBDB	; CCPU::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 380  : 	if( bState==true )

	mov	ecx, DWORD PTR _bState$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 1
	jne	SHORT $L2582

; 382  : 		// Set NT flag.
; 383  : 		DWORD iNestedTask = m_iNT;

	mov	edx, DWORD PTR ?m_iNT@CCPU@@0KA		; CCPU::m_iNT
	mov	DWORD PTR _iNestedTask$2583[ebp], edx

; 384  : 		__asm	pushfd

	pushfd

; 385  : 		__asm	pop		eax

	pop	eax

; 386  : 		__asm	or		eax, iNestedTask

	or	eax, DWORD PTR _iNestedTask$2583[ebp]

; 387  : 		__asm	push	eax

	push	eax

; 388  : 		__asm	popfd

	popfd

; 390  : 	else

	jmp	SHORT $L2584
$L2582:

; 392  : 		// Clear NT flag.
; 393  : 		DWORD iNotNT = ~m_iNT;

	mov	eax, DWORD PTR ?m_iNT@CCPU@@0KA		; CCPU::m_iNT
	not	eax
	mov	DWORD PTR _iNotNT$2585[ebp], eax

; 394  : 		__asm	pushfd

	pushfd

; 395  : 		__asm	pop		eax

	pop	eax

; 396  : 		__asm	and		eax, iNotNT

	and	eax, DWORD PTR _iNotNT$2585[ebp]

; 397  : 		__asm	push	eax

	push	eax

; 398  : 		__asm	popfd

	popfd
$L2584:

; 400  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?setNT@CCPU@@QAEX_N@Z ENDP				; CCPU::setNT
_TEXT	ENDS
PUBLIC	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z ; CCPU::setPageDirectoryTable
_DATA	SEGMENT
	ORG $+2
$SG2592	DB	'setPageDirectoryTable(0x', 00H
	ORG $+3
$SG2593	DB	')', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pAddress$ = 8
_this$ = -8
_pCurrentPDT$ = -4
?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z PROC NEAR ; CCPU::setPageDirectoryTable

; 413  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 414  : 	CPageDirectoryTable* pCurrentPDT;
; 415  : 
; 416  : #ifdef WIN32
; 417  : 	m_pCR3 = (void*)pAddress;
; 418  : #else
; 419  : 	cout << m_pClassName << "setPageDirectoryTable(0x" << (unsigned long)pAddress << ")" << endl;	

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2593
	mov	eax, DWORD PTR _pAddress$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2592
	push	OFFSET FLAT:?m_pClassName@CCPU@@0QBDB	; CCPU::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 420  : 	__asm	mov	eax, cr3

	mov	eax, cr3

; 421  : 	__asm	mov	pCurrentPDT, eax

	mov	DWORD PTR _pCurrentPDT$[ebp], eax

; 422  : 	__asm	mov	eax, pAddress

	mov	eax, DWORD PTR _pAddress$[ebp]

; 423  : 	__asm	mov	cr3, eax

	mov	cr3, eax

; 424  : #endif
; 425  : 	// Return previous PDT.
; 426  : 	return pCurrentPDT;

	mov	eax, DWORD PTR _pCurrentPDT$[ebp]

; 427  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z ENDP ; CCPU::setPageDirectoryTable
_TEXT	ENDS
PUBLIC	?setPagingEnabled@CCPU@@QAEX_N@Z		; CCPU::setPagingEnabled
_DATA	SEGMENT
	ORG $+2
$SG2598	DB	'CCPU: PG=', 00H
	ORG $+2
$SG2600	DB	'1', 00H
	ORG $+2
$SG2602	DB	'0', 00H
_DATA	ENDS
_TEXT	SEGMENT
_bEnable$ = 8
_this$ = -4
?setPagingEnabled@CCPU@@QAEX_N@Z PROC NEAR		; CCPU::setPagingEnabled

; 440  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 441  : 	cout << "CCPU: PG=";

	push	OFFSET FLAT:$SG2598
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 442  : 	if( bEnable==true )

	mov	eax, DWORD PTR _bEnable$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2599

; 444  : 		cout << "1" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2600
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 445  : 	__asm	mov	eax, cr0

	mov	eax, cr0

; 446  : 	__asm	or	eax, 0x80000000

	or	eax, -2147483648			; 80000000H

; 447  : 	__asm	mov	cr0, eax

	mov	cr0, eax

; 449  : 	else

	jmp	SHORT $L2601
$L2599:

; 451  : 		cout << "0" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2602
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 452  : 	__asm	mov	eax, cr0

	mov	eax, cr0

; 453  : 	__asm	and	eax, 0x7fffffff

	and	eax, 2147483647				; 7fffffffH

; 454  : 	__asm	mov	cr0, eax	

	mov	cr0, eax
$L2601:

; 456  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?setPagingEnabled@CCPU@@QAEX_N@Z ENDP			; CCPU::setPagingEnabled
_TEXT	ENDS
END
