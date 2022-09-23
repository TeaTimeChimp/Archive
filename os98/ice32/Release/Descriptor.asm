	TITLE	E:\WORKSHOP\os98\ice32\Descriptor.cpp
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
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDescriptor@@0QBDB		; CDescriptor::m_pClassName
PUBLIC	?m_bDebug@CDescriptor@@0_NB			; CDescriptor::m_bDebug
CONST	SEGMENT
?m_pClassName@CDescriptor@@0QBDB DB 'Descriptor::', 00H	; CDescriptor::m_pClassName
?m_bDebug@CDescriptor@@0_NB DB 00H			; CDescriptor::m_bDebug
CONST	ENDS
PUBLIC	??0CDescriptor@@QAE@XZ				; CDescriptor::CDescriptor
PUBLIC	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z	; CDescriptor::setDPL
PUBLIC	?setPresent@CDescriptor@@QAEX_N@Z		; CDescriptor::setPresent
_TEXT	SEGMENT
_this$ = -4
??0CDescriptor@@QAE@XZ PROC NEAR			; CDescriptor::CDescriptor

; 20   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 21   : 	// Initialise state.
; 22   : 	setDPL( DPL0 );

	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z ; CDescriptor::setDPL

; 23   : 	setPresent( false );

	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setPresent@CDescriptor@@QAEX_N@Z	; CDescriptor::setPresent

; 24   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CDescriptor@@QAE@XZ ENDP				; CDescriptor::CDescriptor
_TEXT	ENDS
PUBLIC	??1CDescriptor@@QAE@XZ				; CDescriptor::~CDescriptor
_TEXT	SEGMENT
_this$ = -4
??1CDescriptor@@QAE@XZ PROC NEAR			; CDescriptor::~CDescriptor

; 37   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 38   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CDescriptor@@QAE@XZ ENDP				; CDescriptor::~CDescriptor
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?getBase@CDescriptor@@QAEPAXXZ			; CDescriptor::getBase
PUBLIC	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
_DATA	SEGMENT
$SG2443	DB	'Type = ', 00H
$SG2444	DB	'void* CDescriptor::getBase() - Inappropriate type.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -8
_pBase$ = -4
?getBase@CDescriptor@@QAEPAXXZ PROC NEAR		; CDescriptor::getBase

; 51   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 56   : 	{

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 258		; 00000102H
	je	SHORT $L2439
	jmp	SHORT $L2441
$L2439:

; 59   : 			pBase = (void*)((m_Attributes.m_Base_24_31<<24)+(m_Base_16_23<<16)+m_Base_0_15);

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+7]
	shl	ecx, 24					; 00000018H
	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	shl	eax, 16					; 00000010H
	add	ecx, eax
	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	ax, WORD PTR [edx+2]
	add	ecx, eax
	mov	DWORD PTR _pBase$[ebp], ecx

; 60   : 			break;

	jmp	SHORT $L2436
$L2441:

; 64   : 			cout << "Type = " << (WORD)getType() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	push	eax
	push	OFFSET FLAT:$SG2443
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 65   : 			Application.halt( "void* CDescriptor::getBase() - Inappropriate type." );

	push	OFFSET FLAT:$SG2444
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2436:

; 69   : 
; 70   : 	// Return base pointer.
; 71   : 	return pBase;

	mov	eax, DWORD PTR _pBase$[ebp]

; 72   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getBase@CDescriptor@@QAEPAXXZ ENDP			; CDescriptor::getBase
_TEXT	ENDS
PUBLIC	?flush@@YAAAVostream@@AAV1@@Z			; flush
EXTRN	??6ostream@@QAEAAV0@D@Z:NEAR			; ostream::operator<<
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
PUBLIC	?getDType@CDescriptor@@QAE?AW4EDType@@XZ	; CDescriptor::getDType
_DATA	SEGMENT
	ORG $+1
$SG2456	DB	'CDescriptor::getDType - Invalid type.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -8
_eDType$ = -4
?getDType@CDescriptor@@QAE?AW4EDType@@XZ PROC NEAR	; CDescriptor::getDType

; 85   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 90   : 	{

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+6]
	shr	cl, 6
	and	cl, 1
	mov	BYTE PTR -12+[ebp], cl
	cmp	BYTE PTR -12+[ebp], 0
	je	SHORT $L2453
	cmp	BYTE PTR -12+[ebp], 1
	je	SHORT $L2454
	jmp	SHORT $L2455
