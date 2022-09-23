	TITLE	E:\WORKSHOP\os98\ice32\libc\Heap.cpp
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
;	COMDAT ??0CHeap@@QAE@PAX@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CHeap@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?free@CHeap@@QAEPAXPAX@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?allocate@CHeap@@QAEPAXK@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?granulate@CHeap@@AAEII@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CHeap@@QAE@PAX@Z				; CHeap::CHeap
;	COMDAT ??0CHeap@@QAE@PAX@Z
_TEXT	SEGMENT
_pBase$ = 8
_this$ = -4
??0CHeap@@QAE@PAX@Z PROC NEAR				; CHeap::CHeap, COMDAT

; 16   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 17   : 	// Initialise member variables.
; 18   : 	m_iAllocations	= 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 19   : 	m_pBaseBlock	= (SAllocationBlock*)pBase;	

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pBase$[ebp]
	mov	DWORD PTR [ecx+8], edx

; 20   : 	m_iLimit		= 0x00100000;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 1048576		; 00100000H

; 21   : 
; 22   : #ifdef WIN32
; 23   : 	// Allocate virtual address space for debugging.
; 24   : 	VirtualAlloc( m_pBaseBlock, m_iLimit, MEM_COMMIT, PAGE_READWRITE );
; 25   : #endif
; 26   : 
; 27   : 	// Build first block to describe free memory space.
; 28   : 	m_pBaseBlock->m_iSignature	= 'HEAP';

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR [edx], 1212498256		; 48454150H

; 29   : 	m_pBaseBlock->m_bInUse		= false;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	BYTE PTR [ecx+4], 0

; 30   : 	m_pBaseBlock->m_pNext		= (SAllocationBlock*)(((unsigned long)m_pBaseBlock)+m_iLimit);

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR _this$[ebp]
	add	eax, DWORD PTR [ecx+12]
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+8]
	mov	DWORD PTR [ecx+5], eax

; 31   : }

	mov	eax, DWORD PTR _this$[ebp]
	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
??0CHeap@@QAE@PAX@Z ENDP				; CHeap::CHeap
_TEXT	ENDS
PUBLIC	??1CHeap@@QAE@XZ				; CHeap::~CHeap
;	COMDAT ??1CHeap@@QAE@XZ
_TEXT	SEGMENT
_this$ = -4
??1CHeap@@QAE@XZ PROC NEAR				; CHeap::~CHeap, COMDAT

; 35   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 36   : 
; 37   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
??1CHeap@@QAE@XZ ENDP					; CHeap::~CHeap
_TEXT	ENDS
PUBLIC	?free@CHeap@@QAEPAXPAX@Z			; CHeap::free
;	COMDAT ?free@CHeap@@QAEPAXPAX@Z
_TEXT	SEGMENT
_pDataSpace$ = 8
_this$ = -4
_pBlock$ = -8
?free@CHeap@@QAEPAXPAX@Z PROC NEAR			; CHeap::free, COMDAT

; 41   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 42   : 	SAllocationBlock* pBlock;
; 43   : 	
; 44   : 	// Validate pointer.
; 45   : 	if( pDataSpace!=NULL )

	cmp	DWORD PTR _pDataSpace$[ebp], 0
	je	SHORT $L271

; 47   : 		// Point to allocation block immediately before dataspace.
; 48   : 		pBlock = (SAllocationBlock*)((char*)pDataSpace-sizeof(SAllocationBlock));

	mov	eax, DWORD PTR _pDataSpace$[ebp]
	sub	eax, 9
	mov	DWORD PTR _pBlock$[ebp], eax

; 49   : 
; 50   : 		// Check allocation blocks signature.
; 51   : 		if( pBlock->m_iSignature=='HEAP' )

	mov	ecx, DWORD PTR _pBlock$[ebp]
	cmp	DWORD PTR [ecx], 1212498256		; 48454150H
	jne	SHORT $L271

; 53   : 			pBlock->m_bInUse = false;

	mov	edx, DWORD PTR _pBlock$[ebp]
	mov	BYTE PTR [edx+4], 0

; 54   : 			if( pBlock->m_pNext!=NULL )

	mov	eax, DWORD PTR _pBlock$[ebp]
	cmp	DWORD PTR [eax+5], 0
	je	SHORT $L273

