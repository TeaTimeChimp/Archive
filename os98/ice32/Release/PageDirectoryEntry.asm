	TITLE	E:\WORKSHOP\os98\ice32\PageDirectoryEntry.cpp
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
PUBLIC	??0CPageDirectoryEntry@@QAE@XZ			; CPageDirectoryEntry::CPageDirectoryEntry
_TEXT	SEGMENT
_this$ = -4
??0CPageDirectoryEntry@@QAE@XZ PROC NEAR		; CPageDirectoryEntry::CPageDirectoryEntry

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
??0CPageDirectoryEntry@@QAE@XZ ENDP			; CPageDirectoryEntry::CPageDirectoryEntry
_TEXT	ENDS
PUBLIC	??1CPageDirectoryEntry@@QAE@XZ			; CPageDirectoryEntry::~CPageDirectoryEntry
_TEXT	SEGMENT
_this$ = -4
??1CPageDirectoryEntry@@QAE@XZ PROC NEAR		; CPageDirectoryEntry::~CPageDirectoryEntry

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
??1CPageDirectoryEntry@@QAE@XZ ENDP			; CPageDirectoryEntry::~CPageDirectoryEntry
_TEXT	ENDS
PUBLIC	?getPageTable@CPageDirectoryEntry@@QAEKXZ	; CPageDirectoryEntry::getPageTable
_TEXT	SEGMENT
_this$ = -4
?getPageTable@CPageDirectoryEntry@@QAEKXZ PROC NEAR	; CPageDirectoryEntry::getPageTable

; 35   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 36   : 	// Returns the page frame address.
; 37   : 	return m_iPageTableFrame;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 12					; 0000000cH
	and	eax, 1048575				; 000fffffH

; 38   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPageTable@CPageDirectoryEntry@@QAEKXZ ENDP		; CPageDirectoryEntry::getPageTable
_TEXT	ENDS
PUBLIC	?getPageTablePointer@CPageDirectoryEntry@@QAEPAVCPageTableEntry@@XZ ; CPageDirectoryEntry::getPageTablePointer
_TEXT	SEGMENT
_this$ = -4
?getPageTablePointer@CPageDirectoryEntry@@QAEPAVCPageTableEntry@@XZ PROC NEAR ; CPageDirectoryEntry::getPageTablePointer

; 51   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 52   : 	// Returns the page frame address.
; 53   : 	return (CPageTableEntry*)(m_iPageTableFrame<<12);

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 12					; 0000000cH
	and	eax, 1048575				; 000fffffH
	shl	eax, 12					; 0000000cH

; 54   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPageTablePointer@CPageDirectoryEntry@@QAEPAVCPageTableEntry@@XZ ENDP ; CPageDirectoryEntry::getPageTablePointer
_TEXT	ENDS
PUBLIC	?getAllocated@CPageDirectoryEntry@@QAE_NXZ	; CPageDirectoryEntry::getAllocated
_TEXT	SEGMENT
_this$ = -4
?getAllocated@CPageDirectoryEntry@@QAE_NXZ PROC NEAR	; CPageDirectoryEntry::getAllocated

; 67   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 68   : 	// Returns true if the allocated bit is set,
; 69   : 	return (m_iAllocated==1);

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 9
	and	eax, 1
	sub	eax, 1
	neg	eax
	sbb	eax, eax
	inc	eax

; 70   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getAllocated@CPageDirectoryEntry@@QAE_NXZ ENDP		; CPageDirectoryEntry::getAllocated
_TEXT	ENDS
PUBLIC	?getFull@CPageDirectoryEntry@@QAE_NXZ		; CPageDirectoryEntry::getFull
_TEXT	SEGMENT
_this$ = -4
?getFull@CPageDirectoryEntry@@QAE_NXZ PROC NEAR		; CPageDirectoryEntry::getFull

; 83   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 84   : 	// Returns true if the allocated bit is set,
; 85   : 	return (m_iFull==1);

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]
	shr	eax, 10					; 0000000aH
	and	eax, 1
	sub	eax, 1
	neg	eax
	sbb	eax, eax
	inc	eax

; 86   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getFull@CPageDirectoryEntry@@QAE_NXZ ENDP		; CPageDirectoryEntry::getFull
_TEXT	ENDS
PUBLIC	?setPresent@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setPresent
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setPresent@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setPresent

; 99   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 100  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L393

; 101  : 		m_iPresent = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 102  : 	else

	jmp	SHORT $L394
$L393:

; 103  : 		m_iPresent = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -2					; fffffffeH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L394:

; 104  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPresent@CPageDirectoryEntry@@QAEX_N@Z ENDP		; CPageDirectoryEntry::setPresent
_TEXT	ENDS
PUBLIC	?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setReadWrite
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setReadWrite

; 117  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 118  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L399

; 119  : 		m_iReadWrite = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 2
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 120  : 	else

	jmp	SHORT $L400
$L399:

; 121  : 		m_iReadWrite = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -3					; fffffffdH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L400:

; 122  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setReadWrite@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setReadWrite
_TEXT	ENDS
PUBLIC	?setUserSupervisor@CPageDirectoryEntry@@QAEX_N@Z ; CPageDirectoryEntry::setUserSupervisor
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setUserSupervisor@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR ; CPageDirectoryEntry::setUserSupervisor

; 135  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 136  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L405

; 137  : 		m_iUserSupervisor = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 4
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 138  : 	else

	jmp	SHORT $L406
$L405:

; 139  : 		m_iUserSupervisor = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -5					; fffffffbH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L406:

