	TITLE	E:\WORKSHOP\os98\ice32\PhysicalMemoryManager.cpp
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
;	COMDAT ??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_04GMLE@?5?$DN?$DO?5?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCPhysicalMemoryManager@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPageAllocationBit@CPhysicalMemoryManager@@AAEKK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPageAllocationBit@CPhysicalMemoryManager@@AAEXKK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CPhysicalMemoryManager@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CPhysicalMemoryManager@@0QBDB	; CPhysicalMemoryManager::m_pClassName
PUBLIC	?m_bDebugMap@CPhysicalMemoryManager@@0_NB	; CPhysicalMemoryManager::m_bDebugMap
PUBLIC	?m_iPageSize@CPhysicalMemoryManager@@0KB	; CPhysicalMemoryManager::m_iPageSize
PUBLIC	?m_iEntriesPerPageTable@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iEntriesPerPageTable
PUBLIC	?m_iLog2PageSize@CPhysicalMemoryManager@@0KB	; CPhysicalMemoryManager::m_iLog2PageSize
PUBLIC	?m_iLog2EntriesPerPageTable@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iLog2EntriesPerPageTable
PUBLIC	?m_iMaximumNumberOfPages@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iMaximumNumberOfPages
PUBLIC	?m_iReservedPageCount@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iReservedPageCount
PUBLIC	?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
PUBLIC	?m_iFirstPageOfBaseMemory@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iFirstPageOfBaseMemory
PUBLIC	?m_iLastPageOfBaseMemory@CPhysicalMemoryManager@@0KB ; CPhysicalMemoryManager::m_iLastPageOfBaseMemory
CONST	SEGMENT
?m_pClassName@CPhysicalMemoryManager@@0QBDB DB 'PhysicalMemoryManager::', 00H ; CPhysicalMemoryManager::m_pClassName
?m_bDebugMap@CPhysicalMemoryManager@@0_NB DB 00H	; CPhysicalMemoryManager::m_bDebugMap
CONST	ENDS
_DATA	SEGMENT
?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB DD 010800H ; CPhysicalMemoryManager::m_pPageAllocationMap
_DATA	ENDS
CONST	SEGMENT
	ORG $+3
?m_iPageSize@CPhysicalMemoryManager@@0KB DD 01000H	; CPhysicalMemoryManager::m_iPageSize
?m_iEntriesPerPageTable@CPhysicalMemoryManager@@0KB DD 0400H ; CPhysicalMemoryManager::m_iEntriesPerPageTable
?m_iLog2PageSize@CPhysicalMemoryManager@@0KB DD 0cH	; CPhysicalMemoryManager::m_iLog2PageSize
?m_iLog2EntriesPerPageTable@CPhysicalMemoryManager@@0KB DD 0aH ; CPhysicalMemoryManager::m_iLog2EntriesPerPageTable
?m_iMaximumNumberOfPages@CPhysicalMemoryManager@@0KB DD 0100000H ; CPhysicalMemoryManager::m_iMaximumNumberOfPages
?m_iReservedPageCount@CPhysicalMemoryManager@@0KB DD 0300H ; CPhysicalMemoryManager::m_iReservedPageCount
?m_iFirstPageOfBaseMemory@CPhysicalMemoryManager@@0KB DD 031H ; CPhysicalMemoryManager::m_iFirstPageOfBaseMemory
?m_iLastPageOfBaseMemory@CPhysicalMemoryManager@@0KB DD 09fH ; CPhysicalMemoryManager::m_iLastPageOfBaseMemory
CONST	ENDS
PUBLIC	??0CPhysicalMemoryManager@@QAE@XZ		; CPhysicalMemoryManager::CPhysicalMemoryManager
PUBLIC	??_7CPhysicalMemoryManager@@6B@			; CPhysicalMemoryManager::`vftable'
PUBLIC	??_GCPhysicalMemoryManager@@UAEPAXI@Z		; CPhysicalMemoryManager::`scalar deleting destructor'
PUBLIC	??_ECPhysicalMemoryManager@@UAEPAXI@Z		; CPhysicalMemoryManager::`vector deleting destructor'
;	COMDAT ??_7CPhysicalMemoryManager@@6B@
; File E:\WORKSHOP\os98\ice32\PhysicalMemoryManager.cpp
CONST	SEGMENT
??_7CPhysicalMemoryManager@@6B@ DD FLAT:??_ECPhysicalMemoryManager@@UAEPAXI@Z ; CPhysicalMemoryManager::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CPhysicalMemoryManager@@QAE@XZ PROC NEAR		; CPhysicalMemoryManager::CPhysicalMemoryManager

; 34   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CPhysicalMemoryManager@@6B@ ; CPhysicalMemoryManager::`vftable'

; 35   : 	// Initialise member variables.
; 36   : 	m_bDebug				= false;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+4], 0

; 37   : 	m_bDebugBreak			= false;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+5], 0

; 38   : 	m_iTotalPages			= 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+6], 0

; 39   : 	m_pPageDirectoryTable	= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+10], 0

; 40   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CPhysicalMemoryManager@@QAE@XZ ENDP			; CPhysicalMemoryManager::CPhysicalMemoryManager
_TEXT	ENDS
PUBLIC	??1CPhysicalMemoryManager@@UAE@XZ		; CPhysicalMemoryManager::~CPhysicalMemoryManager
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCPhysicalMemoryManager@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCPhysicalMemoryManager@@UAEPAXI@Z PROC NEAR		; CPhysicalMemoryManager::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CPhysicalMemoryManager@@UAE@XZ	; CPhysicalMemoryManager::~CPhysicalMemoryManager
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2446
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2446:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCPhysicalMemoryManager@@UAEPAXI@Z ENDP		; CPhysicalMemoryManager::`scalar deleting destructor'
_TEXT	ENDS
_TEXT	SEGMENT
_this$ = -4
??1CPhysicalMemoryManager@@UAE@XZ PROC NEAR		; CPhysicalMemoryManager::~CPhysicalMemoryManager

; 44   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CPhysicalMemoryManager@@6B@ ; CPhysicalMemoryManager::`vftable'

; 45   : 
; 46   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CPhysicalMemoryManager@@UAE@XZ ENDP			; CPhysicalMemoryManager::~CPhysicalMemoryManager
_TEXT	ENDS
PUBLIC	?allocate@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@I@Z ; CPhysicalMemoryManager::allocate
PUBLIC	?allocatePages@CPhysicalMemoryManager@@AAE_NPAVCPageDirectoryEntry@@IUSPlacement@1@@Z ; CPhysicalMemoryManager::allocatePages
PUBLIC	?placeBlockInPageDirectory@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@I@Z ; CPhysicalMemoryManager::placeBlockInPageDirectory
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_iBlockSize$ = 12
_this$ = -12
_sPlacement$ = -4
$T2841 = -8
?allocate@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@I@Z PROC NEAR ; CPhysicalMemoryManager::allocate

; 50   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 51   : 	SPlacement sPlacement;
; 52   : 
; 53   : 	// Force allocation size request to page granularity.
; 54   : 	iBlockSize = (((iBlockSize-1)>>m_iLog2PageSize)+1)<<m_iLog2PageSize;

	mov	eax, DWORD PTR _iBlockSize$[ebp]
	sub	eax, 1
	shr	eax, 12					; 0000000cH
	add	eax, 1
	shl	eax, 12					; 0000000cH
	mov	DWORD PTR _iBlockSize$[ebp], eax

; 55   : 
; 56   : 	// Place block in linear address space.
; 57   : 	sPlacement = placeBlockInPageDirectory( pPageDirectoryTable, iBlockSize );

	mov	ecx, DWORD PTR _iBlockSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	lea	eax, DWORD PTR $T2841[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?placeBlockInPageDirectory@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@I@Z ; CPhysicalMemoryManager::placeBlockInPageDirectory
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _sPlacement$[ebp], ecx

; 58   : 
; 59   : 	// Check result of block placement.
; 60   : 	if( sPlacement.placed==true )

	mov	edx, DWORD PTR _sPlacement$[ebp]
	and	edx, 1
	cmp	edx, 1
	jne	SHORT $L2457

; 62   : 		// Block placed, allocate page table entries.
; 63   : 		allocatePages( pPageDirectoryTable, iBlockSize, sPlacement );

	mov	eax, DWORD PTR _sPlacement$[ebp]
	push	eax
	mov	ecx, DWORD PTR _iBlockSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?allocatePages@CPhysicalMemoryManager@@AAE_NPAVCPageDirectoryEntry@@IUSPlacement@1@@Z ; CPhysicalMemoryManager::allocatePages

; 65   : 	else

	jmp	SHORT $L2458
$L2457:

; 67   : 		// Allocation failed return NULL.
; 68   : 		sPlacement.page_address = 0;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	and	eax, -4194301				; ffc00003H
	mov	DWORD PTR _sPlacement$[ebp], eax
$L2458:

; 70   : 
; 71   : 	// Return linear address of placement.
; 72   : 	return sPlacement.page_address<<12;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	shr	eax, 2
	and	eax, 1048575				; 000fffffH
	shl	eax, 12					; 0000000cH

; 73   : }

	mov	esp, ebp
	pop	ebp
	ret	8
?allocate@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@I@Z ENDP ; CPhysicalMemoryManager::allocate
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@	; `string'
PUBLIC	??_C@_02CEEM@?$CJ?5?$AA@			; `string'
PUBLIC	??_C@_04GMLE@?5?$DN?$DO?5?$AA@			; `string'
PUBLIC	?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::allocatePage
PUBLIC	?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z ; CPhysicalMemoryManager::mapPage
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2465	DB	'allocatePage - ', 00H
$SG2471	DB	'Allocated page at 0x', 00H
	ORG $+3
$SG2474	DB	'Mapping non-kernel page to kernel.', 00H
_DATA	ENDS
;	COMDAT ??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@
; File E:\WORKSHOP\os98\ice32\PhysicalMemoryManager.cpp
_DATA	SEGMENT
??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@ DB 'setPageAllocationBit(', 00H ; `string'
_DATA	ENDS
;	COMDAT ??_C@_02CEEM@?$CJ?5?$AA@
_DATA	SEGMENT
??_C@_02CEEM@?$CJ?5?$AA@ DB ') ', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_04GMLE@?5?$DN?$DO?5?$AA@
_DATA	SEGMENT
??_C@_04GMLE@?5?$DN?$DO?5?$AA@ DB ' => ', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_this$ = -28
_iPageFrame$ = -20
_pFunctionName$ = -16
_pAllocationDWord$2848 = -24
?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z PROC NEAR ; CPhysicalMemoryManager::allocatePage

; 87   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 88   : 	DWORD iPageFrame;
; 89   : 	const char pFunctionName[] = "allocatePage - ";

	mov	eax, DWORD PTR $SG2465
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2465+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2465+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2465+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax

; 90   : 
; 91   : 	// Index first page block of allocation area.
; 92   : 	iPageFrame = m_iLastPageOfBaseMemory + 1;

	mov	DWORD PTR _iPageFrame$[ebp], 160	; 000000a0H

; 93   : 
; 94   : 	// Search page allocation bitmap for unallocated pages.
; 95   : 	while( getPageAllocationBit(iPageFrame)==1 && iPageFrame<m_iTotalPages )

$L2844:
	mov	eax, DWORD PTR _iPageFrame$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	esi, edx
	mov	edi, DWORD PTR _iPageFrame$[ebp]
	shr	edi, 5
	mov	eax, DWORD PTR _iPageFrame$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [eax+edi*4]
	and	eax, edx
	mov	ecx, esi
	shr	eax, cl
	cmp	eax, 1
	jne	SHORT $L2468
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _iPageFrame$[ebp]
	cmp	edx, DWORD PTR [ecx+6]
	jae	SHORT $L2468

; 96   : 		iPageFrame++;

	mov	eax, DWORD PTR _iPageFrame$[ebp]
	add	eax, 1
	mov	DWORD PTR _iPageFrame$[ebp], eax
	jmp	SHORT $L2844
$L2468:

; 97   : 
; 98   : 	// Test if a free page has been found.
; 99   : 	if( iPageFrame<m_iTotalPages )

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _iPageFrame$[ebp]
	cmp	edx, DWORD PTR [ecx+6]
	jae	$L2469

