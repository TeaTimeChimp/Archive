	TITLE	E:\WORKSHOP\os98\ice32\TaskStateSegment.cpp
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
PUBLIC	??0CTaskStateSegment@@QAE@XZ			; CTaskStateSegment::CTaskStateSegment
_TEXT	SEGMENT
_this$ = -4
??0CTaskStateSegment@@QAE@XZ PROC NEAR			; CTaskStateSegment::CTaskStateSegment

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
??0CTaskStateSegment@@QAE@XZ ENDP			; CTaskStateSegment::CTaskStateSegment
_TEXT	ENDS
PUBLIC	??1CTaskStateSegment@@QAE@XZ			; CTaskStateSegment::~CTaskStateSegment
_TEXT	SEGMENT
_this$ = -4
??1CTaskStateSegment@@QAE@XZ PROC NEAR			; CTaskStateSegment::~CTaskStateSegment

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
??1CTaskStateSegment@@QAE@XZ ENDP			; CTaskStateSegment::~CTaskStateSegment
_TEXT	ENDS
PUBLIC	?getCR3@CTaskStateSegment@@QAEPAVCPageDirectoryEntry@@XZ ; CTaskStateSegment::getCR3
_TEXT	SEGMENT
_this$ = -4
?getCR3@CTaskStateSegment@@QAEPAVCPageDirectoryEntry@@XZ PROC NEAR ; CTaskStateSegment::getCR3

; 33   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 34   : 	// Return pointer to table.
; 35   : 	return (CPageDirectoryTable*)m_iCR3;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+28]

; 36   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getCR3@CTaskStateSegment@@QAEPAVCPageDirectoryEntry@@XZ ENDP ; CTaskStateSegment::getCR3
_TEXT	ENDS
PUBLIC	?setCR3@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z ; CTaskStateSegment::setCR3
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_this$ = -4
?setCR3@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z PROC NEAR ; CTaskStateSegment::setCR3

; 50   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 51   : 	// Set CR3.
; 52   : 	m_iCR3 = (ADDRESS)pPageDirectoryTable;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	mov	DWORD PTR [eax+28], ecx

; 53   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setCR3@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z ENDP ; CTaskStateSegment::setCR3
_TEXT	ENDS
PUBLIC	?setCurrentStackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setCurrentStackPointer
_TEXT	SEGMENT
_iSS$ = 8
_pESP$ = 12
_this$ = -4
?setCurrentStackPointer@CTaskStateSegment@@QAEXGPAX@Z PROC NEAR ; CTaskStateSegment::setCurrentStackPointer

; 66   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 67   : 	// Set IP components.
; 68   : 	m_iSS	= iSS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSS$[ebp]
	mov	WORD PTR [eax+80], cx

; 69   : 	m_iESP	= (OFFSET)pESP;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pESP$[ebp]
	mov	DWORD PTR [edx+56], eax

; 70   : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setCurrentStackPointer@CTaskStateSegment@@QAEXGPAX@Z ENDP ; CTaskStateSegment::setCurrentStackPointer
_TEXT	ENDS
PUBLIC	?setDataSelector@CTaskStateSegment@@QAEXG@Z	; CTaskStateSegment::setDataSelector
_TEXT	SEGMENT
_iDS$ = 8
_this$ = -4
?setDataSelector@CTaskStateSegment@@QAEXG@Z PROC NEAR	; CTaskStateSegment::setDataSelector

; 83   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 84   : 	// Set data selector.
; 85   : 	m_iDS = iDS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iDS$[ebp]
	mov	WORD PTR [eax+84], cx

; 86   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDataSelector@CTaskStateSegment@@QAEXG@Z ENDP	; CTaskStateSegment::setDataSelector
_TEXT	ENDS
PUBLIC	?setInstructionPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setInstructionPointer
_TEXT	SEGMENT
_iCS$ = 8
_pEIP$ = 12
_this$ = -4
?setInstructionPointer@CTaskStateSegment@@QAEXGPAX@Z PROC NEAR ; CTaskStateSegment::setInstructionPointer

; 99   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 100  : 	// Set IP components.
; 101  : 	m_iCS	= iCS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iCS$[ebp]
	mov	WORD PTR [eax+76], cx

; 102  : 	m_iEIP	= (OFFSET)pEIP;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pEIP$[ebp]
	mov	DWORD PTR [edx+32], eax