; 140  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setUserSupervisor@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setUserSupervisor
_TEXT	ENDS
PUBLIC	?setWriteThrough@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setWriteThrough
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setWriteThrough@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR ; CPageDirectoryEntry::setWriteThrough

; 153  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 154  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L411

; 155  : 		m_iWriteThrough = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 8
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 156  : 	else

	jmp	SHORT $L412
$L411:

; 157  : 		m_iWriteThrough = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -9					; fffffff7H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L412:

; 158  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setWriteThrough@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setWriteThrough
_TEXT	ENDS
PUBLIC	?setCacheDisabled@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setCacheDisabled
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setCacheDisabled@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR ; CPageDirectoryEntry::setCacheDisabled

; 171  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 172  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L417

; 173  : 		m_iCacheDisabled = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 16					; 00000010H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 174  : 	else

	jmp	SHORT $L418
$L417:

; 175  : 		m_iCacheDisabled = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -17				; ffffffefH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L418:

; 176  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setCacheDisabled@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setCacheDisabled
_TEXT	ENDS
PUBLIC	?setAccessed@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setAccessed
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setAccessed@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setAccessed

; 189  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 190  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L423

; 191  : 		m_iAccessed = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 32					; 00000020H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 192  : 	else

	jmp	SHORT $L424
$L423:

; 193  : 		m_iAccessed = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -33				; ffffffdfH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L424:

; 194  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setAccessed@CPageDirectoryEntry@@QAEX_N@Z ENDP		; CPageDirectoryEntry::setAccessed
_TEXT	ENDS
PUBLIC	?setReserved@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setReserved
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setReserved@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setReserved

; 207  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 208  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L429

; 209  : 		m_iReserved = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	edx, 64					; 00000040H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 210  : 	else

	jmp	SHORT $L430
$L429:

; 211  : 		m_iReserved = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, -65				; ffffffbfH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L430:

; 212  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setReserved@CPageDirectoryEntry@@QAEX_N@Z ENDP		; CPageDirectoryEntry::setReserved
_TEXT	ENDS
PUBLIC	?setPageSize@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setPageSize
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setPageSize@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setPageSize

; 225  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 226  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L435

; 227  : 		m_iPageSize = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dl, -128				; ffffff80H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 228  : 	else

	jmp	SHORT $L436
$L435:

; 229  : 		m_iPageSize = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dl, 127					; 0000007fH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L436:

; 230  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPageSize@CPageDirectoryEntry@@QAEX_N@Z ENDP		; CPageDirectoryEntry::setPageSize
_TEXT	ENDS
PUBLIC	?setGlobalPage@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setGlobalPage
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setGlobalPage@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setGlobalPage

; 243  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 244  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L441

; 245  : 		m_iGlobalPage = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dh, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 246  : 	else

	jmp	SHORT $L442
$L441:

; 247  : 		m_iGlobalPage = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dh, -2					; fffffffeH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L442:

; 248  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setGlobalPage@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setGlobalPage
_TEXT	ENDS
PUBLIC	?setAllocated@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setAllocated
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setAllocated@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setAllocated

; 261  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 262  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L447

; 263  : 		m_iAllocated = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dh, 2
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 264  : 	else

	jmp	SHORT $L448
$L447:

; 265  : 		m_iAllocated = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dh, -3					; fffffffdH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L448:

; 266  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setAllocated@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setAllocated
_TEXT	ENDS
PUBLIC	?setFull@CPageDirectoryEntry@@QAEX_N@Z		; CPageDirectoryEntry::setFull
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setFull@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setFull

; 279  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 280  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L453

; 281  : 		m_iFull = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dh, 4
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 282  : 	else

	jmp	SHORT $L454
$L453:

; 283  : 		m_iFull = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dh, -5					; fffffffbH
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L454:

; 284  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setFull@CPageDirectoryEntry@@QAEX_N@Z ENDP		; CPageDirectoryEntry::setFull
_TEXT	ENDS
PUBLIC	?setAvailable@CPageDirectoryEntry@@QAEX_N@Z	; CPageDirectoryEntry::setAvailable
_TEXT	SEGMENT
_bValue$ = 8
_this$ = -4
?setAvailable@CPageDirectoryEntry@@QAEX_N@Z PROC NEAR	; CPageDirectoryEntry::setAvailable

; 297  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 298  : 	if( bValue==true )

	mov	eax, DWORD PTR _bValue$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L459

; 299  : 		m_iAvailable = 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	or	dh, 8
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 300  : 	else

	jmp	SHORT $L460
$L459:

; 301  : 		m_iAvailable = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	dh, -9					; fffffff7H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx
$L460:

; 302  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setAvailable@CPageDirectoryEntry@@QAEX_N@Z ENDP	; CPageDirectoryEntry::setAvailable
_TEXT	ENDS
PUBLIC	?setPageTable@CPageDirectoryEntry@@QAEXK@Z	; CPageDirectoryEntry::setPageTable
_TEXT	SEGMENT
_iPageFrame$ = 8
_this$ = -4
?setPageTable@CPageDirectoryEntry@@QAEXK@Z PROC NEAR	; CPageDirectoryEntry::setPageTable

; 315  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 316  : 	// Set 20-bit page frame of page table.
; 317  : 	m_iPageTableFrame = iPageFrame;

	mov	eax, DWORD PTR _iPageFrame$[ebp]
	and	eax, 1048575				; 000fffffH
	shl	eax, 12					; 0000000cH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	and	edx, 4095				; 00000fffH
	or	edx, eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], edx

; 318  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPageTable@CPageDirectoryEntry@@QAEXK@Z ENDP		; CPageDirectoryEntry::setPageTable
_TEXT	ENDS
END