; 101  : 		// Mark page as allocated.
; 102  : 		setPageAllocationBit( iPageFrame, 1 );

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2849
	mov	ecx, DWORD PTR _iPageFrame$[ebp]
	shr	ecx, 5
	mov	edx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	mov	ecx, DWORD PTR _iPageFrame$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
$L2849:
	mov	edx, DWORD PTR _iPageFrame$[ebp]
	shr	edx, 5
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _pAllocationDWord$2848[ebp], ecx
	mov	edx, 1
	test	edx, edx
	jne	SHORT $L2850
	mov	eax, DWORD PTR _iPageFrame$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	not	edx
	mov	eax, DWORD PTR _pAllocationDWord$2848[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2848[ebp]
	mov	DWORD PTR [edx], ecx
	jmp	SHORT $L2851
$L2850:
	mov	eax, DWORD PTR _iPageFrame$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR _pAllocationDWord$2848[ebp]
	mov	ecx, DWORD PTR [eax]
	or	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2848[ebp]
	mov	DWORD PTR [edx], ecx
$L2851:
	xor	eax, eax
	test	eax, eax
	je	SHORT $L2847
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _iPageFrame$[ebp]
	shr	ecx, 5
	mov	edx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_04GMLE@?5?$DN?$DO?5?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2847:

; 103  : 		if( m_bDebug ) cout << m_pClassName << pFunctionName << "Allocated page at 0x" << (iPageFrame<<12) << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2470
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iPageFrame$[ebp]
	shl	eax, 12					; 0000000cH
	push	eax
	push	OFFSET FLAT:$SG2471
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2470:

; 104  : 
; 105  : 		// Map page into kernel memory space with one-to-one physical to linear mapping.
; 106  : 		if( pPageDirectoryTable!=m_pPageDirectoryTable )

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	cmp	eax, DWORD PTR [edx+10]
	je	SHORT $L2472

; 108  : 			if(m_bDebug) cout << m_pClassName << pFunctionName << "Mapping non-kernel page to kernel." << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2473
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2474
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2473:

; 109  : 			mapPage( m_pPageDirectoryTable, iPageFrame, iPageFrame );

	mov	ecx, DWORD PTR _iPageFrame$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iPageFrame$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z ; CPhysicalMemoryManager::mapPage
$L2472:

; 112  : 	else

	jmp	SHORT $L2475
$L2469:

; 114  : 		// Invalidate page returned.
; 115  : 		iPageFrame = 0xffffffff;

	mov	DWORD PTR _iPageFrame$[ebp], -1
$L2475:

; 117  : 
; 118  : #ifdef WIN32
; 119  : 	iPage = ((DWORD)VirtualAlloc( (void*)(iPage<<12), 4096, MEM_COMMIT, PAGE_READWRITE ))>>12;
; 120  : 	if( iPage==NULL )
; 121  : 		iPage = ((DWORD)VirtualAlloc( NULL, 4096, MEM_COMMIT, PAGE_READWRITE ))>>12;
; 122  : #endif
; 123  : 
; 124  : 	// Return page frame index.
; 125  : 	return iPageFrame;

	mov	eax, DWORD PTR _iPageFrame$[ebp]

; 126  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ENDP ; CPhysicalMemoryManager::allocatePage
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
PUBLIC	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
EXTRN	?setAllocated@CPageTableEntry@@QAEX_N@Z:NEAR	; CPageTableEntry::setAllocated
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_iBlockSize$ = 12
_sPlacement$ = 16
_this$ = -28
_iFirstDirectoryTableIndex$ = -12
_iFirstPageTableIndex$ = -20
_iLastDirectoryTableIndex$ = -8
_iLastPageTableIndex$ = -4
_iPageTableEntries$ = -24
_spPageTable$ = -16
?allocatePages@CPhysicalMemoryManager@@AAE_NPAVCPageDirectoryEntry@@IUSPlacement@1@@Z PROC NEAR ; CPhysicalMemoryManager::allocatePages

; 130  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx

; 131  : 	int iFirstDirectoryTableIndex;
; 132  : 	unsigned int iFirstPageTableIndex;
; 133  : 	int iLastDirectoryTableIndex;
; 134  : 	unsigned int iLastPageTableIndex;
; 135  : 	int iPageTableEntries;
; 136  : 	CPageTableEntry* spPageTable;
; 137  : 
; 138  : 	// Calculate directory and page indices.
; 139  : 	iPageTableEntries          = (iBlockSize&0x003ff000)>>12;

	mov	eax, DWORD PTR _iBlockSize$[ebp]
	and	eax, 4190208				; 003ff000H
	shr	eax, 12					; 0000000cH
	mov	DWORD PTR _iPageTableEntries$[ebp], eax

; 140  : 	iFirstDirectoryTableIndex  = (sPlacement.page_address)>>10;

	mov	ecx, DWORD PTR _sPlacement$[ebp]
	shr	ecx, 2
	and	ecx, 1048575				; 000fffffH
	shr	ecx, 10					; 0000000aH
	mov	DWORD PTR _iFirstDirectoryTableIndex$[ebp], ecx

; 141  : 	iLastDirectoryTableIndex   = (sPlacement.page_address+iPageTableEntries)>>10;

	mov	edx, DWORD PTR _sPlacement$[ebp]
	shr	edx, 2
	and	edx, 1048575				; 000fffffH
	add	edx, DWORD PTR _iPageTableEntries$[ebp]
	shr	edx, 10					; 0000000aH
	mov	DWORD PTR _iLastDirectoryTableIndex$[ebp], edx

; 142  : 	iFirstPageTableIndex       = sPlacement.page_address&0x003ff;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	shr	eax, 2
	and	eax, 1048575				; 000fffffH
	and	eax, 1023				; 000003ffH
	mov	DWORD PTR _iFirstPageTableIndex$[ebp], eax

; 143  : 	iLastPageTableIndex        = (iFirstPageTableIndex+iPageTableEntries)&0x000003ff;

	mov	ecx, DWORD PTR _iFirstPageTableIndex$[ebp]
	add	ecx, DWORD PTR _iPageTableEntries$[ebp]
	and	ecx, 1023				; 000003ffH
	mov	DWORD PTR _iLastPageTableIndex$[ebp], ecx

; 144  : 	
; 145  : 	// Run through first page table only partially used by this allocation.
; 146  : 	if( iFirstDirectoryTableIndex!=iLastDirectoryTableIndex )

	mov	edx, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	cmp	edx, DWORD PTR _iLastDirectoryTableIndex$[ebp]
	je	SHORT $L2491

; 148  : 		// Locate first page table.
; 149  : 		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex++ );

	mov	eax, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	mov	DWORD PTR -32+[ebp], eax
	mov	ecx, DWORD PTR -32+[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	eax, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	add	eax, 1
	mov	DWORD PTR _iFirstDirectoryTableIndex$[ebp], eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
	mov	DWORD PTR _spPageTable$[ebp], eax
$L2490:

; 150  : 		
; 151  : 		// Allocate all entries in page table from first.
; 152  : 		while( iFirstPageTableIndex<m_iEntriesPerPageTable )

	cmp	DWORD PTR _iFirstPageTableIndex$[ebp], 1024 ; 00000400H
	jae	SHORT $L2491

; 153  : 			spPageTable[iFirstPageTableIndex++].setAllocated( 1 );

	push	1
	mov	ecx, DWORD PTR _iFirstPageTableIndex$[ebp]
	mov	edx, DWORD PTR _spPageTable$[ebp]
	lea	eax, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR -36+[ebp], eax
	mov	ecx, DWORD PTR _iFirstPageTableIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iFirstPageTableIndex$[ebp], ecx
	mov	ecx, DWORD PTR -36+[ebp]
	call	?setAllocated@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setAllocated
	jmp	SHORT $L2490
$L2491:

; 155  : 
; 156  : 	// Allocate all fully used page tables.
; 157  : 	while( iFirstDirectoryTableIndex<iLastDirectoryTableIndex )

	mov	edx, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	cmp	edx, DWORD PTR _iLastDirectoryTableIndex$[ebp]
	jge	SHORT $L2494

; 159  : 		// Get page table address.
; 160  : 		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex );

	mov	eax, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
	mov	DWORD PTR _spPageTable$[ebp], eax

; 161  : 		
; 162  : 		// Allocate all entries in page table.
; 163  : 		iFirstPageTableIndex = 0;

	mov	DWORD PTR _iFirstPageTableIndex$[ebp], 0
$L2496:

; 164  : 		while( iFirstPageTableIndex<m_iEntriesPerPageTable )

	cmp	DWORD PTR _iFirstPageTableIndex$[ebp], 1024 ; 00000400H
	jae	SHORT $L2497

; 165  : 			spPageTable[iFirstPageTableIndex++].setAllocated( true );

	push	1
	mov	edx, DWORD PTR _iFirstPageTableIndex$[ebp]
	mov	eax, DWORD PTR _spPageTable$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR -40+[ebp], ecx
	mov	edx, DWORD PTR _iFirstPageTableIndex$[ebp]
	add	edx, 1
	mov	DWORD PTR _iFirstPageTableIndex$[ebp], edx
	mov	ecx, DWORD PTR -40+[ebp]
	call	?setAllocated@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setAllocated
	jmp	SHORT $L2496
$L2497:

; 166  : 		
; 167  : 		// Next page table.
; 168  : 		iFirstDirectoryTableIndex++;

	mov	eax, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	add	eax, 1
	mov	DWORD PTR _iFirstDirectoryTableIndex$[ebp], eax

; 169  : 	}

	jmp	SHORT $L2491
$L2494:

; 170  : 
; 171  : 	// Allocate pages of partially used last page table.
; 172  : 	if( iLastPageTableIndex>0 )

	cmp	DWORD PTR _iLastPageTableIndex$[ebp], 0
	jbe	SHORT $L2501

; 174  : 		// Get page table address.
; 175  : 		spPageTable = getPageTable( pPageDirectoryTable, iFirstDirectoryTableIndex );

	mov	ecx, DWORD PTR _iFirstDirectoryTableIndex$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
	mov	DWORD PTR _spPageTable$[ebp], eax

; 176  : 		
; 177  : 		// Allocate all entries in page table.
; 178  : 		iFirstPageTableIndex = 0;

	mov	DWORD PTR _iFirstPageTableIndex$[ebp], 0
$L2500:

; 179  : 		while( iFirstPageTableIndex<iLastPageTableIndex )

	mov	eax, DWORD PTR _iFirstPageTableIndex$[ebp]
	cmp	eax, DWORD PTR _iLastPageTableIndex$[ebp]
	jae	SHORT $L2501

; 180  : 			spPageTable[iFirstPageTableIndex++].setAllocated( true );

	push	1
	mov	ecx, DWORD PTR _iFirstPageTableIndex$[ebp]
	mov	edx, DWORD PTR _spPageTable$[ebp]
	lea	eax, DWORD PTR [edx+ecx*4]
	mov	DWORD PTR -44+[ebp], eax
	mov	ecx, DWORD PTR _iFirstPageTableIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iFirstPageTableIndex$[ebp], ecx
	mov	ecx, DWORD PTR -44+[ebp]
	call	?setAllocated@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setAllocated
	jmp	SHORT $L2500
$L2501:

; 182  : 
; 183  : 	// Return success of page allocation.
; 184  : 	return true;

	mov	al, 1

; 185  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?allocatePages@CPhysicalMemoryManager@@AAE_NPAVCPageDirectoryEntry@@IUSPlacement@1@@Z ENDP ; CPhysicalMemoryManager::allocatePages
_TEXT	ENDS
PUBLIC	?allocatePagesFromBaseMemory@CPhysicalMemoryManager@@QAEKK@Z ; CPhysicalMemoryManager::allocatePagesFromBaseMemory
_DATA	SEGMENT
	ORG $+1
$SG2509	DB	'allocatePageFromBaseMemory - ', 00H
	ORG $+2
$SG2511	DB	'Require ', 00H
	ORG $+3
$SG2512	DB	' pages.', 00H
$SG2520	DB	'Checking for contiguous space at page 0x', 00H
	ORG $+3