$L2453:

; 93   : 			// Descriptor is a memory descriptor.
; 94   : 			eDType = DT_SYSTEM;

	mov	DWORD PTR _eDType$[ebp], 0

; 95   : 			break;

	jmp	SHORT $L2450
$L2454:

; 99   : 			// Descriptor is a system descriptor.
; 100  : 			eDType = DT_MEMORY;

	mov	DWORD PTR _eDType$[ebp], 1

; 101  : 			break;

	jmp	SHORT $L2450
$L2455:

; 105  : 			// Invalid type.
; 106  : 			Application.halt( "CDescriptor::getDType - Invalid type." );

	push	OFFSET FLAT:$SG2456
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2450:

; 110  : 
; 111  : 	// Return descriptor type.
; 112  : 	return eDType;

	mov	eax, DWORD PTR _eDType$[ebp]

; 113  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDType@CDescriptor@@QAE?AW4EDType@@XZ ENDP		; CDescriptor::getDType
_TEXT	ENDS
PUBLIC	?set@CDescriptor@@QAEXW4EPriviledgeLevel@@PAXK@Z ; CDescriptor::set
PUBLIC	?setMemoryDescriptor@CDescriptor@@QAEXPAXK@Z	; CDescriptor::setMemoryDescriptor
_TEXT	SEGMENT
_DPL$ = 8
_pBase$ = 12
_Limit$ = 16
_this$ = -4
?set@CDescriptor@@QAEXW4EPriviledgeLevel@@PAXK@Z PROC NEAR ; CDescriptor::set

; 126  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 127  : 	// Set common fields.
; 128  : 	m_DPL 	  = DPL;

	mov	al, BYTE PTR _DPL$[ebp]
	and	al, 3
	shl	al, 5
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 159					; 0000009fH
	or	dl, al
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl

; 129  : 	m_Present = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	or	dl, 128					; 00000080H
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl

; 130  : 
; 131  : 	// Populate memory segment.
; 132  : 	setMemoryDescriptor( pBase, Limit );

	mov	ecx, DWORD PTR _Limit$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pBase$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setMemoryDescriptor@CDescriptor@@QAEXPAXK@Z ; CDescriptor::setMemoryDescriptor

; 133  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?set@CDescriptor@@QAEXW4EPriviledgeLevel@@PAXK@Z ENDP	; CDescriptor::set
_TEXT	ENDS
PUBLIC	?dump@CDescriptor@@QAEXXZ			; CDescriptor::dump
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
_DATA	SEGMENT
	ORG $+2
$SG2468	DB	'dump - ', 00H
$SG2470	DB	' ', 00H
	ORG $+2
$SG2471	DB	' ', 00H
	ORG $+2
$SG2472	DB	' ', 00H
	ORG $+2
$SG2473	DB	' ', 00H
	ORG $+2
$SG2474	DB	' ', 00H
	ORG $+2
$SG2475	DB	' ', 00H
	ORG $+2
$SG2476	DB	' ', 00H
	ORG $+2
$SG2482	DB	'Read-only.', 00H
	ORG $+1
$SG2484	DB	'Execute-only, accessed.', 00H
$SG2486	DB	'Execute read.', 00H
	ORG $+2
$SG2488	DB	'Undefined.', 00H
	ORG $+1
$SG2490	DB	'Available 32bit TSS.', 00H
	ORG $+3
$SG2492	DB	'TSS at ', 00H
$SG2493	DB	':', 00H
	ORG $+2
$SG2496	DB	'Invalid type ', 00H
	ORG $+2
$SG2497	DB	'CDescriptor::dump - Halted.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -16
_pThis$ = -12
_pFunctionName$ = -8
?dump@CDescriptor@@QAEXXZ PROC NEAR			; CDescriptor::dump

; 146  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 147  : 	BYTE* pThis;
; 148  : 	const char pFunctionName[] = "dump - ";

	mov	eax, DWORD PTR $SG2468
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2468+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx

; 149  : 
; 150  : 	// Dump raw descriptor.
; 151  : 	pThis = (BYTE*)this;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR _pThis$[ebp], edx