; 103  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setInstructionPointer@CTaskStateSegment@@QAEXGPAX@Z ENDP ; CTaskStateSegment::setInstructionPointer
_TEXT	ENDS
PUBLIC	?setLDTSelector@CTaskStateSegment@@QAEXG@Z	; CTaskStateSegment::setLDTSelector
_TEXT	SEGMENT
_iLDT$ = 8
_this$ = -4
?setLDTSelector@CTaskStateSegment@@QAEXG@Z PROC NEAR	; CTaskStateSegment::setLDTSelector

; 116  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 117  : 	// Set selector of local descriptor table.
; 118  : 	m_iLDT = iLDT;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iLDT$[ebp]
	mov	WORD PTR [eax+96], cx

; 119  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setLDTSelector@CTaskStateSegment@@QAEXG@Z ENDP		; CTaskStateSegment::setLDTSelector
_TEXT	ENDS
PUBLIC	?setLink@CTaskStateSegment@@QAEXG@Z		; CTaskStateSegment::setLink
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -4
?setLink@CTaskStateSegment@@QAEXG@Z PROC NEAR		; CTaskStateSegment::setLink

; 133  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 134  : 	// Set link field.  
; 135  : 	m_iLink = iSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSelector$[ebp]
	mov	WORD PTR [eax], cx

; 136  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setLink@CTaskStateSegment@@QAEXG@Z ENDP		; CTaskStateSegment::setLink
_TEXT	ENDS
PUBLIC	?setPageDirectoryTable@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z ; CTaskStateSegment::setPageDirectoryTable
_TEXT	SEGMENT
_pPDT$ = 8
_this$ = -4
?setPageDirectoryTable@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z PROC NEAR ; CTaskStateSegment::setPageDirectoryTable

; 149  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 150  : 	// Set CR3 to the page directory table.
; 151  : 	m_iCR3 = (OFFSET)pPDT;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pPDT$[ebp]
	mov	DWORD PTR [eax+28], ecx

; 152  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPageDirectoryTable@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z ENDP ; CTaskStateSegment::setPageDirectoryTable
_TEXT	ENDS
PUBLIC	?setRing0StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing0StackPointer
_TEXT	SEGMENT
_iSS$ = 8
_pESP$ = 12
_this$ = -4
?setRing0StackPointer@CTaskStateSegment@@QAEXGPAX@Z PROC NEAR ; CTaskStateSegment::setRing0StackPointer

; 165  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 166  : 	m_iSS0	= iSS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSS$[ebp]
	mov	WORD PTR [eax+8], cx

; 167  : 	m_iESP0	= (DWORD)pESP;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pESP$[ebp]
	mov	DWORD PTR [edx+4], eax

; 168  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setRing0StackPointer@CTaskStateSegment@@QAEXGPAX@Z ENDP ; CTaskStateSegment::setRing0StackPointer
_TEXT	ENDS
PUBLIC	?setRing1StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing1StackPointer
_TEXT	SEGMENT
_iSS$ = 8
_pESP$ = 12
_this$ = -4
?setRing1StackPointer@CTaskStateSegment@@QAEXGPAX@Z PROC NEAR ; CTaskStateSegment::setRing1StackPointer

; 181  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 182  : 	m_iSS1	= iSS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSS$[ebp]
	mov	WORD PTR [eax+16], cx

; 183  : 	m_iESP1	= (DWORD)pESP;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pESP$[ebp]
	mov	DWORD PTR [edx+12], eax

; 184  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setRing1StackPointer@CTaskStateSegment@@QAEXGPAX@Z ENDP ; CTaskStateSegment::setRing1StackPointer
_TEXT	ENDS
PUBLIC	?setRing2StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing2StackPointer
_TEXT	SEGMENT
_iSS$ = 8
_pESP$ = 12
_this$ = -4
?setRing2StackPointer@CTaskStateSegment@@QAEXGPAX@Z PROC NEAR ; CTaskStateSegment::setRing2StackPointer

; 197  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 198  : 	m_iSS2	= iSS;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSS$[ebp]
	mov	WORD PTR [eax+24], cx

; 199  : 	m_iESP2	= (DWORD)pESP;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pESP$[ebp]
	mov	DWORD PTR [edx+20], eax

; 200  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?setRing2StackPointer@CTaskStateSegment@@QAEXGPAX@Z ENDP ; CTaskStateSegment::setRing2StackPointer
_TEXT	ENDS
END