$SG2530	DB	'Start page ', 00H
$SG2531	DB	'.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iPagesRequired$ = 8
_this$ = -44
_iStartingPage$ = -40
_iContiguousPageCount$ = -4
_pFunctionName$ = -36
?allocatePagesFromBaseMemory@CPhysicalMemoryManager@@QAEKK@Z PROC NEAR ; CPhysicalMemoryManager::allocatePagesFromBaseMemory

; 200  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 201  : 	DWORD iStartingPage;
; 202  : 	DWORD iContiguousPageCount;
; 203  : 	const char pFunctionName[] = "allocatePageFromBaseMemory - ";

	mov	ecx, 7
	mov	esi, OFFSET FLAT:$SG2509
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsw

; 204  : 
; 205  : 	// Start allocation search at first page.
; 206  : 	iStartingPage = 0;

	mov	DWORD PTR _iStartingPage$[ebp], 0

; 207  : 	if( m_bDebug )cout << m_pClassName << pFunctionName << "Require " << iPagesRequired << " pages." << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2510
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2512
	mov	edx, DWORD PTR _iPagesRequired$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2511
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2510:

; 212  : 		// Look for the next free page.
; 213  : 		while( getPageAllocationBit(iStartingPage)==1 && iStartingPage+iPagesRequired<m_iLastPageOfBaseMemory )

	mov	eax, DWORD PTR _iStartingPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	esi, edx
	mov	edi, DWORD PTR _iStartingPage$[ebp]
	shr	edi, 5
	mov	eax, DWORD PTR _iStartingPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [eax+edi*4]
	and	eax, edx
	mov	ecx, esi
	shr	eax, cl
	cmp	eax, 1
	jne	SHORT $L2518
	mov	ecx, DWORD PTR _iStartingPage$[ebp]
	add	ecx, DWORD PTR _iPagesRequired$[ebp]
	cmp	ecx, 159				; 0000009fH
	jae	SHORT $L2518

; 214  : 			iStartingPage++;

	mov	edx, DWORD PTR _iStartingPage$[ebp]
	add	edx, 1
	mov	DWORD PTR _iStartingPage$[ebp], edx
	jmp	SHORT $L2510
$L2518:

; 215  : 
; 216  : 		if( m_bDebug ) cout << "Checking for contiguous space at page 0x" << iStartingPage << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2519
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _iStartingPage$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2520
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2519:

; 217  : 
; 218  : 		// Abort space search if end of memory reached.
; 219  : 		if( iStartingPage+iPagesRequired>m_iLastPageOfBaseMemory )

	mov	eax, DWORD PTR _iStartingPage$[ebp]
	add	eax, DWORD PTR _iPagesRequired$[ebp]
	cmp	eax, 159				; 0000009fH
	jbe	SHORT $L2521

; 220  : 			break;

	jmp	$L2515
$L2521:

; 221  : 
; 222  : 		// One page has been found.
; 223  : 		iContiguousPageCount = 1;

	mov	DWORD PTR _iContiguousPageCount$[ebp], 1
$L2523:

; 224  : 
; 225  : 		// Check pages avaiable against those required.
; 226  : 		while( iContiguousPageCount<iPagesRequired )

	mov	ecx, DWORD PTR _iContiguousPageCount$[ebp]
	cmp	ecx, DWORD PTR _iPagesRequired$[ebp]
	jae	SHORT $L2524

; 228  : 			if( getPageAllocationBit(++iStartingPage)==0 )

	mov	edx, DWORD PTR _iStartingPage$[ebp]
	add	edx, 1
	mov	DWORD PTR _iStartingPage$[ebp], edx
	mov	eax, DWORD PTR _iStartingPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	esi, edx
	mov	edi, DWORD PTR _iStartingPage$[ebp]
	shr	edi, 5
	mov	eax, DWORD PTR _iStartingPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [eax+edi*4]
	and	eax, edx
	mov	ecx, esi
	shr	eax, cl
	test	eax, eax
	jne	SHORT $L2525

; 229  : 				iContiguousPageCount++;

	mov	ecx, DWORD PTR _iContiguousPageCount$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iContiguousPageCount$[ebp], ecx

; 230  : 			else

	jmp	SHORT $L2526
$L2525:

; 231  : 				break;

	jmp	SHORT $L2524
$L2526:

; 232  : 		}

	jmp	SHORT $L2523
$L2524:

; 233  : 
; 234  : 		// If contiguous page count matches the number of required pages stop.
; 235  : 		if( iContiguousPageCount==iPagesRequired )

	mov	edx, DWORD PTR _iContiguousPageCount$[ebp]
	cmp	edx, DWORD PTR _iPagesRequired$[ebp]
	jne	SHORT $L2527

; 236  : 			break;

	jmp	SHORT $L2515
$L2527:

; 237  : 
; 238  : 		// Look for a free page after the pages just checked.
; 239  : 		iStartingPage += iContiguousPageCount;

	mov	eax, DWORD PTR _iStartingPage$[ebp]
	add	eax, DWORD PTR _iContiguousPageCount$[ebp]
	mov	DWORD PTR _iStartingPage$[ebp], eax

; 240  : 
; 241  : 	} while( 1 );

	mov	ecx, 1
	test	ecx, ecx
	jne	$L2510
$L2515:

; 242  : 
; 243  : 	// Invalidate starting page if contiguous pages weren't found.
; 244  : 	if( iContiguousPageCount!=iPagesRequired )

	mov	edx, DWORD PTR _iContiguousPageCount$[ebp]
	cmp	edx, DWORD PTR _iPagesRequired$[ebp]
	je	SHORT $L2528

; 245  : 		iStartingPage = 0xffffffff;

	mov	DWORD PTR _iStartingPage$[ebp], -1
$L2528:

; 246  : 
; 247  : 	// Return stating page frame index.
; 248  : 	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Start page " << iStartingPage << "." << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2529
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2531
	mov	edx, DWORD PTR _iStartingPage$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2530
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2529:

; 249  : 	return iStartingPage;

	mov	eax, DWORD PTR _iStartingPage$[ebp]

; 250  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?allocatePagesFromBaseMemory@CPhysicalMemoryManager@@QAEKK@Z ENDP ; CPhysicalMemoryManager::allocatePagesFromBaseMemory
_TEXT	ENDS
PUBLIC	?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z ; CPhysicalMemoryManager::commitMemory
_DATA	SEGMENT
	ORG $+2
$SG2542	DB	'commitMemory() - ', 00H
	ORG $+2
$SG2545	DB	'Page Directory Table 0x', 00H
$SG2548	DB	'Linear Base Address 0x', 00H
	ORG $+1
$SG2551	DB	'Number of bytes 0x', 00H
	ORG $+1
$SG2554	DB	'Number of pages 0x', 00H
	ORG $+1
$SG2557	DB	'Linear page frame 0x', 00H
	ORG $+3
$SG2564	DB	'Allocated physical page 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_pLinearBase$ = 12
_iBytes$ = 16
_this$ = -36
_iPageCount$ = -28
_iLinearPage$ = -24
_iPhysicalPage$ = -32
_pFunctionName$ = -20
?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z PROC NEAR ; CPhysicalMemoryManager::commitMemory

; 263  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[ebp], ecx

; 264  : 	unsigned long iPageCount;
; 265  : 	unsigned long iLinearPage;
; 266  : 	PAGEFRAME iPhysicalPage;
; 267  : 	const char pFunctionName[] = "commitMemory() - ";

	mov	eax, DWORD PTR $SG2542
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2542+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2542+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2542+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cx, WORD PTR $SG2542+16
	mov	WORD PTR _pFunctionName$[ebp+16], cx

; 268  : 
; 269  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Directory Table 0x" << (DWORD)pPageDirectoryTable << endl;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	je	SHORT $L2543
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2545
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2543:

; 270  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Linear Base Address 0x" << (DWORD)pLinearBase << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2546
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _pLinearBase$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2548
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2546:

; 271  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Number of bytes 0x" << (DWORD)iBytes << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2549
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iBytes$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2551
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2549:

; 272  : 
; 273  : 	// Convert bytes to pages.
; 274  : 	iPageCount = iBytes/m_iPageSize;

	mov	edx, DWORD PTR _iBytes$[ebp]
	shr	edx, 12					; 0000000cH
	mov	DWORD PTR _iPageCount$[ebp], edx

; 275  : 	if( iBytes%m_iPageSize>0 )

	mov	eax, DWORD PTR _iBytes$[ebp]
	xor	edx, edx
	mov	ecx, 4096				; 00001000H
	div	ecx
	test	edx, edx
	jbe	SHORT $L2552

; 276  : 		iPageCount++;

	mov	edx, DWORD PTR _iPageCount$[ebp]
	add	edx, 1
	mov	DWORD PTR _iPageCount$[ebp], edx
$L2552:

; 277  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Number of pages 0x" << iPageCount << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2553
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _iPageCount$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2554
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2553:

; 278  : 
; 279  : 	// Convert linear address to linear page.
; 280  : 	iLinearPage = ((ADDRESS)pLinearBase&0xfffff000)>>12;

	mov	ecx, DWORD PTR _pLinearBase$[ebp]
	and	ecx, -4096				; fffff000H
	shr	ecx, 12					; 0000000cH
	mov	DWORD PTR _iLinearPage$[ebp], ecx

; 281  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Linear page frame 0x" << iLinearPage << endl;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	je	SHORT $L2556
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _iLinearPage$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2557
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2556:

; 282  : 
; 283  : 	// Map pages into physical memory.
; 284  : 	while( iPageCount>0 )

	cmp	DWORD PTR _iPageCount$[ebp], 0
	jbe	$L2560

; 286  : 		// Allocate a page of physical memory.
; 287  : 		iPhysicalPage = allocatePage( pPageDirectoryTable );

	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::allocatePage
	mov	DWORD PTR _iPhysicalPage$[ebp], eax

; 288  : 		if( iPhysicalPage<0 )

	cmp	DWORD PTR _iPhysicalPage$[ebp], 0
	jae	SHORT $L2561

; 290  : 			// Page allocation failed.
; 291  : 			break;

	jmp	SHORT $L2560
$L2561:

; 295  : 			// Perform linear to physical mapping within specified page tables.
; 296  : 			if(m_bDebug) cout << m_pClassName << pFunctionName << "Allocated physical page 0x" << iPhysicalPage << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2563
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iPhysicalPage$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2564
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2563:

; 297  : 			mapPage( pPageDirectoryTable, iLinearPage++, iPhysicalPage );

	mov	edx, DWORD PTR _iPhysicalPage$[ebp]
	push	edx
	mov	eax, DWORD PTR _iLinearPage$[ebp]
	mov	DWORD PTR -40+[ebp], eax
	mov	ecx, DWORD PTR -40+[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	eax, DWORD PTR _iLinearPage$[ebp]
	add	eax, 1
	mov	DWORD PTR _iLinearPage$[ebp], eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z ; CPhysicalMemoryManager::mapPage

; 298  : 			iPageCount--;

	mov	ecx, DWORD PTR _iPageCount$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _iPageCount$[ebp], ecx

; 300  : 	}

	jmp	$L2556
$L2560:

; 301  : 
; 302  : 	// Return number of pages left unmapped.
; 303  : 	return iPageCount;

	mov	eax, DWORD PTR _iPageCount$[ebp]

; 304  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z ENDP ; CPhysicalMemoryManager::commitMemory
_TEXT	ENDS
PUBLIC	?countPages@CPhysicalMemoryManager@@AAEKXZ	; CPhysicalMemoryManager::countPages
_TEXT	SEGMENT
_this$ = -12
_iTestValue$ = -4
_pPage$ = -8
?countPages@CPhysicalMemoryManager@@AAEKXZ PROC NEAR	; CPhysicalMemoryManager::countPages

; 317  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 318  : 	unsigned long iTestValue;
; 319  : 	volatile unsigned long* pPage;
; 320  : 
; 321  : 	// Start page probe above kernel.
; 322  : 	pPage = (unsigned long*)0x00600000;

	mov	DWORD PTR _pPage$[ebp], 6291456		; 00600000H
$L2572:

; 323  : 
; 324  : #ifndef WIN32
; 325  : 	// Attempt to access pages until access fails.
; 326  : 	while( true )

	mov	eax, 1
	test	eax, eax
	je	SHORT $L2573

