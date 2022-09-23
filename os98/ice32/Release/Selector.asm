	TITLE	E:\WORKSHOP\os98\ice32\Selector.cpp
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
PUBLIC	?m_pClassName@CSelector@@0QBDB			; CSelector::m_pClassName
CONST	SEGMENT
?m_pClassName@CSelector@@0QBDB DB 'CSelector::', 00H	; CSelector::m_pClassName
CONST	ENDS
PUBLIC	??0CSelector@@QAE@G@Z				; CSelector::CSelector
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -4
??0CSelector@@QAE@G@Z PROC NEAR				; CSelector::CSelector

; 21   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 22   : 	m_iSelector			= iSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSelector$[ebp]
	mov	WORD PTR [eax], cx

; 23   : 	m_iPriviledgeLevel	= (iSelector & 0x0003)>>0;

	mov	edx, DWORD PTR _iSelector$[ebp]
	and	edx, 65535				; 0000ffffH
	and	edx, 3
	and	dx, 3
	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR [eax+2]
	and	cx, 65532				; 0000fffcH
	or	cx, dx
	mov	edx, DWORD PTR _this$[ebp]
	mov	WORD PTR [edx+2], cx

; 24   : 	m_iTableIndicator	= (iSelector & 0x0004)>>2;

	mov	eax, DWORD PTR _iSelector$[ebp]
	and	eax, 65535				; 0000ffffH
	and	eax, 4
	sar	eax, 2
	and	ax, 1
	shl	ax, 2
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dx, WORD PTR [ecx+2]
	and	dx, 65531				; 0000fffbH
	or	dx, ax
	mov	eax, DWORD PTR _this$[ebp]
	mov	WORD PTR [eax+2], dx

; 25   : 	m_iIndex			= (iSelector & 0xfff8)>>3;

	mov	ecx, DWORD PTR _iSelector$[ebp]
	and	ecx, 65535				; 0000ffffH
	and	ecx, 65528				; 0000fff8H
	sar	ecx, 3
	and	cx, 8191				; 00001fffH
	shl	cx, 3
	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx+2]
	and	ax, 7
	or	ax, cx
	mov	ecx, DWORD PTR _this$[ebp]
	mov	WORD PTR [ecx+2], ax

; 26   : } 

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0CSelector@@QAE@G@Z ENDP				; CSelector::CSelector
_TEXT	ENDS
PUBLIC	??1CSelector@@QAE@XZ				; CSelector::~CSelector
_TEXT	SEGMENT
_this$ = -4
??1CSelector@@QAE@XZ PROC NEAR				; CSelector::~CSelector

; 39   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 40   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CSelector@@QAE@XZ ENDP				; CSelector::~CSelector
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?dump@CSelector@@QAEXXZ				; CSelector::dump
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?getGDT@CCPU@@QAEAAVCGDT@@XZ:NEAR		; CCPU::getGDT
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?dump@CDescriptor@@QAEXXZ:NEAR			; CDescriptor::dump
EXTRN	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z:NEAR ; CDescriptorTable::getDescriptor
_DATA	SEGMENT
$SG2462	DB	'dump - ', 00H
$SG2463	DB	'Selector = 0x', 00H
	ORG $+2
$SG2464	DB	'DPL = ', 00H
	ORG $+1
$SG2465	DB	'TID = ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -16
_pDescriptor$ = -12
_pFunctionName$ = -8
?dump@CSelector@@QAEXXZ PROC NEAR			; CSelector::dump

; 53   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 54   : 	CDescriptor* pDescriptor;
; 55   : 	const char pFunctionName[] = "dump - ";

	mov	eax, DWORD PTR $SG2462
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2462+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx

; 56   : 
; 57   : 	// Display member values.
; 58   : 	cout << m_pClassName << pFunctionName << "Selector = 0x" << m_iSelector << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx]
	push	eax
	push	OFFSET FLAT:$SG2463
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CSelector@@0QBDB ; CSelector::m_pClassName
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

; 59   : 	cout << m_pClassName << pFunctionName << "DPL = " << m_iPriviledgeLevel << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx+2]
	and	ax, 3
	push	eax
	push	OFFSET FLAT:$SG2464
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CSelector@@0QBDB ; CSelector::m_pClassName
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

; 60   : 	cout << m_pClassName << pFunctionName << "TID = " << m_iTableIndicator << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx+2]
	shr	ax, 2
	and	ax, 1
	push	eax
	push	OFFSET FLAT:$SG2465
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CSelector@@0QBDB ; CSelector::m_pClassName
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

; 64   : 	{

	mov	edx, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [edx+2]
	shr	ax, 2
	and	ax, 1
	and	eax, 65535				; 0000ffffH
	mov	DWORD PTR -20+[ebp], eax
	cmp	DWORD PTR -20+[ebp], 0
	je	SHORT $L2470
	jmp	SHORT $L2467
$L2470:

; 67   : 			// Selector referes to GDT.
; 68   : 			pDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( m_iSelector );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dx, WORD PTR [ecx]
	push	edx
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGDT@CCPU@@QAEAAVCGDT@@XZ		; CCPU::getGDT
	mov	ecx, eax
	call	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
	mov	DWORD PTR _pDescriptor$[ebp], eax

; 69   : 			pDescriptor->dump();

	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?dump@CDescriptor@@QAEXXZ		; CDescriptor::dump
$L2467:

; 78   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?dump@CSelector@@QAEXXZ ENDP				; CSelector::dump
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
PUBLIC	?getDescriptorTableScope@CSelector@@QAE?AW4EDescriptorTableScope@@XZ ; CSelector::getDescriptorTableScope
_TEXT	SEGMENT
_this$ = -8
_iTableScope$ = -4
?getDescriptorTableScope@CSelector@@QAE?AW4EDescriptorTableScope@@XZ PROC NEAR ; CSelector::getDescriptorTableScope

; 91   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 96   : 	{

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR [eax+2]
	shr	cx, 2
	and	cx, 1
	and	ecx, 65535				; 0000ffffH
	mov	DWORD PTR -12+[ebp], ecx
	cmp	DWORD PTR -12+[ebp], 0
	je	SHORT $L2480
	cmp	DWORD PTR -12+[ebp], 1
	je	SHORT $L2481
	jmp	SHORT $L2482
$L2480:

; 99   : 			iTableScope = DTS_GLOBAL;

	mov	DWORD PTR _iTableScope$[ebp], 0

; 100  : 			break;

	jmp	SHORT $L2477
$L2481:

; 104  : 			iTableScope = DTS_LOCAL;

	mov	DWORD PTR _iTableScope$[ebp], 1
$L2482:
$L2477:

; 112  : 
; 113  : 	// Return scope of table.
; 114  : 	return iTableScope;

	mov	eax, DWORD PTR _iTableScope$[ebp]

; 115  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDescriptorTableScope@CSelector@@QAE?AW4EDescriptorTableScope@@XZ ENDP ; CSelector::getDescriptorTableScope
_TEXT	ENDS
END