; 152  : 	cout << m_pClassName << pFunctionName << pThis[7] << " " << pThis[6] << " " << pThis[5] << " " << pThis[4] << " " << pThis[3] << " " << pThis[2] << " " << pThis[1] << " " << pThis[0] << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pThis$[ebp]
	mov	cl, BYTE PTR [eax]
	push	ecx
	push	OFFSET FLAT:$SG2476
	mov	edx, DWORD PTR _pThis$[ebp]
	mov	al, BYTE PTR [edx+1]
	push	eax
	push	OFFSET FLAT:$SG2475
	mov	ecx, DWORD PTR _pThis$[ebp]
	mov	dl, BYTE PTR [ecx+2]
	push	edx
	push	OFFSET FLAT:$SG2474
	mov	eax, DWORD PTR _pThis$[ebp]
	mov	cl, BYTE PTR [eax+3]
	push	ecx
	push	OFFSET FLAT:$SG2473
	mov	edx, DWORD PTR _pThis$[ebp]
	mov	al, BYTE PTR [edx+4]
	push	eax
	push	OFFSET FLAT:$SG2472
	mov	ecx, DWORD PTR _pThis$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	push	edx
	push	OFFSET FLAT:$SG2471
	mov	eax, DWORD PTR _pThis$[ebp]
	mov	cl, BYTE PTR [eax+6]
	push	ecx
	push	OFFSET FLAT:$SG2470
	mov	edx, DWORD PTR _pThis$[ebp]
	mov	al, BYTE PTR [edx+7]
	push	eax
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 156  : 	{

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	mov	DWORD PTR -20+[ebp], eax
	cmp	DWORD PTR -20+[ebp], 10			; 0000000aH
	jg	SHORT $L2648
	cmp	DWORD PTR -20+[ebp], 10			; 0000000aH
	je	$L2485
	cmp	DWORD PTR -20+[ebp], 0
	je	SHORT $L2481
	cmp	DWORD PTR -20+[ebp], 9
	je	SHORT $L2483
	jmp	$L2494
$L2648:
	cmp	DWORD PTR -20+[ebp], 256		; 00000100H
	je	$L2487
	cmp	DWORD PTR -20+[ebp], 265		; 00000109H
	je	$L2489
	jmp	$L2494
$L2481:

; 159  : 			cout << m_pClassName << pFunctionName << "Read-only." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2482
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 160  : 			break;

	jmp	$L2478
$L2483:

; 164  : 			cout << m_pClassName << pFunctionName << "Execute-only, accessed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2484
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 165  : 			break;

	jmp	$L2478
$L2485:

; 169  : 			cout << m_pClassName << pFunctionName << "Execute read." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2486
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 170  : 			break;

	jmp	$L2478
$L2487:

; 174  : 			cout << m_pClassName << pFunctionName << "Undefined." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2488
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 175  : 			break;

	jmp	$L2478
$L2489:

; 179  : 			// Avilable 32bit TSS.
; 180  : 			cout << m_pClassName << pFunctionName << "Available 32bit TSS." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2490
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 181  : 			cout << m_pClassName << pFunctionName << "TSS at " << m_iSelector << ":" << (OFFSET)((m_Offset_16_31<<16)+m_Offset_0_15) << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dx, WORD PTR [ecx+6]
	shl	edx, 16					; 00000010H
	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cx, WORD PTR [eax]
	add	edx, ecx
	push	edx
	push	OFFSET FLAT:$SG2493
	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx+2]
	push	eax
	push	OFFSET FLAT:$SG2492
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 182  : 			break;

	jmp	SHORT $L2478
$L2494:

; 186  : 			// System type not supported.
; 187  : 			cout << m_pClassName << pFunctionName << "Invalid type " << (WORD)getType() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	push	eax
	push	OFFSET FLAT:$SG2496
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 188  : 			Application.halt( "CDescriptor::dump - Halted." );

	push	OFFSET FLAT:$SG2497
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2478:

; 192  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?dump@CDescriptor@@QAEXXZ ENDP				; CDescriptor::dump
_TEXT	ENDS
PUBLIC	?getAvailable@CDescriptor@@QAE_NXZ		; CDescriptor::getAvailable
_TEXT	SEGMENT
_this$ = -4
?getAvailable@CDescriptor@@QAE_NXZ PROC NEAR		; CDescriptor::getAvailable

; 205  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 206  : 	// Return true if bit clear.
; 207  : 	return (m_Attributes.m_Available==0);

	mov	eax, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [eax+6]
	shr	al, 4
	and	al, 1
	and	eax, 255				; 000000ffH
	neg	eax
	sbb	eax, eax
	inc	eax