; 328  : 		iTestValue = *pPage;

	mov	ecx, DWORD PTR _pPage$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _iTestValue$[ebp], edx

; 329  : 		*pPage = ~*pPage;

	mov	eax, DWORD PTR _pPage$[ebp]
	mov	ecx, DWORD PTR [eax]
	not	ecx
	mov	edx, DWORD PTR _pPage$[ebp]
	mov	DWORD PTR [edx], ecx

; 330  : 		if( iTestValue==*pPage )			

	mov	eax, DWORD PTR _pPage$[ebp]
	mov	ecx, DWORD PTR _iTestValue$[ebp]
	cmp	ecx, DWORD PTR [eax]
	jne	SHORT $L2574

; 331  : 			break;

	jmp	SHORT $L2573
$L2574:

; 333  : 			pPage += 4096;

	mov	edx, DWORD PTR _pPage$[ebp]
	add	edx, 16384				; 00004000H
	mov	DWORD PTR _pPage$[ebp], edx

; 334  : 	}

	jmp	SHORT $L2572
$L2573:

; 335  : #else
; 336  : 	// Force result to 48Mb.
; 337  : 	pPage = (unsigned long*)0x03000000;
; 338  : #endif
; 339  : 
; 340  : 	// Return avaiable pages.
; 341  : 	return ((unsigned long)pPage)/4096;

	mov	eax, DWORD PTR _pPage$[ebp]
	shr	eax, 12					; 0000000cH

; 342  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?countPages@CPhysicalMemoryManager@@AAEKXZ ENDP		; CPhysicalMemoryManager::countPages
_TEXT	ENDS
PUBLIC	?mapPages@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KKK@Z ; CPhysicalMemoryManager::mapPages
PUBLIC	?create@CPhysicalMemoryManager@@QAEKXZ		; CPhysicalMemoryManager::create
PUBLIC	?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ ; CPhysicalMemoryManager::createPageDirectory
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	_memset:NEAR
EXTRN	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z:NEAR ; CCPU::setPageDirectoryTable
EXTRN	?setPagingEnabled@CCPU@@QAEX_N@Z:NEAR		; CCPU::setPagingEnabled
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
_DATA	SEGMENT
	ORG $+1
$SG2581	DB	'Available memory pages 0x', 00H
	ORG $+2
$SG2585	DB	'Allocation bitmap of 0x', 00H
$SG2586	DB	' bytes located at 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -12
_iPage$ = -4
_pAllocationDWord$2869 = -8
?create@CPhysicalMemoryManager@@QAEKXZ PROC NEAR	; CPhysicalMemoryManager::create

; 355  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 356  : 	DWORD iPage;
; 357  : 
; 358  : 	// Identify the amount of physical memory available.
; 359  : 	m_iTotalPages = countPages();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?countPages@CPhysicalMemoryManager@@AAEKXZ ; CPhysicalMemoryManager::countPages
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+6], eax

; 360  : 	cout << "Available memory pages 0x" << m_iTotalPages << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+6]
	push	eax
	push	OFFSET FLAT:$SG2581
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 361  : 
; 362  : 	// Initialise allocation map.
; 363  : #ifdef WIN32
; 364  : 	m_pPageAllocationMap = (const DWORD*)VirtualAlloc( (void*)m_pPageAllocationMap, m_iMaximumNumberOfPages>>3, MEM_COMMIT, PAGE_READWRITE );
; 365  : 	if( m_pPageAllocationMap==NULL )
; 366  : 		m_pPageAllocationMap = (const DWORD*)VirtualAlloc( NULL, m_iMaximumNumberOfPages>>3, MEM_COMMIT, PAGE_READWRITE );
; 367  : #endif
; 368  : 	// Clear all page allocation bits in map.
; 369  : 	if( m_bDebug )cout << "Allocation bitmap of 0x" << (DWORD)(m_iTotalPages>>3) << " bytes located at 0x" << (DWORD)m_pPageAllocationMap << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2582
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	push	eax
	push	OFFSET FLAT:$SG2586
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	shr	edx, 3
	push	edx
	push	OFFSET FLAT:$SG2585
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2582:

; 370  : 	memset( (void*)m_pPageAllocationMap, 0x00000000, m_iMaximumNumberOfPages>>3 );

	push	131072					; 00020000H
	push	0
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH

; 371  : 	
; 372  : 	// Reserve kernel pages.
; 373  : 	//
; 374  : 	// 0x00000000 - 0x000007ff IDT
; 375  : 	// 0x00000800 - 0x000107ff GDT
; 376  : 	// 0x00010800 - 0x000307ff Physical page allocation map
; 377  : 	// 0x00030800 - 0x00030fff Not used(overlapped by last page of allocation map)
; 378  : 	// 0x00031000 - 0x0009ffff Free base memory
; 379  : 	// 0x000A0000 - 0x000fffff IO, Video, ROM
; 380  : 	// 0x00100000 - 0x00200000 Heap
; 381  : 	// 0x00200000 - 0x00300000 This program
; 382  : 	// 0x00300000 - 0xffffffff Free
; 383  : 	//
; 384  : 	memset( (void*)m_pPageAllocationMap, 0xffffffff, m_iReservedPageCount>>3 );

	push	96					; 00000060H
	push	-1
	mov	ecx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	push	ecx
	call	_memset
	add	esp, 12					; 0000000cH

; 385  : 
; 386  : 	// Free base memory.
; 387  : 	for( iPage=m_iFirstPageOfBaseMemory ; iPage<m_iLastPageOfBaseMemory ; iPage++ )

	mov	DWORD PTR _iPage$[ebp], 49		; 00000031H
	jmp	SHORT $L2589
$L2590:
	mov	edx, DWORD PTR _iPage$[ebp]
	add	edx, 1
	mov	DWORD PTR _iPage$[ebp], edx
$L2589:
	cmp	DWORD PTR _iPage$[ebp], 159		; 0000009fH
	jae	$L2591

; 388  : 		setPageAllocationBit( iPage, 0 );

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2870
	mov	ecx, DWORD PTR _iPage$[ebp]
	shr	ecx, 5
	mov	edx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	mov	ecx, DWORD PTR _iPage$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
$L2870:
	mov	edx, DWORD PTR _iPage$[ebp]
	shr	edx, 5
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _pAllocationDWord$2869[ebp], ecx
	xor	edx, edx
	test	edx, edx
	jne	SHORT $L2871
	mov	eax, DWORD PTR _iPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	not	edx
	mov	eax, DWORD PTR _pAllocationDWord$2869[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2869[ebp]
	mov	DWORD PTR [edx], ecx
	jmp	SHORT $L2872
$L2871:
	mov	eax, DWORD PTR _iPage$[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR _pAllocationDWord$2869[ebp]
	mov	ecx, DWORD PTR [eax]
	or	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2869[ebp]
	mov	DWORD PTR [edx], ecx
$L2872:
	xor	eax, eax
	test	eax, eax
	je	SHORT $L2868
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _iPage$[ebp]
	shr	ecx, 5
	mov	edx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_04GMLE@?5?$DN?$DO?5?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2868:
	jmp	$L2590
$L2591:

; 389  : 
; 390  : 	// Create page directory.
; 391  : 	m_pPageDirectoryTable = createPageDirectory();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ ; CPhysicalMemoryManager::createPageDirectory
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+10], eax

; 392  : 	Application.getSystem().getCPU().setPageDirectoryTable( m_pPageDirectoryTable );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+10]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z ; CCPU::setPageDirectoryTable

; 393  : 
; 394  : 	// Map all physical memory to kernel linear space with one-to-one mapping.
; 395  : 	mapPages( m_pPageDirectoryTable, 0, 0, m_iTotalPages );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+6]
	push	edx
	push	0
	push	0
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapPages@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KKK@Z ; CPhysicalMemoryManager::mapPages

; 396  : 
; 397  : 	//cout << "Page directory" << endl;
; 398  : 	//Application.getSystem().getCPU().dumpMemory( (unsigned char*)(Application.getSystem().getCPU().getPageDirectoryTable()) );
; 399  : 	//cout << "First page table" << endl;
; 400  : 	//Application.getSystem().getCPU().dumpMemory( (unsigned char*)((((CPageDirectoryEntry*)(Application.getSystem().getCPU().getPageDirectoryTable()))->getPageTable())<<12) );
; 401  : 
; 402  : 	// Enable paging mechanism.
; 403  : 	Application.getSystem().getCPU().setPagingEnabled( true );

	push	1
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setPagingEnabled@CCPU@@QAEX_N@Z	; CCPU::setPagingEnabled

; 404  : 
; 405  : 	// Always return true.
; 406  : 	return EC_NONE;

	xor	eax, eax

; 407  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CPhysicalMemoryManager@@QAEKXZ ENDP		; CPhysicalMemoryManager::create
_TEXT	ENDS
PUBLIC	?firstClearBit@CPhysicalMemoryManager@@AAEEK@Z	; CPhysicalMemoryManager::firstClearBit
PUBLIC	?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ; CPhysicalMemoryManager::firstClearBitInByte
_TEXT	SEGMENT
_iDWord$ = 8
_this$ = -8
_iBit$ = -4
?firstClearBit@CPhysicalMemoryManager@@AAEEK@Z PROC NEAR ; CPhysicalMemoryManager::firstClearBit

; 423  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 424  : 	BYTE iBit;
; 425  : 
; 426  : 	// Check byte 0.
; 427  : 	iBit = firstClearBitInByte( (BYTE)(iDWord&0x000000ff) );

	mov	eax, DWORD PTR _iDWord$[ebp]
	and	eax, 255				; 000000ffH
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ; CPhysicalMemoryManager::firstClearBitInByte
	mov	BYTE PTR _iBit$[ebp], al

; 428  : 	if( iBit==8 )

	mov	ecx, DWORD PTR _iBit$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	ecx, 8
	jne	SHORT $L2602

; 430  : 		// Check byte 1.
; 431  : 		iBit = 8 + firstClearBitInByte( (BYTE)((iDWord&0x0000ff00)>>8) );

	mov	edx, DWORD PTR _iDWord$[ebp]
	and	edx, 65280				; 0000ff00H
	shr	edx, 8
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ; CPhysicalMemoryManager::firstClearBitInByte
	and	eax, 255				; 000000ffH
	add	eax, 8
	mov	BYTE PTR _iBit$[ebp], al

; 432  : 		if( iBit==16 )

	mov	eax, DWORD PTR _iBit$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 16					; 00000010H
	jne	SHORT $L2602

; 434  : 			// Check byte 2.
; 435  : 			iBit = 16 + firstClearBitInByte( (BYTE)((iDWord&0x00ff0000)>>16) );

	mov	ecx, DWORD PTR _iDWord$[ebp]
	and	ecx, 16711680				; 00ff0000H
	shr	ecx, 16					; 00000010H
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ; CPhysicalMemoryManager::firstClearBitInByte
	and	eax, 255				; 000000ffH
	add	eax, 16					; 00000010H
	mov	BYTE PTR _iBit$[ebp], al

; 436  : 			if( iBit==24 )

	mov	edx, DWORD PTR _iBit$[ebp]
	and	edx, 255				; 000000ffH
	cmp	edx, 24					; 00000018H
	jne	SHORT $L2602

; 438  : 				// Check byte 3.
; 439  : 				iBit = 24 + firstClearBitInByte( (BYTE)((iDWord&0xff000000)>>24) );

	mov	eax, DWORD PTR _iDWord$[ebp]
	and	eax, -16777216				; ff000000H
	shr	eax, 24					; 00000018H
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ; CPhysicalMemoryManager::firstClearBitInByte
	and	eax, 255				; 000000ffH
	add	eax, 24					; 00000018H
	mov	BYTE PTR _iBit$[ebp], al
$L2602:

; 443  : 
; 444  : 	// Return bit index.
; 445  : 	return iBit;

	mov	al, BYTE PTR _iBit$[ebp]

; 446  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?firstClearBit@CPhysicalMemoryManager@@AAEEK@Z ENDP	; CPhysicalMemoryManager::firstClearBit
_iByte$ = 8
_this$ = -12
_iMask$ = -4
_iBit$ = -8
?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z PROC NEAR ; CPhysicalMemoryManager::firstClearBitInByte