; 56   : 				if( pBlock->m_pNext->m_bInUse==false )

	mov	ecx, DWORD PTR _pBlock$[ebp]
	mov	edx, DWORD PTR [ecx+5]
	xor	eax, eax
	mov	al, BYTE PTR [edx+4]
	test	eax, eax
	jne	SHORT $L273

; 58   : 					// Coaless space.
; 59   : 					pBlock->m_pNext = pBlock->m_pNext->m_pNext;

	mov	ecx, DWORD PTR _pBlock$[ebp]
	mov	edx, DWORD PTR [ecx+5]
	mov	eax, DWORD PTR _pBlock$[ebp]
	mov	ecx, DWORD PTR [edx+5]
	mov	DWORD PTR [eax+5], ecx
$L273:

; 62   : 
; 63   : 			// Signal block freed.
; 64   : 			pDataSpace = NULL;

	mov	DWORD PTR _pDataSpace$[ebp], 0
$L271:

; 67   : 
; 68   : 	// Return pointer reset,
; 69   : 	return pDataSpace;

	mov	eax, DWORD PTR _pDataSpace$[ebp]

; 70   : 
; 71   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?free@CHeap@@QAEPAXPAX@Z ENDP				; CHeap::free
_TEXT	ENDS
PUBLIC	?granulate@CHeap@@AAEII@Z			; CHeap::granulate
PUBLIC	?allocate@CHeap@@QAEPAXK@Z			; CHeap::allocate
;	COMDAT ?allocate@CHeap@@QAEPAXK@Z
_TEXT	SEGMENT
_iSize$ = 8
_this$ = -4
_pDataSpace$ = -8
_pFreeBlock$ = -12
_pNext$ = -16
_iFreeSpace$ = -20
?allocate@CHeap@@QAEPAXK@Z PROC NEAR			; CHeap::allocate, COMDAT

; 84   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 84					; 00000054H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 85   : 	void* pDataSpace;
; 86   : 	SAllocationBlock* pFreeBlock;
; 87   : 	SAllocationBlock* pNext;
; 88   : 	unsigned int iFreeSpace;
; 89   : 
; 90   : 	// Assume allocation failure.
; 91   : 	pDataSpace = NULL;

	mov	DWORD PTR _pDataSpace$[ebp], 0

; 92   : 	
; 93   : 	// Validate block size.
; 94   : 	if( iSize>0 )

	cmp	DWORD PTR _iSize$[ebp], 0
	jbe	$L285

; 96   : 		// Granulate allocation size request.
; 97   : 		iSize = granulate( iSize );

	mov	eax, DWORD PTR _iSize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?granulate@CHeap@@AAEII@Z		; CHeap::granulate
	mov	DWORD PTR _iSize$[ebp], eax

; 98   : 
; 99   : 		// Point to first block.
; 100  : 		pFreeBlock = m_pBaseBlock;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR _pFreeBlock$[ebp], edx
$L284:

; 101  : 		while( pDataSpace==NULL && pFreeBlock!=m_pBaseBlock+m_iLimit )

	cmp	DWORD PTR _pDataSpace$[ebp], 0
	jne	$L285
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	imul	ecx, 9
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	add	eax, ecx
	cmp	DWORD PTR _pFreeBlock$[ebp], eax
	je	$L285

; 103  : 			// Check used state of block.			
; 104  : 			if( pFreeBlock->m_bInUse==false )

	mov	ecx, DWORD PTR _pFreeBlock$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+4]
	test	edx, edx
	jne	SHORT $L293

; 106  : 				// Check avaiable size.
; 107  : 				iFreeSpace = (char*)(pFreeBlock->m_pNext)-(char*)pFreeBlock;

	mov	eax, DWORD PTR _pFreeBlock$[ebp]
	mov	ecx, DWORD PTR [eax+5]
	sub	ecx, DWORD PTR _pFreeBlock$[ebp]
	mov	DWORD PTR _iFreeSpace$[ebp], ecx

; 108  : 				if( iFreeSpace>=iSize )

	mov	edx, DWORD PTR _iFreeSpace$[ebp]
	cmp	edx, DWORD PTR _iSize$[ebp]
	jb	SHORT $L293