; 208  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getAvailable@CDescriptor@@QAE_NXZ ENDP			; CDescriptor::getAvailable
_TEXT	ENDS
_DATA	SEGMENT
$SG2506	DB	'getType - ', 00H
	ORG $+1
$SG2522	DB	'Descriptor::getType - Invalid memory type ', 00H
	ORG $+1
$SG2523	DB	'.', 00H
	ORG $+2
$SG2524	DB	'Descriptor::getType - Halted.', 00H
	ORG $+2
$SG2535	DB	'DescriptorType::getType - Invalid system type.', 00H
	ORG $+1
$SG2537	DB	'DescriptorType::getType - Invalid ''D'' type.', 00H
$SG2539	DB	'Type is ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -20
_eType$ = -16
_pFunctionName$ = -12
?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ PROC NEAR ; CDescriptor::getType

; 221  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	DWORD PTR _this$[ebp], ecx

; 222  : 	EDescriptorType eType;
; 223  : 	const char pFunctionName[] = "getType - ";

	mov	eax, DWORD PTR $SG2506
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2506+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	dx, WORD PTR $SG2506+8
	mov	WORD PTR _pFunctionName$[ebp+8], dx
	mov	al, BYTE PTR $SG2506+10
	mov	BYTE PTR _pFunctionName$[ebp+10], al

; 227  : 	{

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getDType@CDescriptor@@QAE?AW4EDType@@XZ ; CDescriptor::getDType
	mov	DWORD PTR -24+[ebp], eax
	cmp	DWORD PTR -24+[ebp], 0
	je	$L2525
	cmp	DWORD PTR -24+[ebp], 1
	je	SHORT $L2511
	jmp	$L2536
$L2511:

; 232  : 			{

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 15					; 0000000fH
	and	edx, 255				; 000000ffH
	mov	DWORD PTR -28+[ebp], edx
	cmp	DWORD PTR -28+[ebp], 14			; 0000000eH
	ja	SHORT $L2521
	mov	ecx, DWORD PTR -28+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L2651[ecx]
	jmp	DWORD PTR $L2652[eax*4]
$L2516:

; 233  : 				case 0x00:	eType = DT_READ_ONLY;				break;

	mov	DWORD PTR _eType$[ebp], 0
	jmp	SHORT $L2513
$L2517:

; 234  : 				case 0x02:	eType = DT_READ_WRITE;				break;	

	mov	DWORD PTR _eType$[ebp], 2
	jmp	SHORT $L2513
$L2518:

; 235  : 				case 0x09:	eType = DT_EXECUTE_ONLY_ACCESSED;	break;

	mov	DWORD PTR _eType$[ebp], 9
	jmp	SHORT $L2513
$L2519:

; 236  : 				case 0x0a:	eType = DT_EXECUTE_READ;			break;

	mov	DWORD PTR _eType$[ebp], 10		; 0000000aH
	jmp	SHORT $L2513
$L2520:

; 237  : 				case 0x0e:	eType = DT_386_INTERRUPT_GATE;		break;

	mov	DWORD PTR _eType$[ebp], 269		; 0000010dH
	jmp	SHORT $L2513
$L2521:

; 240  : 					cout << "Descriptor::getType - Invalid memory type " << m_iType << "." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2523
	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+5]
	and	al, 15					; 0000000fH
	push	eax
	push	OFFSET FLAT:$SG2522
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 241  : 					Application.halt( "Descriptor::getType - Halted." );

	push	OFFSET FLAT:$SG2524
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2513:

; 245  : 			break;

	jmp	SHORT $L2508
$L2525:

; 250  : 			{

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 15					; 0000000fH
	and	edx, 255				; 000000ffH
	mov	DWORD PTR -32+[ebp], edx
	cmp	DWORD PTR -32+[ebp], 11			; 0000000bH
	ja	SHORT $L2534
	mov	ecx, DWORD PTR -32+[ebp]
	xor	eax, eax
	mov	al, BYTE PTR $L2653[ecx]
	jmp	DWORD PTR $L2654[eax*4]
$L2530:

; 251  : 				case 0x00:	eType = DT_UNDEFINED_0;			break;

	mov	DWORD PTR _eType$[ebp], 256		; 00000100H
	jmp	SHORT $L2527
$L2531:

; 252  : 				case 0x02:	eType = DT_LDT;					break;

	mov	DWORD PTR _eType$[ebp], 258		; 00000102H
	jmp	SHORT $L2527
$L2532:

; 253  : 				case 0x09:	eType = DT_AVAILABLE_386_TSS;	break;

	mov	DWORD PTR _eType$[ebp], 265		; 00000109H
	jmp	SHORT $L2527
$L2533:

; 254  : 				case 0x0b:	eType = DT_BUSY_386_TSS;		break;

	mov	DWORD PTR _eType$[ebp], 267		; 0000010bH
	jmp	SHORT $L2527
$L2534:

; 257  : 					Application.halt( "DescriptorType::getType - Invalid system type." );

	push	OFFSET FLAT:$SG2535
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2527:

; 261  : 			break;

	jmp	SHORT $L2508
$L2536:

; 265  : 			Application.halt( "DescriptorType::getType - Invalid 'D' type." );

	push	OFFSET FLAT:$SG2537
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2508:

; 269  : 	cout << m_pClassName << pFunctionName << "Type is " << (WORD)eType << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	dx, WORD PTR _eType$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2539
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 270  : 
; 271  : 	// Return descriptor type.
; 272  : 	return eType;

	mov	eax, DWORD PTR _eType$[ebp]

; 273  : }

	mov	esp, ebp
	pop	ebp
	ret	0
$L2652:
	DD	$L2516
	DD	$L2517
	DD	$L2518
	DD	$L2519
	DD	$L2520
	DD	$L2521
$L2651:
	DB	0
	DB	5
	DB	1
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	5
	DB	2
	DB	3
	DB	5
	DB	5
	DB	5
	DB	4
$L2654:
	DD	$L2530
	DD	$L2531
	DD	$L2532
	DD	$L2533
	DD	$L2534
$L2653:
	DB	0
	DB	4
	DB	1
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	4
	DB	2
	DB	4
	DB	3
?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ENDP	; CDescriptor::getType
_TEXT	ENDS
PUBLIC	?setAvailable@CDescriptor@@QAEX_N@Z		; CDescriptor::setAvailable
_TEXT	SEGMENT
_Available$ = 8
_this$ = -4
?setAvailable@CDescriptor@@QAEX_N@Z PROC NEAR		; CDescriptor::setAvailable

; 286  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 287  : 	if( Available==true )

	mov	eax, DWORD PTR _Available$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2544

; 288  : 		m_Attributes.m_Available = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+6]
	and	dl, 239					; 000000efH
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+6], dl

