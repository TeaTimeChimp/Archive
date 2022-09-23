	TITLE	E:\WORKSHOP\os98\ice32\DescriptorTable.cpp
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
;	COMDAT ??_GCDescriptorTable@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CDescriptorTable@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDescriptorTable@@0QBDB		; CDescriptorTable::m_pClassName
PUBLIC	?m_bDebug@CDescriptorTable@@0_NB		; CDescriptorTable::m_bDebug
CONST	SEGMENT
?m_pClassName@CDescriptorTable@@0QBDB DB 'DescriptorTable::', 00H ; CDescriptorTable::m_pClassName
?m_bDebug@CDescriptorTable@@0_NB DB 00H			; CDescriptorTable::m_bDebug
CONST	ENDS
PUBLIC	??0CDescriptorTable@@QAE@PAXG@Z			; CDescriptorTable::CDescriptorTable
PUBLIC	??_7CDescriptorTable@@6B@			; CDescriptorTable::`vftable'
PUBLIC	??_GCDescriptorTable@@UAEPAXI@Z			; CDescriptorTable::`scalar deleting destructor'
PUBLIC	??_ECDescriptorTable@@UAEPAXI@Z			; CDescriptorTable::`vector deleting destructor'
;	COMDAT ??_7CDescriptorTable@@6B@
; File E:\WORKSHOP\os98\ice32\DescriptorTable.cpp
CONST	SEGMENT
??_7CDescriptorTable@@6B@ DD FLAT:??_ECDescriptorTable@@UAEPAXI@Z ; CDescriptorTable::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_pBase$ = 8
_iEntries$ = 12
_this$ = -4
??0CDescriptorTable@@QAE@PAXG@Z PROC NEAR		; CDescriptorTable::CDescriptorTable

; 27   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDescriptorTable@@6B@ ; CDescriptorTable::`vftable'

; 28   : #ifdef WIN32
; 29   : 	// Allocate memory under NT.
; 30   : 	pBase = VirtualAlloc( pBase, iEntries*8, MEM_COMMIT, PAGE_READWRITE );
; 31   : 	if( pBase==NULL )
; 32   : 		pBase = VirtualAlloc( NULL, iEntries*8, MEM_COMMIT, PAGE_READWRITE );		
; 33   : #endif
; 34   : 
; 35   : 	// Set table base address.
; 36   : 	m_pFirst	= (CDescriptor*)pBase;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pBase$[ebp]
	mov	DWORD PTR [ecx+4], edx

; 37   : 	m_pLast		= (CDescriptor*)((char*)pBase+((iEntries-1)<<3));

	mov	eax, DWORD PTR _iEntries$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _pBase$[ebp]
	lea	edx, DWORD PTR [ecx+eax*8-8]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx

; 38   : 	m_iEntries	= iEntries;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dx, WORD PTR _iEntries$[ebp]
	mov	WORD PTR [ecx+16], dx

; 39   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CDescriptorTable@@QAE@PAXG@Z ENDP			; CDescriptorTable::CDescriptorTable
_TEXT	ENDS
PUBLIC	??1CDescriptorTable@@UAE@XZ			; CDescriptorTable::~CDescriptorTable
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCDescriptorTable@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCDescriptorTable@@UAEPAXI@Z PROC NEAR		; CDescriptorTable::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDescriptorTable@@UAE@XZ		; CDescriptorTable::~CDescriptorTable
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2450
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2450:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCDescriptorTable@@UAEPAXI@Z ENDP			; CDescriptorTable::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CDescriptorTable@@UAE@XZ PROC NEAR			; CDescriptorTable::~CDescriptorTable