; 110  : 					// Enough space at this location.
; 111  : 					pFreeBlock->m_bInUse = true;

	mov	eax, DWORD PTR _pFreeBlock$[ebp]
	mov	BYTE PTR [eax+4], 1

; 112  : 
; 113  : 					// Pointer to data space.
; 114  : 					pDataSpace = (char*)pFreeBlock+granulate(sizeof(SAllocationBlock));

	push	9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?granulate@CHeap@@AAEII@Z		; CHeap::granulate
	mov	ecx, DWORD PTR _pFreeBlock$[ebp]
	add	ecx, eax
	mov	DWORD PTR _pDataSpace$[ebp], ecx

; 115  : 
; 116  : 					// Insert a new allocation block if possible.
; 117  : 					iFreeSpace -= iSize;

	mov	edx, DWORD PTR _iFreeSpace$[ebp]
	sub	edx, DWORD PTR _iSize$[ebp]
	mov	DWORD PTR _iFreeSpace$[ebp], edx

; 118  : 					if( iFreeSpace>=granulate(sizeof(SAllocationBlock))+4 )

	push	9
	mov	ecx, DWORD PTR _this$[ebp]
	call	?granulate@CHeap@@AAEII@Z		; CHeap::granulate
	add	eax, 4
	cmp	DWORD PTR _iFreeSpace$[ebp], eax
	jb	SHORT $L293

; 120  : 						// Insert a new allocation block.
; 121  : 						pNext = pFreeBlock->m_pNext;

	mov	eax, DWORD PTR _pFreeBlock$[ebp]
	mov	ecx, DWORD PTR [eax+5]
	mov	DWORD PTR _pNext$[ebp], ecx

; 122  : 						pFreeBlock->m_pNext	= (SAllocationBlock*)((char*)pDataSpace+iSize);

	mov	edx, DWORD PTR _pDataSpace$[ebp]
	add	edx, DWORD PTR _iSize$[ebp]
	mov	eax, DWORD PTR _pFreeBlock$[ebp]
	mov	DWORD PTR [eax+5], edx

; 123  : 						pFreeBlock->m_pNext->m_iSignature	= 'HEAP';

	mov	ecx, DWORD PTR _pFreeBlock$[ebp]
	mov	edx, DWORD PTR [ecx+5]
	mov	DWORD PTR [edx], 1212498256		; 48454150H

; 124  : 						pFreeBlock->m_pNext->m_bInUse		= false;

	mov	eax, DWORD PTR _pFreeBlock$[ebp]
	mov	ecx, DWORD PTR [eax+5]
	mov	BYTE PTR [ecx+4], 0

; 125  : 						pFreeBlock->m_pNext->m_pNext		= pNext;						

	mov	edx, DWORD PTR _pFreeBlock$[ebp]
	mov	eax, DWORD PTR [edx+5]
	mov	ecx, DWORD PTR _pNext$[ebp]
	mov	DWORD PTR [eax+5], ecx
$L293:

; 129  : 			// Move to next block.
; 130  : 			pFreeBlock = pFreeBlock->m_pNext;

	mov	edx, DWORD PTR _pFreeBlock$[ebp]
	mov	eax, DWORD PTR [edx+5]
	mov	DWORD PTR _pFreeBlock$[ebp], eax

; 131  : 		}

	jmp	$L284
$L285:

; 133  : 
; 134  : 	// Return a pointer to the data space.
; 135  : 	return pDataSpace;

	mov	eax, DWORD PTR _pDataSpace$[ebp]

; 136  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?allocate@CHeap@@QAEPAXK@Z ENDP				; CHeap::allocate
_TEXT	ENDS
;	COMDAT ?granulate@CHeap@@AAEII@Z
_TEXT	SEGMENT
_iSize$ = 8
_this$ = -4
?granulate@CHeap@@AAEII@Z PROC NEAR			; CHeap::granulate, COMDAT

; 150  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 68					; 00000044H
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 151  : 	// Granulate size.
; 152  : 	return (((iSize-1)>>2)+1)<<2;

	mov	eax, DWORD PTR _iSize$[ebp]
	sub	eax, 1
	shr	eax, 2
	lea	eax, DWORD PTR [eax*4+4]

; 153  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	4
?granulate@CHeap@@AAEII@Z ENDP				; CHeap::granulate
_TEXT	ENDS
END