; 289  : 	else

	jmp	SHORT $L2545
$L2544:

; 290  : 		m_Attributes.m_Available = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+6]
	or	dl, 16					; 00000010H
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+6], dl
$L2545:

; 291  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setAvailable@CDescriptor@@QAEX_N@Z ENDP		; CDescriptor::setAvailable
_TEXT	ENDS
PUBLIC	?setBase@CDescriptor@@QAEXPAX@Z			; CDescriptor::setBase
PUBLIC	?setLimit@CDescriptor@@QAEXK@Z			; CDescriptor::setLimit
_TEXT	SEGMENT
_pBase$ = 8
_iLimit$ = 12
_this$ = -4
?setMemoryDescriptor@CDescriptor@@QAEXPAXK@Z PROC NEAR	; CDescriptor::setMemoryDescriptor

; 304  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 305  : 	// Set descriptor members.
; 306  : 	setBase( pBase );

	mov	eax, DWORD PTR _pBase$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setBase@CDescriptor@@QAEXPAX@Z		; CDescriptor::setBase

; 307  : 	setLimit( iLimit );

	mov	ecx, DWORD PTR _iLimit$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setLimit@CDescriptor@@QAEXK@Z		; CDescriptor::setLimit

; 308  : 	m_DType		 				= 1;

	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+5]
	or	al, 16					; 00000010H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+5], al

; 309  : 	m_Attributes.m_Zero	 		= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+6]
	and	al, 223					; 000000dfH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+6], al

; 310  : 	m_Attributes.m_D	 		= 1;

	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+6]
	or	al, 64					; 00000040H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+6], al

; 311  : 	m_Attributes.m_Granularity	= 1;

	mov	edx, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [edx+6]
	or	al, 128					; 00000080H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+6], al