; 43   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDescriptorTable@@6B@ ; CDescriptorTable::`vftable'

; 44   : 
; 45   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CDescriptorTable@@UAE@XZ ENDP			; CDescriptorTable::~CDescriptorTable
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::setMemoryDescriptor
PUBLIC	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
PUBLIC	?getFirstAvailableDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@XZ ; CDescriptorTable::getFirstAvailableDescriptor
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
_DATA	SEGMENT
$SG2464	DB	'addSegment - Type = ', 00H
	ORG $+3
$SG2466	DB	'DescriptorTable::addSegment - Failed.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_eType$ = 8
_eDPL$ = 12
_pBase$ = 16
_iLimit$ = 20
_this$ = -12
_Selector$ = -8
_pDescriptor$ = -4
?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z PROC NEAR ; CDescriptorTable::addMemoryDescriptor

; 59   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 60   : 	SELECTOR Selector;
; 61   : 	CDescriptor* pDescriptor;
; 62   : 
; 63   : 	// Assume failure.
; 64   : 	Selector = NULL;

	mov	WORD PTR _Selector$[ebp], 0

; 65   : 
; 66   : 	// Locate a free descriptor entry.
; 67   : 	cout << m_pClassName << "addSegment - Type = " << (WORD)eType << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ax, WORD PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2464
	push	OFFSET FLAT:?m_pClassName@CDescriptorTable@@0QBDB ; CDescriptorTable::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 68   : 	pDescriptor = getFirstAvailableDescriptor();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getFirstAvailableDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@XZ ; CDescriptorTable::getFirstAvailableDescriptor
	mov	DWORD PTR _pDescriptor$[ebp], eax

; 69   : 	if( pDescriptor==NULL )

	cmp	DWORD PTR _pDescriptor$[ebp], 0
	jne	SHORT $L2465

; 70   : 		Application.halt( "DescriptorTable::addSegment - Failed." );

	push	OFFSET FLAT:$SG2466
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 71   : 	else

	jmp	SHORT $L2467
$L2465:

; 72   : 		Selector = setMemoryDescriptor( pDescriptor, eType, eDPL, pBase, iLimit );

	mov	ecx, DWORD PTR _iLimit$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pBase$[ebp]
	push	edx
	mov	eax, DWORD PTR _eDPL$[ebp]
	push	eax
	mov	ecx, DWORD PTR _eType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pDescriptor$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::setMemoryDescriptor
	mov	WORD PTR _Selector$[ebp], ax
$L2467:

; 73   : 
; 74   : 	// Return new selector.
; 75   : 	return Selector;

	mov	ax, WORD PTR _Selector$[ebp]

; 76   : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ENDP ; CDescriptorTable::addMemoryDescriptor
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
PUBLIC	?setGateDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z ; CDescriptorTable::setGateDescriptor
PUBLIC	?addGateDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z ; CDescriptorTable::addGateDescriptor
_DATA	SEGMENT
	ORG $+2
$SG2478	DB	'addSystemDescriptor - Type = ', 00H
	ORG $+2
$SG2480	DB	'DescriptorTable::addSystemDescriptor - Failed.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_eType$ = 8
_eDPL$ = 12
_iSelector$ = 16
_pPointer$ = 20
_this$ = -12
_Selector$ = -8
_pDescriptor$ = -4
?addGateDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z PROC NEAR ; CDescriptorTable::addGateDescriptor

; 90   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 91   : 	SELECTOR Selector;
; 92   : 	CDescriptor* pDescriptor;
; 93   : 
; 94   : 	// Assume failure.
; 95   : 	Selector = NULL;

	mov	WORD PTR _Selector$[ebp], 0

; 96   : 
; 97   : 	// Locate a free descriptor entry.
; 98   : 	cout << m_pClassName << "addSystemDescriptor - Type = " << (WORD)eType << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ax, WORD PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2478
	push	OFFSET FLAT:?m_pClassName@CDescriptorTable@@0QBDB ; CDescriptorTable::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 99   : 	pDescriptor = getFirstAvailableDescriptor();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getFirstAvailableDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@XZ ; CDescriptorTable::getFirstAvailableDescriptor
	mov	DWORD PTR _pDescriptor$[ebp], eax

; 100  : 	if( pDescriptor==NULL )

	cmp	DWORD PTR _pDescriptor$[ebp], 0
	jne	SHORT $L2479

; 101  : 		Application.halt( "DescriptorTable::addSystemDescriptor - Failed." );

	push	OFFSET FLAT:$SG2480
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 102  : 	else

	jmp	SHORT $L2481
$L2479:

; 103  : 		Selector = setGateDescriptor( pDescriptor, eType, eDPL, iSelector, pPointer );

	mov	ecx, DWORD PTR _pPointer$[ebp]
	push	ecx
	mov	dx, WORD PTR _iSelector$[ebp]
	push	edx
	mov	eax, DWORD PTR _eDPL$[ebp]
	push	eax
	mov	ecx, DWORD PTR _eType$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pDescriptor$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setGateDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z ; CDescriptorTable::setGateDescriptor
	mov	WORD PTR _Selector$[ebp], ax
$L2481:

; 104  : 
; 105  : 	// Return new selector.
; 106  : 	return Selector;

	mov	ax, WORD PTR _Selector$[ebp]

; 107  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?addGateDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z ENDP ; CDescriptorTable::addGateDescriptor
_TEXT	ENDS
PUBLIC	?create@CDescriptorTable@@QAE?BKXZ		; CDescriptorTable::create
EXTRN	_memset:NEAR
_TEXT	SEGMENT
_this$ = -4
?create@CDescriptorTable@@QAE?BKXZ PROC NEAR		; CDescriptorTable::create

; 120  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 121  : 	// Zero table contents.
; 122  : 	memset( m_pFirst, 0x00000000, m_pLast-m_pFirst );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+8]
	sub	edx, DWORD PTR [ecx+4]
	sar	edx, 3
	push	edx
	push	0
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH

; 123  : 
; 124  : 	// Return no error.
; 125  : 	return EC_NONE;

	xor	eax, eax

; 126  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CDescriptorTable@@QAE?BKXZ ENDP			; CDescriptorTable::create
_TEXT	ENDS
PUBLIC	?getEntries@CDescriptorTable@@IBEGXZ		; CDescriptorTable::getEntries
PUBLIC	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
_DATA	SEGMENT
	ORG $+1
$SG2492	DB	'getDescriptor - ', 00H
	ORG $+3
$SG2494	DB	'Selector = ', 00H
$SG2496	DB	'DescriptorTable::getDescriptor - Invalid index.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -32
_iIndex$ = -24
_pDescriptor$ = -28
_pFunctionName$ = -20
?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z PROC NEAR ; CDescriptorTable::getDescriptor

; 140  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	DWORD PTR _this$[ebp], ecx

; 141  : 	int iIndex;
; 142  : 	CDescriptor* pDescriptor;
; 143  : 	const char pFunctionName[] = "getDescriptor - ";

	mov	eax, DWORD PTR $SG2492
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2492+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2492+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2492+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cl, BYTE PTR $SG2492+16
	mov	BYTE PTR _pFunctionName$[ebp+16], cl

; 144  : 
; 145  : 	// Calculate pointer offset from base.
; 146  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Selector = " << iSelector << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2493
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2494
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDescriptorTable@@0QBDB ; CDescriptorTable::m_pClassName
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
$L2493:

; 147  : 	iIndex = iSelector >> 3;

	mov	edx, DWORD PTR _iSelector$[ebp]
	and	edx, 65535				; 0000ffffH
	sar	edx, 3
	mov	DWORD PTR _iIndex$[ebp], edx

; 148  : 	if( iIndex>getEntries() )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getEntries@CDescriptorTable@@IBEGXZ	; CDescriptorTable::getEntries
	and	eax, 65535				; 0000ffffH
	cmp	DWORD PTR _iIndex$[ebp], eax
	jle	SHORT $L2495

; 149  : 		Application.halt( "DescriptorTable::getDescriptor - Invalid index." );

	push	OFFSET FLAT:$SG2496
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2495:

; 150  : 	pDescriptor = &(m_pFirst[iIndex]);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	edx, DWORD PTR _iIndex$[ebp]
	lea	eax, DWORD PTR [ecx+edx*8]
	mov	DWORD PTR _pDescriptor$[ebp], eax

; 151  : 
; 152  : 	// Return pointer to descriptor.
; 153  : 	return pDescriptor;

	mov	eax, DWORD PTR _pDescriptor$[ebp]

; 154  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ENDP ; CDescriptorTable::getDescriptor
_TEXT	ENDS
EXTRN	?getAvailable@CDescriptor@@QAE_NXZ:NEAR		; CDescriptor::getAvailable
_DATA	SEGMENT
$SG2505	DB	'Failed to find a free descriptor.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -8
_pDescriptor$ = -4
?getFirstAvailableDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@XZ PROC NEAR ; CDescriptorTable::getFirstAvailableDescriptor

; 167  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 168  : 	CDescriptor* pDescriptor;
; 169  : 
; 170  : 	// Locate first unused descriptor entry.
; 171  : 	pDescriptor = m_pFirst;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pDescriptor$[ebp], ecx
$L2502:

; 172  : 	while( pDescriptor<=m_pLast && pDescriptor->getAvailable()==false )

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pDescriptor$[ebp]
	cmp	eax, DWORD PTR [edx+8]
	ja	SHORT $L2503
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?getAvailable@CDescriptor@@QAE_NXZ	; CDescriptor::getAvailable
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L2503

; 173  : 		pDescriptor++;

	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	add	ecx, 8
	mov	DWORD PTR _pDescriptor$[ebp], ecx
	jmp	SHORT $L2502
$L2503:

; 174  : 
; 175  : 	// Set to NULL if no free descriptors.
; 176  : 	if( pDescriptor>m_pLast )

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pDescriptor$[ebp]
	cmp	eax, DWORD PTR [edx+8]
	jbe	SHORT $L2504

; 178  : 		pDescriptor = NULL;

	mov	DWORD PTR _pDescriptor$[ebp], 0

; 179  : 		Application.halt( "Failed to find a free descriptor." );

	push	OFFSET FLAT:$SG2505
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt
$L2504:

; 181  : 
; 182  : 	// Return free descriptor.
; 183  : 	return pDescriptor;		

	mov	eax, DWORD PTR _pDescriptor$[ebp]

; 184  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getFirstAvailableDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@XZ ENDP ; CDescriptorTable::getFirstAvailableDescriptor
_this$ = -4
?getEntries@CDescriptorTable@@IBEGXZ PROC NEAR		; CDescriptorTable::getEntries

; 197  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 198  : 	// Return number of entries.
; 199  : 	return m_iEntries;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+16]

; 200  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getEntries@CDescriptorTable@@IBEGXZ ENDP		; CDescriptorTable::getEntries
_TEXT	ENDS
PUBLIC	?first@CDescriptorTable@@IAEPAVCDescriptor@@XZ	; CDescriptorTable::first
_TEXT	SEGMENT
_this$ = -4
?first@CDescriptorTable@@IAEPAVCDescriptor@@XZ PROC NEAR ; CDescriptorTable::first

; 204  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 205  : 	m_pCursor = m_pFirst;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR [eax+12], edx

; 206  : 	return m_pCursor;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 207  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?first@CDescriptorTable@@IAEPAVCDescriptor@@XZ ENDP	; CDescriptorTable::first
_TEXT	ENDS
PUBLIC	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ ; CDescriptorTable::getBase
_TEXT	SEGMENT
_this$ = -4
?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ PROC NEAR ; CDescriptorTable::getBase

; 220  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 221  : 	// Return base address.
; 222  : 	return m_pFirst;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]

; 223  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ ENDP	; CDescriptorTable::getBase
_TEXT	ENDS
PUBLIC	?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ	; CDescriptorTable::next
_TEXT	SEGMENT
_this$ = -4
?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ PROC NEAR	; CDescriptorTable::next

; 227  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 228  : 	if( m_pCursor!=m_pLast )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+12]
	cmp	edx, DWORD PTR [ecx+8]
	je	SHORT $L2518

; 229  : 		m_pCursor++;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	add	ecx, 8
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+12], ecx
$L2518:

; 230  : 	return m_pCursor;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 231  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?next@CDescriptorTable@@IAEPAVCDescriptor@@XZ ENDP	; CDescriptorTable::next
_TEXT	ENDS
PUBLIC	?more@CDescriptorTable@@IAE_NXZ			; CDescriptorTable::more
_TEXT	SEGMENT
_this$ = -4
?more@CDescriptorTable@@IAE_NXZ PROC NEAR		; CDescriptorTable::more

; 235  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 236  : 	if( m_pCursor==m_pLast )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [eax+12]
	cmp	edx, DWORD PTR [ecx+8]
	jne	SHORT $L2522

; 237  : 		return false;

	xor	al, al
	jmp	SHORT $L2523
$L2522:

; 239  : 		return true;

	mov	al, 1
$L2523:

; 240  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?more@CDescriptorTable@@IAE_NXZ ENDP			; CDescriptorTable::more
_TEXT	ENDS
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	?set@CDescriptor@@QAEXW4EPriviledgeLevel@@PAXK@Z:NEAR ; CDescriptor::set
EXTRN	?setAvailable@CDescriptor@@QAEX_N@Z:NEAR	; CDescriptor::setAvailable
EXTRN	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z:NEAR ; CDescriptor::setType
_DATA	SEGMENT
	ORG $+2
$SG2533	DB	'setMemoryDescriptor(,', 00H
	ORG $+2
$SG2534	DB	',,)', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pDescriptor$ = 8
_eType$ = 12
_eDPL$ = 16
_pBase$ = 20
_iLimit$ = 24
_this$ = -4
?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z PROC NEAR ; CDescriptorTable::setMemoryDescriptor

; 253  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 254  : 	// Build new descriptor.
; 255  : 	cout << m_pClassName << "setMemoryDescriptor(," << (BYTE)eType << ",,)" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2534
	mov	al, BYTE PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2533
	push	OFFSET FLAT:?m_pClassName@CDescriptorTable@@0QBDB ; CDescriptorTable::m_pClassName
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

; 256  : 	pDescriptor->setAvailable( false );

	push	0
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setAvailable@CDescriptor@@QAEX_N@Z	; CDescriptor::setAvailable

; 257  : 	pDescriptor->setType( eType ); 

	mov	ecx, DWORD PTR _eType$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ; CDescriptor::setType

; 258  : 	pDescriptor->set( eDPL, pBase, iLimit );

	mov	edx, DWORD PTR _iLimit$[ebp]
	push	edx
	mov	eax, DWORD PTR _pBase$[ebp]
	push	eax
	mov	ecx, DWORD PTR _eDPL$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?set@CDescriptor@@QAEXW4EPriviledgeLevel@@PAXK@Z ; CDescriptor::set

; 259  : 
; 260  : 	// Selector is the offset from the table base.
; 261  : 	return (SELECTOR)((ADDRESS)pDescriptor-(ADDRESS)m_pFirst);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pDescriptor$[ebp]
	sub	eax, DWORD PTR [edx+4]

; 262  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ENDP ; CDescriptorTable::setMemoryDescriptor
_TEXT	ENDS
EXTRN	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z:NEAR ; CDescriptor::setDPL
EXTRN	?setPointer@CDescriptor@@QAEXGPAX@Z:NEAR	; CDescriptor::setPointer
_DATA	SEGMENT
$SG2547	DB	'setSystemDescriptor(,', 00H
	ORG $+2
$SG2548	DB	',,)', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pDescriptor$ = 8
_eType$ = 12
_eDPL$ = 16
_iSelector$ = 20
_pPointer$ = 24
_this$ = -4
?setGateDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z PROC NEAR ; CDescriptorTable::setGateDescriptor

; 275  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 276  : 	// Build new descriptor.
; 277  : 	cout << m_pClassName << "setSystemDescriptor(," << (BYTE)eType << ",,)" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2548
	mov	al, BYTE PTR _eType$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2547
	push	OFFSET FLAT:?m_pClassName@CDescriptorTable@@0QBDB ; CDescriptorTable::m_pClassName
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

; 278  : 	pDescriptor->setAvailable( false );

	push	0
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setAvailable@CDescriptor@@QAEX_N@Z	; CDescriptor::setAvailable

; 279  : 	pDescriptor->setType( eType );

	mov	ecx, DWORD PTR _eType$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ; CDescriptor::setType

; 280  : 	pDescriptor->setDPL( eDPL );

	mov	edx, DWORD PTR _eDPL$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setDPL@CDescriptor@@QAEXW4EPriviledgeLevel@@@Z ; CDescriptor::setDPL

; 281  : 	pDescriptor->setPointer( iSelector, pPointer );

	mov	eax, DWORD PTR _pPointer$[ebp]
	push	eax
	mov	cx, WORD PTR _iSelector$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setPointer@CDescriptor@@QAEXGPAX@Z	; CDescriptor::setPointer

; 282  : 
; 283  : 	// Selector is the offset from the table base.
; 284  : 	return (SELECTOR)((ADDRESS)pDescriptor-(ADDRESS)m_pFirst);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pDescriptor$[ebp]
	sub	eax, DWORD PTR [edx+4]

; 285  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?setGateDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@GPAX@Z ENDP ; CDescriptorTable::setGateDescriptor
_TEXT	ENDS
END
