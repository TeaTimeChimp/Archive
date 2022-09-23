	TITLE	E:\WORKSHOP\os98\ice32\PageTableEntry.cpp
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
PUBLIC	??0CPageTableEntry@@QAE@XZ			; CPageTableEntry::CPageTableEntry
_TEXT	SEGMENT
_this$ = -4
??0CPageTableEntry@@QAE@XZ PROC NEAR			; CPageTableEntry::CPageTableEntry

; 12   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 13   : 
; 14   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CPageTableEntry@@QAE@XZ ENDP				; CPageTableEntry::CPageTableEntry
_TEXT	ENDS
PUBLIC	??1CPageTableEntry@@QAE@XZ			; CPageTableEntry::~CPageTableEntry
_TEXT	SEGMENT
_this$ = -4
??1CPageTableEntry@@QAE@XZ PROC NEAR			; CPageTableEntry::~CPageTableEntry

; 17   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 18   : 
; 19   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CPageTableEntry@@QAE@XZ ENDP				; CPageTableEntry::~CPageTableEntry
_TEXT	ENDS
PUBLIC	?clear@CPageTableEntry@@QAEXXZ			; CPageTableEntry::clear
_TEXT	SEGMENT
_this$ = -4
?clear@CPageTableEntry@@QAEXXZ PROC NEAR		; CPageTableEntry::clear

; 31   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 32   : 	*((unsigned long*)this) = 0x00000000L;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 33   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?clear@CPageTableEntry@@QAEXXZ ENDP			; CPageTableEntry::clear
_TEXT	ENDS
PUBLIC	?getAllocated@CPageTableEntry@@QAE_NXZ		; CPageTableEntry::getAllocated
_TEXT	SEGMENT
_this$ = -4
?getAllocated@CPageTableEntry@@QAE_NXZ PROC NEAR	; CPageTableEntry::getAllocated

; 46   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 47   : 	// Return allocation bit.
; 48   : 	return (m_iAllocated==1);

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 9
	and	eax, 1
	sub	eax, 1
	neg	eax
	sbb	eax, eax
	inc	eax

; 49   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getAllocated@CPageTableEntry@@QAE_NXZ ENDP		; CPageTableEntry::getAllocated
_TEXT	ENDS
PUBLIC	?getPagePointer@CPageTableEntry@@QBEPAXXZ	; CPageTableEntry::getPagePointer
_TEXT	SEGMENT
_this$ = -4
?getPagePointer@CPageTableEntry@@QBEPAXXZ PROC NEAR	; CPageTableEntry::getPagePointer

; 62   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 63   : 	// Return page frame converted to address.
; 64   : 	return (void*)(m_iPageFrame<<12);

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 12					; 0000000cH
	and	eax, 1048575				; 000fffffH
	shl	eax, 12					; 0000000cH

; 65   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPagePointer@CPageTableEntry@@QBEPAXXZ ENDP		; CPageTableEntry::getPagePointer
_TEXT	ENDS
PUBLIC	?getPageFrame@CPageTableEntry@@QBEKXZ		; CPageTableEntry::getPageFrame
_TEXT	SEGMENT
_this$ = -4
?getPageFrame@CPageTableEntry@@QBEKXZ PROC NEAR		; CPageTableEntry::getPageFrame

; 78   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 79   : 	// Return page frame converted to address.
; 80   : 	return m_iPageFrame;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 12					; 0000000cH
	and	eax, 1048575				; 000fffffH

; 81   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPageFrame@CPageTableEntry@@QBEKXZ ENDP		; CPageTableEntry::getPageFrame
_TEXT	ENDS
PUBLIC	?setPageFrame@CPageTableEntry@@QAEXK@Z		; CPageTableEntry::setPageFrame
_TEXT	SEGMENT
_iPageFrame$ = 8
_this$ = -4
?setPageFrame@CPageTableEntry@@QAEXK@Z PROC NEAR	; CPageTableEntry::setPageFrame

; 95   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 96   : 	// Store 20-bit address xxxxxxxxxxxxxxxxxxxx000000000000.
; 97   : 	m_iPageFrame = iPageFrame;

	mov	eax, DWORD PTR _iPageFrame$[ebp]
	and	eax, 1048575				; 000fffffH
	shl	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, 4095				; 00000fffH
	or	edx, eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 98   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPageFrame@CPageTableEntry@@QAEXK@Z ENDP		; CPageTableEntry::setPageFrame
_TEXT	ENDS
PUBLIC	?setAllocated@CPageTableEntry@@QAEX_N@Z		; CPageTableEntry::setAllocated
_TEXT	SEGMENT
_bSet$ = 8
_this$ = -4
?setAllocated@CPageTableEntry@@QAEX_N@Z PROC NEAR	; CPageTableEntry::setAllocated

; 111  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 112  : 	if( bSet==true )

	mov	eax, DWORD PTR _bSet$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L340

; 113  : 		m_iAllocated = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dh, 2
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 114  : 	else

	jmp	SHORT $L341
$L340:

; 115  : 		m_iAllocated = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dh, -3					; fffffffdH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L341:

; 116  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setAllocated@CPageTableEntry@@QAEX_N@Z ENDP		; CPageTableEntry::setAllocated
_TEXT	ENDS
PUBLIC	?setPresent@CPageTableEntry@@QAEX_N@Z		; CPageTableEntry::setPresent
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setPresent@CPageTableEntry@@QAEX_N@Z PROC NEAR		; CPageTableEntry::setPresent

; 129  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 130  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L346

; 131  : 		m_iPresent = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 132  : 	else

	jmp	SHORT $L347
$L346:

; 133  : 		m_iPresent = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -2					; fffffffeH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L347:

; 134  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPresent@CPageTableEntry@@QAEX_N@Z ENDP		; CPageTableEntry::setPresent
_TEXT	ENDS
PUBLIC	?setReadWrite@CPageTableEntry@@QAEX_N@Z		; CPageTableEntry::setReadWrite
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setReadWrite@CPageTableEntry@@QAEX_N@Z PROC NEAR	; CPageTableEntry::setReadWrite

; 147  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 148  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L352

; 149  : 		m_iReadWrite = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 2
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 150  : 	else

	jmp	SHORT $L353
$L352:

; 151  : 		m_iReadWrite = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -3					; fffffffdH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L353:

; 152  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setReadWrite@CPageTableEntry@@QAEX_N@Z ENDP		; CPageTableEntry::setReadWrite
_TEXT	ENDS
END