; 312  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setMemoryDescriptor@CDescriptor@@QAEXPAXK@Z ENDP	; CDescriptor::setMemoryDescriptor
_DPL$ = 8
_this$ = -4
?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z PROC NEAR ; CDescriptor::setDPL

; 316  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 317  : 	m_DPL = DPL;

	mov	al, BYTE PTR _DPL$[ebp]
	and	al, 3
	shl	al, 5
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 159					; 0000009fH
	or	dl, al
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl

; 318  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z ENDP	; CDescriptor::setDPL
_TEXT	ENDS
PUBLIC	?setDWordCount@CDescriptor@@QAEXE@Z		; CDescriptor::setDWordCount
_TEXT	SEGMENT
_Count$ = 8
_this$ = -4
?setDWordCount@CDescriptor@@QAEXE@Z PROC NEAR		; CDescriptor::setDWordCount

; 322  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 323  : 	m_DWordCount = Count;

	mov	al, BYTE PTR _Count$[ebp]
	and	al, 31					; 0000001fH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+4]
	and	dl, 224					; 000000e0H
	or	dl, al
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+4], dl

; 324  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDWordCount@CDescriptor@@QAEXE@Z ENDP		; CDescriptor::setDWordCount
_TEXT	ENDS
_DATA	SEGMENT
	ORG $+3
$SG2567	DB	'CDescriptor::setLimit - Wrong type.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iLimit$ = 8
_this$ = -4
?setLimit@CDescriptor@@QAEXK@Z PROC NEAR		; CDescriptor::setLimit

; 337  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 338  : 	// Validate descriptor type.
; 339  : 	if( getDType()==DT_MEMORY )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getDType@CDescriptor@@QAE?AW4EDType@@XZ ; CDescriptor::getDType
	cmp	eax, 1
	jne	SHORT $L2563

; 341  : 		m_Limit_0_15  				= (WORD)((iLimit>>12)&0x0000ffffL);

	mov	eax, DWORD PTR _iLimit$[ebp]
	shr	eax, 12					; 0000000cH
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	WORD PTR [ecx], ax

; 342  : 		m_Attributes.m_Limit_16_19	= (BYTE)((iLimit&0x000f0000L)>>16);

	mov	edx, DWORD PTR _iLimit$[ebp]
	and	edx, 983040				; 000f0000H
	shr	edx, 16					; 00000010H
	and	dl, 15					; 0000000fH
	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+6]
	and	cl, 240					; 000000f0H
	or	cl, dl
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+6], cl

; 344  : 	else

	jmp	SHORT $L2566
$L2563:

; 346  : 		// Cannot set base on this type descriptors.
; 347  : 		Application.halt( "CDescriptor::setLimit - Wrong type." );

	push	OFFSET FLAT:$SG2567
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2566:

; 349  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setLimit@CDescriptor@@QAEXK@Z ENDP			; CDescriptor::setLimit
_TEXT	ENDS
PUBLIC	?setPointer@CDescriptor@@QAEXGPAX@Z		; CDescriptor::setPointer
_TEXT	SEGMENT
_iSelector$ = 8
_pPointer$ = 12
_this$ = -8
_iOffset$ = -4
?setPointer@CDescriptor@@QAEXGPAX@Z PROC NEAR		; CDescriptor::setPointer

; 362  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 363  : 	OFFSET iOffset;
; 364  : 
; 365  : 	// Copy handler address to offset.
; 366  : 	iOffset = (OFFSET)pPointer;

	mov	eax, DWORD PTR _pPointer$[ebp]
	mov	DWORD PTR _iOffset$[ebp], eax

; 367  : 
; 368  : 	// Set 48-bit pointer.
; 369  : 	//cout << m_pClassName << "setPointer(0x" << iSelector << ",0x" << iOffset << ")" << endl;
; 370  : 	m_Offset_0_15	= (WORD)(iOffset&0x0000ffff);

	mov	ecx, DWORD PTR _iOffset$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _this$[ebp]
	mov	WORD PTR [edx], cx

; 371  : 	m_Offset_16_31	= (WORD)(iOffset>>16);

	mov	eax, DWORD PTR _iOffset$[ebp]
	shr	eax, 16					; 00000010H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	WORD PTR [ecx+6], ax

; 372  : 	m_iSelector		= iSelector;

	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR _iSelector$[ebp]
	mov	WORD PTR [edx+2], ax

