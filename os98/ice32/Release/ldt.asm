	TITLE	E:\WORKSHOP\os98\ice32\ldt.cpp
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
;	COMDAT ??_GCLDT@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CLDT@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CLDT@@QAE@PAXG@Z				; CLDT::CLDT
PUBLIC	??_7CLDT@@6B@					; CLDT::`vftable'
PUBLIC	??_GCLDT@@UAEPAXI@Z				; CLDT::`scalar deleting destructor'
PUBLIC	??_ECLDT@@UAEPAXI@Z				; CLDT::`vector deleting destructor'
EXTRN	??0CDescriptorTable@@QAE@PAXG@Z:NEAR		; CDescriptorTable::CDescriptorTable
;	COMDAT ??_7CLDT@@6B@
; File E:\WORKSHOP\os98\ice32\ldt.cpp
CONST	SEGMENT
??_7CLDT@@6B@ DD FLAT:??_ECLDT@@UAEPAXI@Z		; CLDT::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_pBase$ = 8
_iEntries$ = 12
_this$ = -4
??0CLDT@@QAE@PAXG@Z PROC NEAR				; CLDT::CLDT

; 21   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ax, WORD PTR _iEntries$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pBase$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CDescriptorTable@@QAE@PAXG@Z		; CDescriptorTable::CDescriptorTable
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7CLDT@@6B@ ; CLDT::`vftable'

; 22   : 	// Initialise data members.
; 23   : 	m_iSelector = NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	WORD PTR [eax+18], 0

; 24   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CLDT@@QAE@PAXG@Z ENDP				; CLDT::CLDT
_TEXT	ENDS
PUBLIC	??1CLDT@@UAE@XZ					; CLDT::~CLDT
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCLDT@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCLDT@@UAEPAXI@Z PROC NEAR				; CLDT::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CLDT@@UAE@XZ				; CLDT::~CLDT
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L500
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L500:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCLDT@@UAEPAXI@Z ENDP				; CLDT::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CDescriptorTable@@UAE@XZ:NEAR		; CDescriptorTable::~CDescriptorTable
_TEXT	SEGMENT
_this$ = -4
??1CLDT@@UAE@XZ PROC NEAR				; CLDT::~CLDT

; 37   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CLDT@@6B@ ; CLDT::`vftable'

; 38   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDescriptorTable@@UAE@XZ		; CDescriptorTable::~CDescriptorTable
	mov	esp, ebp
	pop	ebp
	ret	0
??1CLDT@@UAE@XZ ENDP					; CLDT::~CLDT
_TEXT	ENDS
PUBLIC	?getLDTSelector@CLDT@@QAEGXZ			; CLDT::getLDTSelector
_TEXT	SEGMENT
_this$ = -4
?getLDTSelector@CLDT@@QAEGXZ PROC NEAR			; CLDT::getLDTSelector

; 51   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 52   : 	// Return selector.
; 53   : 	return m_iSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+18]

; 54   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getLDTSelector@CLDT@@QAEGXZ ENDP			; CLDT::getLDTSelector
_TEXT	ENDS
PUBLIC	?setLDTSelector@CLDT@@QAEXG@Z			; CLDT::setLDTSelector
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -4
?setLDTSelector@CLDT@@QAEXG@Z PROC NEAR			; CLDT::setLDTSelector

; 67   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 68   : 	// Set selector member.
; 69   : 	m_iSelector = iSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iSelector$[ebp]
	mov	WORD PTR [eax+18], cx

; 70   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setLDTSelector@CLDT@@QAEXG@Z ENDP			; CLDT::setLDTSelector
_TEXT	ENDS
END
