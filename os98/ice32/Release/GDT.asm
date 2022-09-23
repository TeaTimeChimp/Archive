	TITLE	E:\WORKSHOP\os98\ice32\GDT.cpp
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
;	COMDAT ??_GCGDT@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CGDT@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CGDT@@QAE@PAXG@Z				; CGDT::CGDT
PUBLIC	??_7CGDT@@6B@					; CGDT::`vftable'
PUBLIC	??_GCGDT@@UAEPAXI@Z				; CGDT::`scalar deleting destructor'
PUBLIC	??_ECGDT@@UAEPAXI@Z				; CGDT::`vector deleting destructor'
EXTRN	??0CDescriptorTable@@QAE@PAXG@Z:NEAR		; CDescriptorTable::CDescriptorTable
;	COMDAT ??_7CGDT@@6B@
; File E:\WORKSHOP\os98\ice32\GDT.cpp
CONST	SEGMENT
??_7CGDT@@6B@ DD FLAT:??_ECGDT@@UAEPAXI@Z		; CGDT::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_pBase$ = 8
_Entries$ = 12
_this$ = -4
??0CGDT@@QAE@PAXG@Z PROC NEAR				; CGDT::CGDT

; 16   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ax, WORD PTR _Entries$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pBase$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CDescriptorTable@@QAE@PAXG@Z		; CDescriptorTable::CDescriptorTable
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx], OFFSET FLAT:??_7CGDT@@6B@ ; CGDT::`vftable'

; 17   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CGDT@@QAE@PAXG@Z ENDP				; CGDT::CGDT
_TEXT	ENDS
PUBLIC	??1CGDT@@UAE@XZ					; CGDT::~CGDT
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCGDT@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCGDT@@UAEPAXI@Z PROC NEAR				; CGDT::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CGDT@@UAE@XZ				; CGDT::~CGDT
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L1195
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L1195:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCGDT@@UAEPAXI@Z ENDP				; CGDT::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CDescriptorTable@@UAE@XZ:NEAR		; CDescriptorTable::~CDescriptorTable
_TEXT	SEGMENT
_this$ = -4
??1CGDT@@UAE@XZ PROC NEAR				; CGDT::~CGDT

; 21   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CGDT@@6B@ ; CGDT::`vftable'

; 22   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDescriptorTable@@UAE@XZ		; CDescriptorTable::~CDescriptorTable
	mov	esp, ebp
	pop	ebp
	ret	0
??1CGDT@@UAE@XZ ENDP					; CGDT::~CGDT
_TEXT	ENDS
PUBLIC	?create@CGDT@@QAEKXZ				; CGDT::create
EXTRN	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ:NEAR ; CDescriptorTable::getBase
EXTRN	?getEntries@CDescriptorTable@@IBEGXZ:NEAR	; CDescriptorTable::getEntries
EXTRN	?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z:NEAR ; CDescriptorTable::setMemoryDescriptor
EXTRN	?create@CDescriptorTable@@QAE?BKXZ:NEAR		; CDescriptorTable::create
_TEXT	SEGMENT
_this$ = -12
_Pointer$ = -8
?create@CGDT@@QAEKXZ PROC NEAR				; CGDT::create

; 35   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 36   : 	SPseudoDescriptor Pointer;
; 37   : 
; 38   : 	// Call inherited create method.
; 39   : 	CDescriptorTable::create();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?create@CDescriptorTable@@QAE?BKXZ	; CDescriptorTable::create

; 40   : 	
; 41   : 	// Add NULL descriptor.
; 42   : 	setMemoryDescriptor( (CDescriptor*)getBase(), DT_READ_ONLY, DPL0, NULL, NULL );

	push	0
	push	0
	push	0
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ ; CDescriptorTable::getBase
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setMemoryDescriptor@CDescriptorTable@@IAEGPAVCDescriptor@@W4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::setMemoryDescriptor

; 43   : 
; 44   : 	// Load GDTR.
; 45   : 	Pointer.iLimit	= (getEntries()<<3)-1;

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getEntries@CDescriptorTable@@IBEGXZ	; CDescriptorTable::getEntries
	and	eax, 65535				; 0000ffffH
	lea	eax, DWORD PTR [eax*8-1]
	mov	WORD PTR _Pointer$[ebp], ax

; 46   : 	Pointer.pBase	= getBase();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getBase@CDescriptorTable@@IBEPBVCDescriptor@@XZ ; CDescriptorTable::getBase
	mov	DWORD PTR _Pointer$[ebp+2], eax

; 47   : #ifndef WIN32
; 48   : 	__asm lgdt Pointer

	lgdt	FWORD PTR _Pointer$[ebp]

; 49   : #endif
; 50   : 
; 51   : 	// Return no error.
; 52   : 	return EC_NONE;

	xor	eax, eax

; 53   : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?create@CGDT@@QAEKXZ ENDP				; CGDT::create
_TEXT	ENDS
END