; 373  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setPointer@CDescriptor@@QAEXGPAX@Z ENDP		; CDescriptor::setPointer
_Present$ = 8
_this$ = -4
?setPresent@CDescriptor@@QAEX_N@Z PROC NEAR		; CDescriptor::setPresent

; 377  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 378  : 	if( Present==true )

	mov	eax, DWORD PTR _Present$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2581

; 379  : 		m_Present = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	or	dl, 128					; 00000080H
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl

; 380  : 	else

	jmp	SHORT $L2582
$L2581:

; 381  : 		m_Present = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 127					; 0000007fH
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl
$L2582:

; 382  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPresent@CDescriptor@@QAEX_N@Z ENDP			; CDescriptor::setPresent
_TEXT	ENDS
PUBLIC	?setDType@CDescriptor@@AAEXW4EDType@@@Z		; CDescriptor::setDType
_DATA	SEGMENT
$SG2594	DB	'Descriptor::setDType - Invalid type', 00H
_DATA	ENDS
_TEXT	SEGMENT
_DType$ = 8
_this$ = -4
?setDType@CDescriptor@@AAEXW4EDType@@@Z PROC NEAR	; CDescriptor::setDType

; 385  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 387  : 	{

	mov	eax, DWORD PTR _DType$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	cmp	DWORD PTR -8+[ebp], 0
	je	SHORT $L2591
	cmp	DWORD PTR -8+[ebp], 1
	je	SHORT $L2592
	jmp	SHORT $L2593
$L2591:

; 388  : 	case DT_SYSTEM:	m_DType = 0; break;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 239					; 000000efH
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl
	jmp	SHORT $L2588
$L2592:

; 389  : 	case DT_MEMORY: m_DType = 1; break;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	or	dl, 16					; 00000010H
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+5], dl
	jmp	SHORT $L2588
$L2593:

; 392  : 			Application.halt( "Descriptor::setDType - Invalid type" );

	push	OFFSET FLAT:$SG2594
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2588:

; 396  : 	//cout << m_pClassName << "setDType(" << m_DType << ")" << endl;
; 397  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDType@CDescriptor@@AAEXW4EDType@@@Z ENDP		; CDescriptor::setDType
_TEXT	ENDS
_DATA	SEGMENT
$SG2611	DB	'Descriptor::setBase - Type = ', 00H
	ORG $+2
$SG2612	DB	'CDescriptor::setBase - Wrong type.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pBase$ = 8
_this$ = -8
_iBase$ = -4
?setBase@CDescriptor@@QAEXPAX@Z PROC NEAR		; CDescriptor::setBase

; 410  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 415  : 	{

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 2
	je	SHORT $L2604
	cmp	DWORD PTR -12+[ebp], 10			; 0000000aH
	je	SHORT $L2604
	cmp	DWORD PTR -12+[ebp], 256		; 00000100H
	je	SHORT $L2604
	jmp	SHORT $L2609
$L2604:

; 420  : 			// Cast base pointer to integer.
; 421  : 			iBase = (OFFSET)pBase;

	mov	eax, DWORD PTR _pBase$[ebp]
	mov	DWORD PTR _iBase$[ebp], eax

; 422  : 	
; 423  : 			// Split base into descriptor fields.
; 424  : 			m_Base_0_15					= (WORD)(iBase&0x0000ffffL);

	mov	ecx, DWORD PTR _iBase$[ebp]
	and	ecx, 65535				; 0000ffffH
	mov	edx, DWORD PTR _this$[ebp]
	mov	WORD PTR [edx+2], cx

; 425  : 			m_Base_16_23				= (BYTE)((iBase&0x00ff0000L)>>16);

	mov	eax, DWORD PTR _iBase$[ebp]
	and	eax, 16711680				; 00ff0000H
	shr	eax, 16					; 00000010H
	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+4], al

; 426  : 			m_Attributes.m_Base_24_31	= (BYTE)((iBase&0xff000000L)>>24);

	mov	edx, DWORD PTR _iBase$[ebp]
	and	edx, -16777216				; ff000000H
	shr	edx, 24					; 00000018H
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+7], dl
$L2609:

; 430  : 			// Cannot set base on this type descriptors.
; 431  : 			dump();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?dump@CDescriptor@@QAEXXZ		; CDescriptor::dump