; 460  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 461  : 	BYTE iMask;
; 462  : 	BYTE iBit;
; 463  : 
; 464  : 	// Start scan at first bit.
; 465  : 	iBit = 0;

	mov	BYTE PTR _iBit$[ebp], 0

; 466  : 	iMask = 1;

	mov	BYTE PTR _iMask$[ebp], 1
$L2611:

; 467  : 
; 468  : 	// Scan bits.
; 469  : 	while( iBit<8 )

	mov	eax, DWORD PTR _iBit$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 8
	jge	SHORT $L2612

; 471  : 		if( (iByte&iMask)==0 )

	mov	ecx, DWORD PTR _iByte$[ebp]
	and	ecx, 255				; 000000ffH
	mov	edx, DWORD PTR _iMask$[ebp]
	and	edx, 255				; 000000ffH
	and	ecx, edx
	test	ecx, ecx
	jne	SHORT $L2613

; 472  : 			break;

	jmp	SHORT $L2612
$L2613:

; 473  : 		iMask <<= 1;

	mov	al, BYTE PTR _iMask$[ebp]
	shl	al, 1
	mov	BYTE PTR _iMask$[ebp], al

; 474  : 		iBit++;

	mov	cl, BYTE PTR _iBit$[ebp]
	add	cl, 1
	mov	BYTE PTR _iBit$[ebp], cl

; 475  : 	}

	jmp	SHORT $L2611
$L2612:

; 476  : 	
; 477  : 	// Return first free bit.
; 478  : 	return iBit;

	mov	al, BYTE PTR _iBit$[ebp]

; 479  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?firstClearBitInByte@CPhysicalMemoryManager@@AAEEE@Z ENDP ; CPhysicalMemoryManager::firstClearBitInByte
_TEXT	ENDS
PUBLIC	?freePages@CPhysicalMemoryManager@@QAEXKK@Z	; CPhysicalMemoryManager::freePages
_DATA	SEGMENT
	ORG $+3
$SG2620	DB	'freePages() - Start ', 00H
	ORG $+3
$SG2621	DB	' count ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iStartPage$ = 8
_iPageCount$ = 12
_this$ = -12
_pAllocationDWord$2880 = -4
$T2886 = -8
?freePages@CPhysicalMemoryManager@@QAEXKK@Z PROC NEAR	; CPhysicalMemoryManager::freePages

; 492  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 493  : 	// Count down pages left to free.
; 494  : 	if( m_bDebug ) cout << m_pClassName << "freePages() - Start " << iStartPage << " count " << iPageCount << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2619
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _iPageCount$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2621
	mov	eax, DWORD PTR _iStartPage$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2620
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2619:

; 495  : 	while( iPageCount>0 )

	cmp	DWORD PTR _iPageCount$[ebp], 0
	jbe	$L2624

; 497  : 		// Reduces number of pages left to free.
; 498  : 		iPageCount--;

	mov	ecx, DWORD PTR _iPageCount$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _iPageCount$[ebp], ecx