; 432  : 			cout << "Descriptor::setBase - Type = " << (WORD)getType() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getType@CDescriptor@@QAE?AW4EDescriptorType@@XZ ; CDescriptor::getType
	push	eax
	push	OFFSET FLAT:$SG2611
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 433  : 			Application.halt( "CDescriptor::setBase - Wrong type." );

	push	OFFSET FLAT:$SG2612
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 436  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setBase@CDescriptor@@QAEXPAX@Z ENDP			; CDescriptor::setBase
_TEXT	ENDS
PUBLIC	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z	; CDescriptor::setType
_DATA	SEGMENT
	ORG $+1
$SG2619	DB	'setType(', 00H
	ORG $+3
$SG2620	DB	')', 00H
	ORG $+2
$SG2633	DB	'CDescriptor::setType - Invalid type.', 00H
	ORG $+3
$SG2635	DB	'setType - Type set to ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_eType$ = 8
_this$ = -4
?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z PROC NEAR ; CDescriptor::setType

; 449  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 450  : 	// Set appropriate field value.
; 451  : 	if(m_bDebug) cout << m_pClassName << "setType(" << (WORD)eType << ")" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2617
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2620
	mov	cx, WORD PTR _eType$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2619
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
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
$L2617:

; 453  : 	{

	mov	edx, DWORD PTR _eType$[ebp]
	mov	DWORD PTR -8+[ebp], edx
	cmp	DWORD PTR -8+[ebp], 258			; 00000102H
	jg	SHORT $L2665
	cmp	DWORD PTR -8+[ebp], 258			; 00000102H
	je	$L2628
	cmp	DWORD PTR -8+[ebp], 0
	je	SHORT $L2625
	cmp	DWORD PTR -8+[ebp], 2
	je	SHORT $L2626
	cmp	DWORD PTR -8+[ebp], 10			; 0000000aH
	je	SHORT $L2627
	jmp	$L2632
$L2665:
	cmp	DWORD PTR -8+[ebp], 265			; 00000109H
	je	$L2629
	cmp	DWORD PTR -8+[ebp], 267			; 0000010bH
	je	$L2630
	cmp	DWORD PTR -8+[ebp], 269			; 0000010dH
	je	$L2631
	jmp	$L2632
$L2625:

; 454  : 	case DT_READ_ONLY:			m_iType = 0x00; setDType(DT_MEMORY); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	$L2622
$L2626:

; 455  : 	case DT_READ_WRITE:			m_iType = 0x02; setDType(DT_MEMORY); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 2
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	$L2622
$L2627:

; 456  : 	case DT_EXECUTE_READ:		m_iType = 0x0a; setDType(DT_MEMORY); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 10					; 0000000aH
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	$L2622
$L2628:

; 457  : 	case DT_LDT:				m_iType = 0x02; setDType(DT_MEMORY); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 2
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	SHORT $L2622
$L2629:

; 460  : 			dump();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?dump@CDescriptor@@QAEXXZ		; CDescriptor::dump

; 461  : 			m_iType = 0x09; 

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 9
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl

; 462  : 			setDType(DT_SYSTEM); 

	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType

; 463  : 			dump();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?dump@CDescriptor@@QAEXXZ		; CDescriptor::dump

; 464  : 			break;

	jmp	SHORT $L2622
$L2630:

; 466  : 	case DT_BUSY_386_TSS:		m_iType = 0x0b; setDType(DT_SYSTEM); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 11					; 0000000bH
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	SHORT $L2622
$L2631:

; 467  : 	case DT_386_INTERRUPT_GATE:	m_iType = 0x0e; setDType(DT_SYSTEM); break;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+5]
	and	cl, 240					; 000000f0H
	or	cl, 14					; 0000000eH
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], cl
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDType@CDescriptor@@AAEXW4EDType@@@Z	; CDescriptor::setDType
	jmp	SHORT $L2622
$L2632:

; 471  : 			Application.halt( "CDescriptor::setType - Invalid type." );

	push	OFFSET FLAT:$SG2633
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2622:

; 475  : 	if(m_bDebug) cout << m_pClassName << "setType - Type set to " << m_iType << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2634
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+5]
	and	dl, 15					; 0000000fH
	push	edx
	push	OFFSET FLAT:$SG2635
	push	OFFSET FLAT:?m_pClassName@CDescriptor@@0QBDB ; CDescriptor::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2634:

; 476  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ENDP	; CDescriptor::setType
_TEXT	ENDS
END