; 499  : 
; 500  : 		// Free page by zeroing allocation bit.
; 501  : 		setPageAllocationBit( iStartPage++, 0 );

	mov	edx, DWORD PTR _iStartPage$[ebp]
	mov	DWORD PTR $T2886[ebp], edx
	mov	eax, DWORD PTR _iStartPage$[ebp]
	add	eax, 1
	mov	DWORD PTR _iStartPage$[ebp], eax
	xor	ecx, ecx
	test	ecx, ecx
	je	SHORT $L2881
	mov	edx, DWORD PTR $T2886[ebp]
	shr	edx, 5
	mov	eax, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	ecx, DWORD PTR [eax+edx*4]
	push	ecx
	push	OFFSET FLAT:??_C@_02CEEM@?$CJ?5?$AA@	; `string'
	mov	edx, DWORD PTR $T2886[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0BG@NKLB@setPageAllocationBit?$CI?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
$L2881:
	mov	eax, DWORD PTR $T2886[ebp]
	shr	eax, 5
	mov	ecx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _pAllocationDWord$2880[ebp], edx
	xor	eax, eax
	test	eax, eax
	jne	SHORT $L2882
	mov	eax, DWORD PTR $T2886[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	not	edx
	mov	eax, DWORD PTR _pAllocationDWord$2880[ebp]
	mov	ecx, DWORD PTR [eax]
	and	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2880[ebp]
	mov	DWORD PTR [edx], ecx
	jmp	SHORT $L2883
$L2882:
	mov	eax, DWORD PTR $T2886[ebp]
	xor	edx, edx
	mov	ecx, 32					; 00000020H
	div	ecx
	mov	ecx, edx
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR _pAllocationDWord$2880[ebp]
	mov	ecx, DWORD PTR [eax]
	or	ecx, edx
	mov	edx, DWORD PTR _pAllocationDWord$2880[ebp]
	mov	DWORD PTR [edx], ecx
$L2883:
	xor	eax, eax
	test	eax, eax
	je	SHORT $L2879
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR $T2886[ebp]
	shr	ecx, 5
	mov	edx, DWORD PTR ?m_pPageAllocationMap@CPhysicalMemoryManager@@0PBKB ; CPhysicalMemoryManager::m_pPageAllocationMap
	mov	eax, DWORD PTR [edx+ecx*4]
	push	eax
	push	OFFSET FLAT:??_C@_04GMLE@?5?$DN?$DO?5?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2879:

; 502  : 	}

	jmp	$L2619
$L2624:

; 503  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?freePages@CPhysicalMemoryManager@@QAEXKK@Z ENDP	; CPhysicalMemoryManager::freePages
_TEXT	ENDS
PUBLIC	?getPageDirectory@CPhysicalMemoryManager@@AAEPAVCPageDirectoryEntry@@XZ ; CPhysicalMemoryManager::getPageDirectory
EXTRN	?getPageDirectoryTable@CCPU@@QBEPBXXZ:NEAR	; CCPU::getPageDirectoryTable
_TEXT	SEGMENT
_this$ = -8
_spPageDirectoryAddress$ = -4
?getPageDirectory@CPhysicalMemoryManager@@AAEPAVCPageDirectoryEntry@@XZ PROC NEAR ; CPhysicalMemoryManager::getPageDirectory

; 532  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 533  : 	CPageDirectoryEntry* spPageDirectoryAddress;
; 534  : 	
; 535  : 	// Load page directory address.
; 536  : 	spPageDirectoryAddress = (CPageDirectoryEntry*)(Application.getSystem().getCPU().getPageDirectoryTable());

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getPageDirectoryTable@CCPU@@QBEPBXXZ	; CCPU::getPageDirectoryTable
	mov	DWORD PTR _spPageDirectoryAddress$[ebp], eax

; 537  : 	
; 538  : 	// Return physical address of page directory.
; 539  : 	return spPageDirectoryAddress;

	mov	eax, DWORD PTR _spPageDirectoryAddress$[ebp]

; 540  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPageDirectory@CPhysicalMemoryManager@@AAEPAVCPageDirectoryEntry@@XZ ENDP ; CPhysicalMemoryManager::getPageDirectory
_TEXT	ENDS
PUBLIC	?getBytesPerPage@CPhysicalMemoryManager@@QBEKXZ	; CPhysicalMemoryManager::getBytesPerPage
_TEXT	SEGMENT
_this$ = -4
?getBytesPerPage@CPhysicalMemoryManager@@QBEKXZ PROC NEAR ; CPhysicalMemoryManager::getBytesPerPage

; 553  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 554  : 	// Return the number of bytes in an allocation page.
; 555  : 	return m_iPageSize;

	mov	eax, 4096				; 00001000H

; 556  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getBytesPerPage@CPhysicalMemoryManager@@QBEKXZ ENDP	; CPhysicalMemoryManager::getBytesPerPage
_TEXT	ENDS
EXTRN	?getPageTable@CPageDirectoryEntry@@QAEKXZ:NEAR	; CPageDirectoryEntry::getPageTable
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_iPageDirectoryIndex$ = 12
_this$ = -4
?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z PROC NEAR ; CPhysicalMemoryManager::getPageTable

; 569  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 570  : 	// Extract physical address of page table.
; 571  : 	return (CPageTableEntry*)((pPageDirectoryTable[iPageDirectoryIndex].getPageTable())<<12);

	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?getPageTable@CPageDirectoryEntry@@QAEKXZ ; CPageDirectoryEntry::getPageTable
	shl	eax, 12					; 0000000cH

; 572  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ENDP ; CPhysicalMemoryManager::getPageTable
_TEXT	ENDS
PUBLIC	?createPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@G@Z ; CPhysicalMemoryManager::createPageTable
PUBLIC	?getPageTableEntry@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTableEntry
_DATA	SEGMENT
$SG2650	DB	'getPageTableEntry() - ', 00H
	ORG $+1
$SG2653	DB	'Page Directory Table 0x', 00H
$SG2657	DB	'New PT to contain PF 0x', 00H
$SG2663	DB	'Page table entry 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_iLinearPageFrame$ = 12
_this$ = -32
_pPageTableEntry$ = -28
_pFunctionName$ = -24
?getPageTableEntry@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z PROC NEAR ; CPhysicalMemoryManager::getPageTableEntry

; 586  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 587  : 	CPageTableEntry* pPageTableEntry;
; 588  : 	const char pFunctionName[] = "getPageTableEntry() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2650
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsw
	movsb

; 589  : 
; 590  : 	// Get page table containing linear page frame.
; 591  : 	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Page Directory Table 0x" << (DWORD)pPageDirectoryTable << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2651
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2653
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2651:

; 592  : 	pPageTableEntry = getPageTable( pPageDirectoryTable, (WORD)(iLinearPageFrame/m_iEntriesPerPageTable) );

	mov	ecx, DWORD PTR _iLinearPageFrame$[ebp]
	shr	ecx, 10					; 0000000aH
	and	ecx, 65535				; 0000ffffH
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
	mov	DWORD PTR _pPageTableEntry$[ebp], eax

; 593  : 	if( pPageTableEntry==NULL )

	cmp	DWORD PTR _pPageTableEntry$[ebp], 0
	jne	SHORT $L2655

; 595  : 		// Create a page table for the mapping.
; 596  : 		if( m_bDebug ) cout << m_pClassName << pFunctionName << "New PT to contain PF 0x" << iLinearPageFrame << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2656
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _iLinearPageFrame$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2657
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2656:

; 597  : 		pPageTableEntry = createPageTable( pPageDirectoryTable, (WORD)(iLinearPageFrame/m_iEntriesPerPageTable) );

	mov	ecx, DWORD PTR _iLinearPageFrame$[ebp]
	shr	ecx, 10					; 0000000aH
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?createPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@G@Z ; CPhysicalMemoryManager::createPageTable
	mov	DWORD PTR _pPageTableEntry$[ebp], eax
$L2655:

; 599  : 
; 600  : 	// Check validity of page table.
; 601  : 	if( (ADDRESS)pPageTableEntry!=0xffffffff )

	cmp	DWORD PTR _pPageTableEntry$[ebp], -1
	je	SHORT $L2660

; 602  : 		pPageTableEntry = &(pPageTableEntry[iLinearPageFrame%m_iEntriesPerPageTable]);

	mov	eax, DWORD PTR _iLinearPageFrame$[ebp]
	xor	edx, edx
	mov	ecx, 1024				; 00000400H
	div	ecx
	mov	eax, DWORD PTR _pPageTableEntry$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	mov	DWORD PTR _pPageTableEntry$[ebp], ecx
$L2660:

; 603  : 
; 604  : 	// Return pointer to specified entry in page table.
; 605  : 	if( m_bDebug ) cout << m_pClassName << pFunctionName << "Page table entry 0x" << (DWORD)pPageTableEntry << endl;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	je	SHORT $L2661
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2663
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2661:

; 606  : 	return pPageTableEntry;

	mov	eax, DWORD PTR _pPageTableEntry$[ebp]

; 607  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
?getPageTableEntry@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ENDP ; CPhysicalMemoryManager::getPageTableEntry
_TEXT	ENDS
PUBLIC	?placeBlockInPageTable@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@IIU21@@Z ; CPhysicalMemoryManager::placeBlockInPageTable
EXTRN	?getAllocated@CPageTableEntry@@QAE_NXZ:NEAR	; CPageTableEntry::getAllocated
_TEXT	SEGMENT
_pPageDirectoryTable$ = 12
_iBlockSize$ = 16
_iPageDirectoryIndex$ = 20
_sPlacement$ = 24
___$ReturnUdt$ = 8
_this$ = -24
_iFirstPageIndex$ = -8
_iLimitPageIndex$ = -20
_iAvailableSpace$ = -4
_iAbsolutePageIndex$ = -16
_pPageTable$ = -12
?placeBlockInPageTable@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@IIU21@@Z PROC NEAR ; CPhysicalMemoryManager::placeBlockInPageTable

; 621  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 622  : 	unsigned int iFirstPageIndex;
; 623  : 	unsigned int iLimitPageIndex;
; 624  : 	unsigned int iAvailableSpace;
; 625  : 	unsigned int iAbsolutePageIndex;
; 626  : 	CPageTableEntry* pPageTable;
; 627  : 
; 628  : 	// Calculate linear base address represented by the first page table entry.
; 629  : 	iAbsolutePageIndex = iPageDirectoryIndex<<m_iLog2EntriesPerPageTable;

	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	shl	eax, 10					; 0000000aH
	mov	DWORD PTR _iAbsolutePageIndex$[ebp], eax

; 630  : 
; 631  : 	// Get base address of page table.
; 632  : 	pPageTable = getPageTable( pPageDirectoryTable, iPageDirectoryIndex );

	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTable
	mov	DWORD PTR _pPageTable$[ebp], eax

; 633  : 
; 634  : 	// Assume this page is not full as we're trying to place a block in it.
; 635  : 	sPlacement.full = 0;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	and	al, -3					; fffffffdH
	mov	DWORD PTR _sPlacement$[ebp], eax

; 636  : 
; 637  : 	// Start free page search with first entry, never allocate null page.
; 638  : 	if( iPageDirectoryIndex==0 )

	cmp	DWORD PTR _iPageDirectoryIndex$[ebp], 0
	jne	SHORT $L2677

; 639  : 		iFirstPageIndex = 1;

	mov	DWORD PTR _iFirstPageIndex$[ebp], 1

; 640  : 	else

	jmp	SHORT $L2678
$L2677:

; 641  : 		iFirstPageIndex = 0;

	mov	DWORD PTR _iFirstPageIndex$[ebp], 0
$L2678:

; 642  : 
; 643  : 	// Look for free page ranges in this page table.
; 644  : 	while( iFirstPageIndex<m_iPageSize/sizeof(CPageTableEntry) && sPlacement.placed==0 )

	cmp	DWORD PTR _iFirstPageIndex$[ebp], 1024	; 00000400H
	jae	$L2681
	mov	ecx, DWORD PTR _sPlacement$[ebp]
	and	ecx, 1
	test	ecx, ecx
	jne	$L2681
$L2684:

; 646  : 		// Locate starting page of free linear space.
; 647  : 		while( iFirstPageIndex<m_iPageSize/sizeof(CPageTableEntry) )

	cmp	DWORD PTR _iFirstPageIndex$[ebp], 1024	; 00000400H
	jae	SHORT $L2685

; 649  : 			// Check present bit.
; 650  : 			if( pPageTable[iFirstPageIndex].getAllocated()==0 )

	mov	edx, DWORD PTR _iFirstPageIndex$[ebp]
	mov	eax, DWORD PTR _pPageTable$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?getAllocated@CPageTableEntry@@QAE_NXZ	; CPageTableEntry::getAllocated
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L2687

; 651  : 				break;

	jmp	SHORT $L2685
$L2687:

; 654  : 				// Update placement base address.
; 655  : 				iFirstPageIndex++;

	mov	ecx, DWORD PTR _iFirstPageIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iFirstPageIndex$[ebp], ecx

; 656  : 				sPlacement.page_address = iAbsolutePageIndex+iFirstPageIndex;

	mov	edx, DWORD PTR _iAbsolutePageIndex$[ebp]
	add	edx, DWORD PTR _iFirstPageIndex$[ebp]
	and	edx, 1048575				; 000fffffH
	shl	edx, 2
	mov	eax, DWORD PTR _sPlacement$[ebp]
	and	eax, -4194301				; ffc00003H
	or	eax, edx
	mov	DWORD PTR _sPlacement$[ebp], eax

; 658  : 		}

	jmp	SHORT $L2684
$L2685:

; 659  : 
; 660  : 		// First page must be valid to continue placement in the page table. 
; 661  : 		if( iFirstPageIndex<m_iEntriesPerPageTable )

	cmp	DWORD PTR _iFirstPageIndex$[ebp], 1024	; 00000400H
	jae	$L2689

; 663  : 			// Locate limiting page table entry.
; 664  : 			iLimitPageIndex = iFirstPageIndex+1;

	mov	ecx, DWORD PTR _iFirstPageIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iLimitPageIndex$[ebp], ecx
$L2691:

; 665  : 			while( iLimitPageIndex<m_iPageSize/sizeof(CPageTableEntry) )

	cmp	DWORD PTR _iLimitPageIndex$[ebp], 1024	; 00000400H
	jae	SHORT $L2692

; 667  : 				// Check present bit.
; 668  : 				if( pPageTable[iLimitPageIndex].getAllocated()!=0 )

	mov	edx, DWORD PTR _iLimitPageIndex$[ebp]
	mov	eax, DWORD PTR _pPageTable$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?getAllocated@CPageTableEntry@@QAE_NXZ	; CPageTableEntry::getAllocated
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2694

; 669  : 					break;

	jmp	SHORT $L2692
$L2694:

; 670  : 				iLimitPageIndex++;

	mov	ecx, DWORD PTR _iLimitPageIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iLimitPageIndex$[ebp], ecx

; 671  : 			}

	jmp	SHORT $L2691
$L2692:

; 672  : 
; 673  : 			// Check for page table index overrun.
; 674  : 			if( iLimitPageIndex==m_iPageSize/sizeof(CPageTableEntry) )

	cmp	DWORD PTR _iLimitPageIndex$[ebp], 1024	; 00000400H
	jne	SHORT $L2696

; 675  : 				iLimitPageIndex = m_iEntriesPerPageTable-1;

	mov	DWORD PTR _iLimitPageIndex$[ebp], 1023	; 000003ffH
$L2696:

; 676  : 
; 677  : 			// Calculate contiguous space limited only by page table.
; 678  : 			iAvailableSpace = (iAbsolutePageIndex+iLimitPageIndex+1-sPlacement.page_address)<<m_iLog2PageSize;

	mov	edx, DWORD PTR _iLimitPageIndex$[ebp]
	mov	eax, DWORD PTR _iAbsolutePageIndex$[ebp]
	lea	ecx, DWORD PTR [eax+edx+1]
	mov	edx, DWORD PTR _sPlacement$[ebp]
	shr	edx, 2
	and	edx, 1048575				; 000fffffH
	sub	ecx, edx
	shl	ecx, 12					; 0000000cH
	mov	DWORD PTR _iAvailableSpace$[ebp], ecx

; 679  : 			
; 680  : 			// Flag block as placed if enough space has been found.
; 681  : 			if( iBlockSize<=iAvailableSpace )

	mov	eax, DWORD PTR _iBlockSize$[ebp]
	cmp	eax, DWORD PTR _iAvailableSpace$[ebp]
	ja	SHORT $L2697

; 683  : 				// Block can be placed,
; 684  : 				sPlacement.placed = 1;

	mov	ecx, DWORD PTR _sPlacement$[ebp]
	or	ecx, 1
	mov	DWORD PTR _sPlacement$[ebp], ecx
$L2697:

; 686  : 
; 687  : 			// Try placement at next free page entry after current limit page.
; 688  : 			iFirstPageIndex = iLimitPageIndex+1;

	mov	edx, DWORD PTR _iLimitPageIndex$[ebp]
	add	edx, 1
	mov	DWORD PTR _iFirstPageIndex$[ebp], edx

; 690  : 		else

	jmp	SHORT $L2698
$L2689:

; 692  : 			// Mark page table as full.
; 693  : 			sPlacement.full = 1;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	or	al, 2
	mov	DWORD PTR _sPlacement$[ebp], eax
$L2698:

; 695  : 	}

	jmp	$L2678
$L2681:

; 696  : 
; 697  : 	// Return success of placement.
; 698  : 	return sPlacement;

	mov	ecx, DWORD PTR ___$ReturnUdt$[ebp]
	mov	edx, DWORD PTR _sPlacement$[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 699  : }

	mov	esp, ebp
	pop	ebp
	ret	20					; 00000014H
?placeBlockInPageTable@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@IIU21@@Z ENDP ; CPhysicalMemoryManager::placeBlockInPageTable
_TEXT	ENDS
_DATA	SEGMENT
$SG2710	DB	'Creating page directory at 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -12
_iPageFrame$ = -8
_pPageDirectoryTable$ = -4
?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ PROC NEAR ; CPhysicalMemoryManager::createPageDirectory

; 712  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 713  : 	PAGEFRAME iPageFrame;
; 714  : 	CPageDirectoryEntry* pPageDirectoryTable;
; 715  : 
; 716  : 	// Allocate a physical page for the page directory table.
; 717  : 	iPageFrame = allocatePage( m_pPageDirectoryTable );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+10]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::allocatePage
	mov	DWORD PTR _iPageFrame$[ebp], eax

; 718  : 	if( iPageFrame<0 )

	cmp	DWORD PTR _iPageFrame$[ebp], 0
	jae	SHORT $L2704

; 720  : 		// Invalid page frame index.
; 721  : 		pPageDirectoryTable = NULL;

	mov	DWORD PTR _pPageDirectoryTable$[ebp], 0

; 723  : 	else

	jmp	SHORT $L2705
$L2704:

; 725  : 		// Convert page frame index to physical address.
; 726  : 		pPageDirectoryTable = (CPageDirectoryEntry*)(((unsigned long)iPageFrame)<<12);

	mov	edx, DWORD PTR _iPageFrame$[ebp]
	shl	edx, 12					; 0000000cH
	mov	DWORD PTR _pPageDirectoryTable$[ebp], edx

; 727  : 
; 728  : 		// Create the page directory.
; 729  : 		if( m_bDebug ) cout << "Creating page directory at 0x" << (DWORD)pPageDirectoryTable << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2708
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2710
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2708:

; 730  : 		memset( (void*)pPageDirectoryTable, 0x00000000, m_iPageSize );

	push	4096					; 00001000H
	push	0
	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	push	eax
	call	_memset
	add	esp, 12					; 0000000cH
$L2705:

; 732  : 
; 733  : 	// Return physcial address of page directory table.
; 734  : 	return pPageDirectoryTable;

	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]

; 735  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ ENDP ; CPhysicalMemoryManager::createPageDirectory
_TEXT	ENDS
EXTRN	?setPageTable@CPageDirectoryEntry@@QAEXK@Z:NEAR	; CPageDirectoryEntry::setPageTable
EXTRN	?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setReadWrite
EXTRN	?setPresent@CPageDirectoryEntry@@QAEX_N@Z:NEAR	; CPageDirectoryEntry::setPresent
_TEXT	SEGMENT
_pPageDirectory$ = 8
_iPageDirectoryIndex$ = 12
_this$ = -12
_iPageTableFrame$ = -4
_pPageDirectoryEntry$ = -8
?createPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@G@Z PROC NEAR ; CPhysicalMemoryManager::createPageTable

; 748  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 749  : 	DWORD iPageTableFrame;
; 750  : 	CPageDirectoryEntry* pPageDirectoryEntry;
; 751  : 
; 752  : 	// Reference page directory entry for the new page table.
; 753  : 	pPageDirectoryEntry = &(pPageDirectory[iPageDirectoryIndex]);

	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	and	eax, 65535				; 0000ffffH
	mov	ecx, DWORD PTR _pPageDirectory$[ebp]
	lea	edx, DWORD PTR [ecx+eax*4]
	mov	DWORD PTR _pPageDirectoryEntry$[ebp], edx

; 754  : 
; 755  : 	// Allocate a page for the page table.
; 756  : 	iPageTableFrame = allocatePage( pPageDirectory );

	mov	eax, DWORD PTR _pPageDirectory$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::allocatePage
	mov	DWORD PTR _iPageTableFrame$[ebp], eax

; 757  : 	if( iPageTableFrame!=0xffffffff )

	cmp	DWORD PTR _iPageTableFrame$[ebp], -1
	je	SHORT $L2719

; 759  : 		pPageDirectoryEntry->setPresent( true );

	push	1
	mov	ecx, DWORD PTR _pPageDirectoryEntry$[ebp]
	call	?setPresent@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setPresent

; 760  : 		pPageDirectoryEntry->setReadWrite( true );

	push	1
	mov	ecx, DWORD PTR _pPageDirectoryEntry$[ebp]
	call	?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setReadWrite

; 761  : 		pPageDirectoryEntry->setPageTable( iPageTableFrame );

	mov	ecx, DWORD PTR _iPageTableFrame$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pPageDirectoryEntry$[ebp]
	call	?setPageTable@CPageDirectoryEntry@@QAEXK@Z ; CPageDirectoryEntry::setPageTable
$L2719:

; 763  : 
; 764  : 	// Return first page table entry.
; 765  : 	return (CPageTableEntry*)(iPageTableFrame<<12);

	mov	eax, DWORD PTR _iPageTableFrame$[ebp]
	shl	eax, 12					; 0000000cH

; 766  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?createPageTable@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@G@Z ENDP ; CPhysicalMemoryManager::createPageTable
_TEXT	ENDS
PUBLIC	?mapGlobalPages@CPhysicalMemoryManager@@QAEXPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::mapGlobalPages
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_this$ = -4
?mapGlobalPages@CPhysicalMemoryManager@@QAEXPAVCPageDirectoryEntry@@@Z PROC NEAR ; CPhysicalMemoryManager::mapGlobalPages

; 779  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 780  : 	// Perform 1 to 1 mapping of physical to linear address space for kernel area.
; 781  : 	mapPages( pPageDirectoryTable, 0x00000000, 0x00000000, m_iReservedPageCount );

	push	768					; 00000300H
	push	0
	push	0
	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapPages@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KKK@Z ; CPhysicalMemoryManager::mapPages

; 782  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?mapGlobalPages@CPhysicalMemoryManager@@QAEXPAVCPageDirectoryEntry@@@Z ENDP ; CPhysicalMemoryManager::mapGlobalPages
_TEXT	ENDS
EXTRN	?clear@CPageTableEntry@@QAEXXZ:NEAR		; CPageTableEntry::clear
EXTRN	?setPresent@CPageTableEntry@@QAEX_N@Z:NEAR	; CPageTableEntry::setPresent
EXTRN	?setReadWrite@CPageTableEntry@@QAEX_N@Z:NEAR	; CPageTableEntry::setReadWrite
EXTRN	?setPageFrame@CPageTableEntry@@QAEXK@Z:NEAR	; CPageTableEntry::setPageFrame
_DATA	SEGMENT
	ORG $+2
$SG2733	DB	'mapPage() - ', 00H
	ORG $+3
$SG2736	DB	'PDT 0x', 00H
	ORG $+1
$SG2737	DB	' LPF 0x', 00H
$SG2738	DB	' PPF 0x', 00H
$SG2743	DB	'Page Table Entry 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_iLinearPageFrame$ = 12
_iPhysicalPageFrame$ = 16
_this$ = -24
_pPageTableEntry$ = -20
_pFunctionName$ = -16
?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z PROC NEAR ; CPhysicalMemoryManager::mapPage

; 795  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 796  : 	CPageTableEntry* pPageTableEntry;
; 797  : 	const char pFunctionName[] = "mapPage() - ";

	mov	eax, DWORD PTR $SG2733
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2733+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2733+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	al, BYTE PTR $SG2733+12
	mov	BYTE PTR _pFunctionName$[ebp+12], al

; 798  : 
; 799  : 	// Locate page table entry for linear page.
; 800  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "PDT 0x" << (DWORD)pPageDirectoryTable << " LPF 0x" << iLinearPageFrame << " PPF 0x" << iPhysicalPageFrame << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2734
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iPhysicalPageFrame$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2738
	mov	ecx, DWORD PTR _iLinearPageFrame$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2737
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2736
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2734:

; 801  : 	pPageTableEntry = getPageTableEntry( pPageDirectoryTable, iLinearPageFrame );

	mov	ecx, DWORD PTR _iLinearPageFrame$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageTableEntry@CPhysicalMemoryManager@@AAEPAVCPageTableEntry@@PAVCPageDirectoryEntry@@K@Z ; CPhysicalMemoryManager::getPageTableEntry
	mov	DWORD PTR _pPageTableEntry$[ebp], eax

; 802  : 	if( (DWORD)pPageTableEntry!=0xffffffff )

	cmp	DWORD PTR _pPageTableEntry$[ebp], -1
	je	SHORT $L2740

; 804  : 		// Set physical page mapping.
; 805  : 		if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Table Entry 0x" << (DWORD)pPageTableEntry << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2741
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _pPageTableEntry$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2743
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2741:

; 806  : 		pPageTableEntry->clear();

	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	call	?clear@CPageTableEntry@@QAEXXZ		; CPageTableEntry::clear

; 807  : 		pPageTableEntry->setAllocated( true );

	push	1
	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	call	?setAllocated@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setAllocated

; 808  : 		pPageTableEntry->setPresent( true );

	push	1
	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	call	?setPresent@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setPresent

; 809  : 		pPageTableEntry->setReadWrite( true );

	push	1
	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	call	?setReadWrite@CPageTableEntry@@QAEX_N@Z	; CPageTableEntry::setReadWrite

; 810  : 		pPageTableEntry->setPageFrame( iPhysicalPageFrame );

	mov	ecx, DWORD PTR _iPhysicalPageFrame$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pPageTableEntry$[ebp]
	call	?setPageFrame@CPageTableEntry@@QAEXK@Z	; CPageTableEntry::setPageFrame
$L2740:

; 812  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z ENDP ; CPhysicalMemoryManager::mapPage
_pPageDirectoryTable$ = 8
_iLinearPage$ = 12
_iPhysicalPage$ = 16
_iPageCount$ = 20
_this$ = -4
?mapPages@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KKK@Z PROC NEAR ; CPhysicalMemoryManager::mapPages

; 825  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx
$L2752:

; 826  : 	// Map rage of pages.
; 827  : 	while( iPageCount>0 )

	cmp	DWORD PTR _iPageCount$[ebp], 0
	jbe	SHORT $L2753

; 829  : 		mapPage( pPageDirectoryTable, iLinearPage++, iPhysicalPage++ );

	mov	eax, DWORD PTR _iPhysicalPage$[ebp]
	mov	DWORD PTR -8+[ebp], eax
	mov	ecx, DWORD PTR -8+[ebp]
	push	ecx
	mov	edx, DWORD PTR _iLinearPage$[ebp]
	mov	DWORD PTR -12+[ebp], edx
	mov	eax, DWORD PTR -12+[ebp]
	push	eax
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iLinearPage$[ebp]
	add	edx, 1
	mov	DWORD PTR _iLinearPage$[ebp], edx
	mov	eax, DWORD PTR _iPhysicalPage$[ebp]
	add	eax, 1
	mov	DWORD PTR _iPhysicalPage$[ebp], eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapPage@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KK@Z ; CPhysicalMemoryManager::mapPage

; 830  : 		iPageCount--;

	mov	ecx, DWORD PTR _iPageCount$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _iPageCount$[ebp], ecx

; 831  : 	}

	jmp	SHORT $L2752
$L2753:

; 832  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?mapPages@CPhysicalMemoryManager@@AAEXPAVCPageDirectoryEntry@@KKK@Z ENDP ; CPhysicalMemoryManager::mapPages
_TEXT	ENDS
EXTRN	?getAllocated@CPageDirectoryEntry@@QAE_NXZ:NEAR	; CPageDirectoryEntry::getAllocated
EXTRN	?getFull@CPageDirectoryEntry@@QAE_NXZ:NEAR	; CPageDirectoryEntry::getFull
EXTRN	?setAllocated@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setAllocated
EXTRN	?setAvailable@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setAvailable
EXTRN	?setFull@CPageDirectoryEntry@@QAEX_N@Z:NEAR	; CPageDirectoryEntry::setFull
EXTRN	?setUserSupervisor@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setUserSupervisor
EXTRN	?setWriteThrough@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setWriteThrough
EXTRN	?setCacheDisabled@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setCacheDisabled
EXTRN	?setAccessed@CPageDirectoryEntry@@QAEX_N@Z:NEAR	; CPageDirectoryEntry::setAccessed
EXTRN	?setGlobalPage@CPageDirectoryEntry@@QAEX_N@Z:NEAR ; CPageDirectoryEntry::setGlobalPage
EXTRN	?setPageSize@CPageDirectoryEntry@@QAEX_N@Z:NEAR	; CPageDirectoryEntry::setPageSize
EXTRN	?setReserved@CPageDirectoryEntry@@QAEX_N@Z:NEAR	; CPageDirectoryEntry::setReserved
_TEXT	SEGMENT
_pPageDirectoryTable$ = 12
_iBlockSize$ = 16
___$ReturnUdt$ = 8
_this$ = -20
_iPageDirectoryIndex$ = -4
_sPlacement$ = -12
_spPageDirectory$ = -8
$T2898 = -16
?placeBlockInPageDirectory@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@I@Z PROC NEAR ; CPhysicalMemoryManager::placeBlockInPageDirectory

; 845  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 846  : 	unsigned int iPageDirectoryIndex;
; 847  : 	SPlacement sPlacement;
; 848  : 	CPageDirectoryEntry* spPageDirectory;
; 849  : 
; 850  : 	// Get base address of page directory table.
; 851  : 	spPageDirectory = getPageDirectory();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageDirectory@CPhysicalMemoryManager@@AAEPAVCPageDirectoryEntry@@XZ ; CPhysicalMemoryManager::getPageDirectory
	mov	DWORD PTR _spPageDirectory$[ebp], eax

; 852  : 
; 853  : 	// Initialise placement information.
; 854  : 	sPlacement.placed       = 0;

	mov	eax, DWORD PTR _sPlacement$[ebp]
	and	al, -2					; fffffffeH
	mov	DWORD PTR _sPlacement$[ebp], eax

; 855  : 	sPlacement.page_address = 1;

	mov	ecx, DWORD PTR _sPlacement$[ebp]
	and	ecx, -4194301				; ffc00003H
	or	ecx, 4
	mov	DWORD PTR _sPlacement$[ebp], ecx

; 856  : 
; 857  : 	// Run though array of page directory entries.
; 858  : 	iPageDirectoryIndex = 0;

	mov	DWORD PTR _iPageDirectoryIndex$[ebp], 0
$L2764:

; 859  : 	while( iPageDirectoryIndex<m_iPageSize/sizeof(CPageDirectoryEntry) )

	cmp	DWORD PTR _iPageDirectoryIndex$[ebp], 1024 ; 00000400H
	jae	$L2765

; 861  : 		// Check present bit.
; 862  : 		if( spPageDirectory[iPageDirectoryIndex].getAllocated()==false )

	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?getAllocated@CPageDirectoryEntry@@QAE_NXZ ; CPageDirectoryEntry::getAllocated
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	$L2767

; 864  : 			// Edit page directory entry and allocate a page for it.
; 865  : 			spPageDirectory[iPageDirectoryIndex].setPresent( true );

	push	1
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?setPresent@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setPresent

; 866  : 			spPageDirectory[iPageDirectoryIndex].setReadWrite( true );

	push	1
	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setReadWrite

; 867  : 			spPageDirectory[iPageDirectoryIndex].setUserSupervisor( true );

	push	1
	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?setUserSupervisor@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setUserSupervisor

; 868  : 			spPageDirectory[iPageDirectoryIndex].setWriteThrough( true );

	push	1
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?setWriteThrough@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setWriteThrough

; 869  : 			spPageDirectory[iPageDirectoryIndex].setCacheDisabled( true );

	push	1
	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?setCacheDisabled@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setCacheDisabled

; 870  : 			spPageDirectory[iPageDirectoryIndex].setAccessed( true );

	push	1
	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?setAccessed@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setAccessed

; 871  : 			spPageDirectory[iPageDirectoryIndex].setReserved( false );

	push	0
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?setReserved@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setReserved

; 872  : 			spPageDirectory[iPageDirectoryIndex].setPageSize( true );

	push	1
	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?setPageSize@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setPageSize

; 873  : 			spPageDirectory[iPageDirectoryIndex].setGlobalPage( true );

	push	1
	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?setGlobalPage@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setGlobalPage

; 874  : 			spPageDirectory[iPageDirectoryIndex].setAllocated( true );

	push	1
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?setAllocated@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setAllocated

; 875  : 			spPageDirectory[iPageDirectoryIndex].setFull( false );

	push	0
	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?setFull@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setFull

; 876  : 			spPageDirectory[iPageDirectoryIndex].setAvailable( false );

	push	0
	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?setAvailable@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setAvailable

; 877  : 			spPageDirectory[iPageDirectoryIndex].setPageTable( allocatePage(pPageDirectoryTable) );

	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?allocatePage@CPhysicalMemoryManager@@AAEKPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::allocatePage
	push	eax
	mov	edx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	eax, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [eax+edx*4]
	call	?setPageTable@CPageDirectoryEntry@@QAEXK@Z ; CPageDirectoryEntry::setPageTable
$L2767:

; 879  : 
; 880  : 		// Place block in page table if not marked as full.
; 881  : 		if( spPageDirectory[iPageDirectoryIndex].getFull()==false )

	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?getFull@CPageDirectoryEntry@@QAE_NXZ	; CPageDirectoryEntry::getFull
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L2770

; 883  : 			sPlacement = placeBlockInPageTable( pPageDirectoryTable, iBlockSize, iPageDirectoryIndex, sPlacement );

	mov	eax, DWORD PTR _sPlacement$[ebp]
	push	eax
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iBlockSize$[ebp]
	push	edx
	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	push	eax
	lea	ecx, DWORD PTR $T2898[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?placeBlockInPageTable@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@IIU21@@Z ; CPhysicalMemoryManager::placeBlockInPageTable
	mov	edx, DWORD PTR [eax]
	mov	DWORD PTR _sPlacement$[ebp], edx

; 884  : 			spPageDirectory[iPageDirectoryIndex].setFull( sPlacement.full );

	mov	eax, DWORD PTR _sPlacement$[ebp]
	shr	eax, 1
	and	eax, 1
	push	eax
	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	edx, DWORD PTR _spPageDirectory$[ebp]
	lea	ecx, DWORD PTR [edx+ecx*4]
	call	?setFull@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setFull

; 885  : 
; 886  : 			// Check placement state.
; 887  : 			if( sPlacement.placed==1 )

	mov	eax, DWORD PTR _sPlacement$[ebp]
	and	eax, 1
	cmp	eax, 1
	jne	SHORT $L2770

; 888  : 				break;

	jmp	SHORT $L2765
$L2770:

; 890  : 
; 891  : 		// Move to next page directory entry.
; 892  : 		iPageDirectoryIndex++;

	mov	ecx, DWORD PTR _iPageDirectoryIndex$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iPageDirectoryIndex$[ebp], ecx

; 893  : 	}

	jmp	$L2764
$L2765:

; 894  : 
; 895  : 	// Return placement state.
; 896  : 	return sPlacement;

	mov	edx, DWORD PTR ___$ReturnUdt$[ebp]
	mov	eax, DWORD PTR _sPlacement$[ebp]
	mov	DWORD PTR [edx], eax
	mov	eax, DWORD PTR ___$ReturnUdt$[ebp]

; 897  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?placeBlockInPageDirectory@CPhysicalMemoryManager@@AAE?AUSPlacement@1@PAVCPageDirectoryEntry@@I@Z ENDP ; CPhysicalMemoryManager::placeBlockInPageDirectory
_TEXT	ENDS
PUBLIC	?OLD_setBit@CPhysicalMemoryManager@@AAEKKE@Z	; CPhysicalMemoryManager::OLD_setBit
_TEXT	SEGMENT
_iDWord$ = 8
_iBit$ = 12
_this$ = -8
_iMask$ = -4
?OLD_setBit@CPhysicalMemoryManager@@AAEKKE@Z PROC NEAR	; CPhysicalMemoryManager::OLD_setBit

; 911  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 912  : 	DWORD iMask;
; 913  : 	
; 914  : 	// Create mask with bit set is specified position.
; 915  : 	iMask = 1<<iBit;

	mov	ecx, DWORD PTR _iBit$[ebp]
	and	ecx, 255				; 000000ffH
	mov	eax, 1
	shl	eax, cl
	mov	DWORD PTR _iMask$[ebp], eax

; 916  : 
; 917  : 	// Return bit mask combined with specified dword.
; 918  : 	return iDWord|iMask;

	mov	eax, DWORD PTR _iDWord$[ebp]
	or	eax, DWORD PTR _iMask$[ebp]

; 919  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?OLD_setBit@CPhysicalMemoryManager@@AAEKKE@Z ENDP	; CPhysicalMemoryManager::OLD_setBit
_TEXT	ENDS
PUBLIC	?setDebug@CPhysicalMemoryManager@@QAEX_N@Z	; CPhysicalMemoryManager::setDebug
_TEXT	SEGMENT
_bDebug$ = 8
_this$ = -4
?setDebug@CPhysicalMemoryManager@@QAEX_N@Z PROC NEAR	; CPhysicalMemoryManager::setDebug

; 932  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 933  : 	// Set debug status.
; 934  : 	m_bDebug = bDebug;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _bDebug$[ebp]
	mov	BYTE PTR [eax+4], cl

; 935  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDebug@CPhysicalMemoryManager@@QAEX_N@Z ENDP		; CPhysicalMemoryManager::setDebug
_TEXT	ENDS
PUBLIC	?setDebugBreak@CPhysicalMemoryManager@@QAEX_N@Z	; CPhysicalMemoryManager::setDebugBreak
_TEXT	SEGMENT
_bDebugBreak$ = 8
_this$ = -4
?setDebugBreak@CPhysicalMemoryManager@@QAEX_N@Z PROC NEAR ; CPhysicalMemoryManager::setDebugBreak

; 948  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 949  : 	// Set debug break status.
; 950  : 	m_bDebugBreak = bDebugBreak;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _bDebugBreak$[ebp]
	mov	BYTE PTR [eax+5], cl

; 951  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDebugBreak@CPhysicalMemoryManager@@QAEX_N@Z ENDP	; CPhysicalMemoryManager::setDebugBreak
_TEXT	ENDS
PUBLIC	?virtualToPhysical@CPhysicalMemoryManager@@QBEPAXPAVCPageDirectoryEntry@@PBX@Z ; CPhysicalMemoryManager::virtualToPhysical
EXTRN	?getPagePointer@CPageTableEntry@@QBEPAXXZ:NEAR	; CPageTableEntry::getPagePointer
EXTRN	?getPageTablePointer@CPageDirectoryEntry@@QAEPAVCPageTableEntry@@XZ:NEAR ; CPageDirectoryEntry::getPageTablePointer
_DATA	SEGMENT
$SG2811	DB	'virtualToPhysical() - ', 00H
	ORG $+1
$SG2815	DB	'Page Directory 0x', 00H
	ORG $+2
$SG2817	DB	'Virtual address 0x', 00H
	ORG $+1
$SG2821	DB	'Page Table 0x', 00H
	ORG $+2
$SG2825	DB	'Physical Address 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_pVirtualAddress$ = 12
_this$ = -52
_iPageDirectoryIndex$ = -4
_iPageTableIndex$ = -44
_iOffset$ = -48
_iVirtualAddress$ = -40
_pPageTable$ = -36
_pPhysicalAddress$ = -32
_pFunctionName$ = -28
?virtualToPhysical@CPhysicalMemoryManager@@QBEPAXPAVCPageDirectoryEntry@@PBX@Z PROC NEAR ; CPhysicalMemoryManager::virtualToPhysical

; 995  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 996  : 	DWORD iPageDirectoryIndex;
; 997  : 	DWORD iPageTableIndex;
; 998  : 	DWORD iOffset;
; 999  : 	DWORD iVirtualAddress;
; 1000 : 	CPageTableEntry* pPageTable;
; 1001 : 	void* pPhysicalAddress;
; 1002 : 	const char pFunctionName[] = "virtualToPhysical() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2811
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsw
	movsb

; 1003 : 
; 1004 : 	// Cast virtual address to a dword.
; 1005 : 	iVirtualAddress = (DWORD)pVirtualAddress;

	mov	eax, DWORD PTR _pVirtualAddress$[ebp]
	mov	DWORD PTR _iVirtualAddress$[ebp], eax

; 1006 : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Directory 0x" << (DWORD)pPageDirectoryTable << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	je	SHORT $L2813
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pPageDirectoryTable$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2815
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2813:

; 1007 : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Virtual address 0x" << iVirtualAddress << endl;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	je	SHORT $L2816
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _iVirtualAddress$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2817
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2816:

; 1008 : 
; 1009 : 	// Split virtual addresss into constituent parts.
; 1010 : 	iPageDirectoryIndex = (iVirtualAddress&0xffc00000)>>22;	// 31-22

	mov	eax, DWORD PTR _iVirtualAddress$[ebp]
	and	eax, -4194304				; ffc00000H
	shr	eax, 22					; 00000016H
	mov	DWORD PTR _iPageDirectoryIndex$[ebp], eax

; 1011 : 	iPageTableIndex		= (iVirtualAddress&0x003ff000)>>12; // 21-12

	mov	ecx, DWORD PTR _iVirtualAddress$[ebp]
	and	ecx, 4190208				; 003ff000H
	shr	ecx, 12					; 0000000cH
	mov	DWORD PTR _iPageTableIndex$[ebp], ecx

; 1012 : 	iOffset				= (iVirtualAddress&0x00000fff);		// 11-0

	mov	edx, DWORD PTR _iVirtualAddress$[ebp]
	and	edx, 4095				; 00000fffH
	mov	DWORD PTR _iOffset$[ebp], edx

; 1013 : 
; 1014 : 	// Get pointer to page table.
; 1015 : 	pPageTable = (CPageTableEntry*)((pPageDirectoryTable[iPageDirectoryIndex].getPageTablePointer()));

	mov	eax, DWORD PTR _iPageDirectoryIndex$[ebp]
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?getPageTablePointer@CPageDirectoryEntry@@QAEPAVCPageTableEntry@@XZ ; CPageDirectoryEntry::getPageTablePointer
	mov	DWORD PTR _pPageTable$[ebp], eax

; 1016 : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Page Table 0x" << (DWORD)pPageTable << endl;

	mov	edx, DWORD PTR _this$[ebp]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	je	SHORT $L2819
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pPageTable$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2821
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2819:

; 1017 : 	pPhysicalAddress = pPageTable[iPageTableIndex].getPagePointer();

	mov	eax, DWORD PTR _iPageTableIndex$[ebp]
	mov	ecx, DWORD PTR _pPageTable$[ebp]
	lea	ecx, DWORD PTR [ecx+eax*4]
	call	?getPagePointer@CPageTableEntry@@QBEPAXXZ ; CPageTableEntry::getPagePointer
	mov	DWORD PTR _pPhysicalAddress$[ebp], eax

; 1018 : 
; 1019 : 	// Convert page to physical address.
; 1020 : 	pPhysicalAddress = (BYTE*)pPhysicalAddress + iOffset;

	mov	edx, DWORD PTR _pPhysicalAddress$[ebp]
	add	edx, DWORD PTR _iOffset$[ebp]
	mov	DWORD PTR _pPhysicalAddress$[ebp], edx

; 1021 : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Physical Address 0x" << (DWORD)pPhysicalAddress << endl;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+4]
	test	ecx, ecx
	je	SHORT $L2823
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _pPhysicalAddress$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2825
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPhysicalMemoryManager@@0QBDB ; CPhysicalMemoryManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2823:

; 1022 : 
; 1023 : 	// Return address.
; 1024 : 	return pPhysicalAddress;

	mov	eax, DWORD PTR _pPhysicalAddress$[ebp]

; 1025 : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	8
?virtualToPhysical@CPhysicalMemoryManager@@QBEPAXPAVCPageDirectoryEntry@@PBX@Z ENDP ; CPhysicalMemoryManager::virtualToPhysical
_TEXT	ENDS
END
