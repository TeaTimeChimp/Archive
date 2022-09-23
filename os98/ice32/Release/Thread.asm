	TITLE	E:\WORKSHOP\os98\ice32\Thread.cpp
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
PUBLIC	?m_pClassName@CThread@@0QBDB			; CThread::m_pClassName
PUBLIC	?m_pRing0StackTop@CThread@@0PBXB		; CThread::m_pRing0StackTop
PUBLIC	?m_iRing0StackSize@CThread@@0KB			; CThread::m_iRing0StackSize
PUBLIC	?m_pRing1StackTop@CThread@@0PBXB		; CThread::m_pRing1StackTop
PUBLIC	?m_iRing1StackSize@CThread@@0KB			; CThread::m_iRing1StackSize
PUBLIC	?m_pRing2StackTop@CThread@@0PBXB		; CThread::m_pRing2StackTop
PUBLIC	?m_iRing2StackSize@CThread@@0KB			; CThread::m_iRing2StackSize
PUBLIC	?m_pRing3StackTop@CThread@@0PBXB		; CThread::m_pRing3StackTop
PUBLIC	?m_iRing3StackSize@CThread@@0KB			; CThread::m_iRing3StackSize
CONST	SEGMENT
?m_pClassName@CThread@@0QBDB DB 'Thread::', 00H		; CThread::m_pClassName
	ORG $+3
?m_iRing0StackSize@CThread@@0KB DD 02000H		; CThread::m_iRing0StackSize
?m_iRing1StackSize@CThread@@0KB DD 00H			; CThread::m_iRing1StackSize
?m_iRing2StackSize@CThread@@0KB DD 00H			; CThread::m_iRing2StackSize
?m_iRing3StackSize@CThread@@0KB DD 02000H		; CThread::m_iRing3StackSize
CONST	ENDS
_DATA	SEGMENT
?m_pRing0StackTop@CThread@@0PBXB DD 0ffffe000H		; CThread::m_pRing0StackTop
?m_pRing1StackTop@CThread@@0PBXB DD 0ffffe000H		; CThread::m_pRing1StackTop
?m_pRing2StackTop@CThread@@0PBXB DD 0ffffe000H		; CThread::m_pRing2StackTop
?m_pRing3StackTop@CThread@@0PBXB DD 0ffffc000H		; CThread::m_pRing3StackTop
_DATA	ENDS
PUBLIC	??0CThread@@QAE@XZ				; CThread::CThread
EXTRN	??0CTaskStateSegment@@QAE@XZ:NEAR		; CTaskStateSegment::CTaskStateSegment
_TEXT	SEGMENT
_this$ = -4
??0CThread@@QAE@XZ PROC NEAR				; CThread::CThread

; 27   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CTaskStateSegment@@QAE@XZ		; CTaskStateSegment::CTaskStateSegment

; 28   : 	// Initialise default state.
; 29   : 	m_eState			= TS_STOP;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+104], 3

; 30   : 	m_pTSSDescriptor	= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+108], 0

; 31   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CThread@@QAE@XZ ENDP					; CThread::CThread
_TEXT	ENDS
PUBLIC	??1CThread@@QAE@XZ				; CThread::~CThread
EXTRN	??1CTaskStateSegment@@QAE@XZ:NEAR		; CTaskStateSegment::~CTaskStateSegment
_TEXT	SEGMENT
_this$ = -4
??1CThread@@QAE@XZ PROC NEAR				; CThread::~CThread

; 34   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 35   : 
; 36   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CTaskStateSegment@@QAE@XZ		; CTaskStateSegment::~CTaskStateSegment
	mov	esp, ebp
	pop	ebp
	ret	0
??1CThread@@QAE@XZ ENDP					; CThread::~CThread
_TEXT	ENDS
PUBLIC	?setTSSSelector@CThread@@AAEXG@Z		; CThread::setTSSSelector
PUBLIC	?create@CThread@@QAE_NPAVCProcess@@P6AXXZ@Z	; CThread::create
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?getLDTSelector@CLDT@@QAEGXZ:NEAR		; CLDT::getLDTSelector
EXTRN	?setCurrentStackPointer@CTaskStateSegment@@QAEXGPAX@Z:NEAR ; CTaskStateSegment::setCurrentStackPointer
EXTRN	?setDataSelector@CTaskStateSegment@@QAEXG@Z:NEAR ; CTaskStateSegment::setDataSelector
EXTRN	?setInstructionPointer@CTaskStateSegment@@QAEXGPAX@Z:NEAR ; CTaskStateSegment::setInstructionPointer
EXTRN	?setLDTSelector@CTaskStateSegment@@QAEXG@Z:NEAR	; CTaskStateSegment::setLDTSelector
EXTRN	?setPageDirectoryTable@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z:NEAR ; CTaskStateSegment::setPageDirectoryTable
EXTRN	?setRing0StackPointer@CTaskStateSegment@@QAEXGPAX@Z:NEAR ; CTaskStateSegment::setRing0StackPointer
EXTRN	?setRing1StackPointer@CTaskStateSegment@@QAEXGPAX@Z:NEAR ; CTaskStateSegment::setRing1StackPointer
EXTRN	?setRing2StackPointer@CTaskStateSegment@@QAEXGPAX@Z:NEAR ; CTaskStateSegment::setRing2StackPointer
EXTRN	?getGDT@CCPU@@QAEAAVCGDT@@XZ:NEAR		; CCPU::getGDT
EXTRN	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z:NEAR ; CProcess::allocateMemory
EXTRN	?getCodeSelector@CProcess@@QAEGXZ:NEAR		; CProcess::getCodeSelector
EXTRN	?getDataSelector@CProcess@@QAEGXZ:NEAR		; CProcess::getDataSelector
EXTRN	?getLDT@CProcess@@QAEPAVCLDT@@XZ:NEAR		; CProcess::getLDT
EXTRN	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ:NEAR ; CProcess::getPageDirectoryTable
EXTRN	?getStackSelector@CProcess@@QAEGXZ:NEAR		; CProcess::getStackSelector
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z:NEAR ; CDescriptorTable::addMemoryDescriptor
_TEXT	SEGMENT
_pProcess$ = 8
_pEntryPoint$ = 12
_this$ = -4
?create@CThread@@QAE_NPAVCProcess@@P6AXXZ@Z PROC NEAR	; CThread::create

; 49   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 50   : 	// Set initial state of TSS.
; 51   : 	m_TSS.setPageDirectoryTable( pProcess->getPageDirectoryTable() );

	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ; CProcess::getPageDirectoryTable
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setPageDirectoryTable@CTaskStateSegment@@QAEXPAVCPageDirectoryEntry@@@Z ; CTaskStateSegment::setPageDirectoryTable

; 52   : 	m_TSS.setLDTSelector( pProcess->getLDT()->getLDTSelector() );

	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getLDT@CProcess@@QAEPAVCLDT@@XZ	; CProcess::getLDT
	mov	ecx, eax
	call	?getLDTSelector@CLDT@@QAEGXZ		; CLDT::getLDTSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setLDTSelector@CTaskStateSegment@@QAEXG@Z ; CTaskStateSegment::setLDTSelector

; 53   : 	m_TSS.setRing0StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing0StackTop,m_iRing0StackSize,AT_COMMIT,MT_READ_WRITE) );

	push	3
	push	1
	push	8192					; 00002000H
	mov	eax, DWORD PTR ?m_pRing0StackTop@CThread@@0PBXB ; CThread::m_pRing0StackTop
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getStackSelector@CProcess@@QAEGXZ	; CProcess::getStackSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setRing0StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing0StackPointer

; 54   : 	m_TSS.setRing1StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing1StackTop,m_iRing1StackSize,AT_COMMIT,MT_READ_WRITE) );

	push	3
	push	1
	push	0
	mov	ecx, DWORD PTR ?m_pRing1StackTop@CThread@@0PBXB ; CThread::m_pRing1StackTop
	push	ecx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getStackSelector@CProcess@@QAEGXZ	; CProcess::getStackSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setRing1StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing1StackPointer

; 55   : 	m_TSS.setRing2StackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing2StackTop,m_iRing2StackSize,AT_COMMIT,MT_READ_WRITE) );

	push	3
	push	1
	push	0
	mov	edx, DWORD PTR ?m_pRing2StackTop@CThread@@0PBXB ; CThread::m_pRing2StackTop
	push	edx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getStackSelector@CProcess@@QAEGXZ	; CProcess::getStackSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setRing2StackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setRing2StackPointer

; 56   : 	m_TSS.setCurrentStackPointer( pProcess->getStackSelector(), pProcess->allocateMemory(m_pRing3StackTop,m_iRing3StackSize,AT_COMMIT,MT_READ_WRITE) );

	push	3
	push	1
	push	8192					; 00002000H
	mov	eax, DWORD PTR ?m_pRing3StackTop@CThread@@0PBXB ; CThread::m_pRing3StackTop
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
	push	eax
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getStackSelector@CProcess@@QAEGXZ	; CProcess::getStackSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setCurrentStackPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setCurrentStackPointer

; 57   : 	m_TSS.setDataSelector( pProcess->getDataSelector() );

	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getDataSelector@CProcess@@QAEGXZ	; CProcess::getDataSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDataSelector@CTaskStateSegment@@QAEXG@Z ; CTaskStateSegment::setDataSelector

; 58   : 	m_TSS.setInstructionPointer( pProcess->getCodeSelector(), pEntryPoint );

	mov	ecx, DWORD PTR _pEntryPoint$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getCodeSelector@CProcess@@QAEGXZ	; CProcess::getCodeSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setInstructionPointer@CTaskStateSegment@@QAEXGPAX@Z ; CTaskStateSegment::setInstructionPointer

; 59   : 
; 60   : 	// Create a TSS entry in the GDT for this thread.
; 61   : 	setTSSSelector( Application.getSystem().getCPU().getGDT().addMemoryDescriptor( DT_AVAILABLE_386_TSS, DPL3, &m_TSS, sizeof(m_TSS) ) );

	push	104					; 00000068H
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	push	3
	push	265					; 00000109H
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGDT@CCPU@@QAEAAVCGDT@@XZ		; CCPU::getGDT
	mov	ecx, eax
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setTSSSelector@CThread@@AAEXG@Z	; CThread::setTSSSelector

; 62   : 
; 63   : 	// Always return true (until something could fail).
; 64   : 	return true;

	mov	al, 1

; 65   : }

	mov	esp, ebp
	pop	ebp
	ret	8
?create@CThread@@QAE_NPAVCProcess@@P6AXXZ@Z ENDP	; CThread::create
_TEXT	ENDS
PUBLIC	?getTSSDescriptor@CThread@@QAEPAVCDescriptor@@XZ ; CThread::getTSSDescriptor
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2444	DB	'getTSSDescriptor - Descriptor at 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?getTSSDescriptor@CThread@@QAEPAVCDescriptor@@XZ PROC NEAR ; CThread::getTSSDescriptor

; 78   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 79   : 	// Return pointer to descriptor of TSS within the GDT.
; 80   : 	cout << m_pClassName << "getTSSDescriptor - Descriptor at 0x" << (DWORD)m_pTSSDescriptor << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+108]
	push	ecx
	push	OFFSET FLAT:$SG2444
	push	OFFSET FLAT:?m_pClassName@CThread@@0QBDB ; CThread::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 81   : 	return m_pTSSDescriptor;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+108]

; 82   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getTSSDescriptor@CThread@@QAEPAVCDescriptor@@XZ ENDP	; CThread::getTSSDescriptor
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
PUBLIC	?getTSSSelector@CThread@@QAEGXZ			; CThread::getTSSSelector
_TEXT	SEGMENT
_this$ = -4
?getTSSSelector@CThread@@QAEGXZ PROC NEAR		; CThread::getTSSSelector

; 96   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 97   : 	// Return selector value.
; 98   : 	return m_iTSSSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+112]

; 99   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getTSSSelector@CThread@@QAEGXZ ENDP			; CThread::getTSSSelector
_TEXT	ENDS
PUBLIC	?setBusy@CThread@@QAEX_N@Z			; CThread::setBusy
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z:NEAR ; CDescriptor::setType
_DATA	SEGMENT
$SG2454	DB	'setBusy(', 00H
	ORG $+3
$SG2455	DB	')', 00H
	ORG $+2
$SG2457	DB	'Thread::setBusy - getDescriptor() returned NULL.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_bSet$ = 8
_this$ = -8
_pDescriptor$ = -4
?setBusy@CThread@@QAEX_N@Z PROC NEAR			; CThread::setBusy

; 112  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 113  : 	CDescriptor* pDescriptor;
; 114  : 
; 115  : 	// Choose set or clear.
; 116  : 	cout << m_pClassName << "setBusy(" << (BYTE)bSet << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2455
	mov	al, BYTE PTR _bSet$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2454
	push	OFFSET FLAT:?m_pClassName@CThread@@0QBDB ; CThread::m_pClassName
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

; 117  : 	pDescriptor = getTSSDescriptor();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getTSSDescriptor@CThread@@QAEPAVCDescriptor@@XZ ; CThread::getTSSDescriptor
	mov	DWORD PTR _pDescriptor$[ebp], eax

; 118  : 	if( pDescriptor==NULL )

	cmp	DWORD PTR _pDescriptor$[ebp], 0
	jne	SHORT $L2456

; 120  : 		// Failed to locate TSS descriptor.
; 121  : 		Application.halt( "Thread::setBusy - getDescriptor() returned NULL." );

	push	OFFSET FLAT:$SG2457
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 123  : 	else

	jmp	SHORT $L2460
$L2456:

; 125  : 		if( bSet==false )

	mov	ecx, DWORD PTR _bSet$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L2459

; 127  : 			// Mark thread as available.
; 128  : 			pDescriptor->setType( DT_AVAILABLE_386_TSS );

	push	265					; 00000109H
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ; CDescriptor::setType

; 130  : 		else

	jmp	SHORT $L2460
$L2459:

; 132  : 			// Mark thread as busy.
; 133  : 			pDescriptor->setType( DT_BUSY_386_TSS );

	push	267					; 0000010bH
	mov	ecx, DWORD PTR _pDescriptor$[ebp]
	call	?setType@CDescriptor@@QAEXW4EDescriptorType@@@Z ; CDescriptor::setType
$L2460:

; 136  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setBusy@CThread@@QAEX_N@Z ENDP				; CThread::setBusy
_TEXT	ENDS
PUBLIC	?setReturnThread@CThread@@QAEXPAV1@@Z		; CThread::setReturnThread
EXTRN	?setLink@CTaskStateSegment@@QAEXG@Z:NEAR	; CTaskStateSegment::setLink
_DATA	SEGMENT
	ORG $+3
$SG2466	DB	'CThread::setReturnThread - NULL Pointer.', 00H
	ORG $+3
$SG2469	DB	'setReturnThread(', 00H
	ORG $+3
$SG2470	DB	')', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pReturnThread$ = 8
_this$ = -4
?setReturnThread@CThread@@QAEXPAV1@@Z PROC NEAR		; CThread::setReturnThread

; 149  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 150  : 	// Set link field of the TSS to the selector of the return thread.
; 151  : 	if( pReturnThread==NULL )

	cmp	DWORD PTR _pReturnThread$[ebp], 0
	jne	SHORT $L2465

; 152  : 		Application.halt( "CThread::setReturnThread - NULL Pointer." );

	push	OFFSET FLAT:$SG2466
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 153  : 	else

	jmp	SHORT $L2467
$L2465:

; 155  : 		cout << m_pClassName << "setReturnThread(" << (DWORD)pReturnThread << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2470
	mov	eax, DWORD PTR _pReturnThread$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2469
	push	OFFSET FLAT:?m_pClassName@CThread@@0QBDB ; CThread::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 156  : 		m_TSS.setLink( pReturnThread->getTSSSelector() );

	mov	ecx, DWORD PTR _pReturnThread$[ebp]
	call	?getTSSSelector@CThread@@QAEGXZ		; CThread::getTSSSelector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setLink@CTaskStateSegment@@QAEXG@Z	; CTaskStateSegment::setLink
$L2467:

; 158  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setReturnThread@CThread@@QAEXPAV1@@Z ENDP		; CThread::setReturnThread
_TEXT	ENDS
PUBLIC	?setState@CThread@@QAEXW4EThreadStatus@@@Z	; CThread::setState
_TEXT	SEGMENT
_eState$ = 8
_this$ = -4
?setState@CThread@@QAEXW4EThreadStatus@@@Z PROC NEAR	; CThread::setState

; 171  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 172  : 	// Only allow state change if the thread is stopped.
; 173  : 	if( m_eState==TS_STOP )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+104], 3
	jne	SHORT $L2475

; 174  : 		m_eState = eState;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _eState$[ebp]
	mov	DWORD PTR [ecx+104], edx
$L2475:

; 175  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setState@CThread@@QAEXW4EThreadStatus@@@Z ENDP		; CThread::setState
_TEXT	ENDS
EXTRN	?getGlobalDataSelector@CCPU@@QAEGXZ:NEAR	; CCPU::getGlobalDataSelector
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
EXTRN	?setPointer@CDescriptor@@QAEXGPAX@Z:NEAR	; CDescriptor::setPointer
EXTRN	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z:NEAR ; CDescriptorTable::getDescriptor
_DATA	SEGMENT
	ORG $+2
$SG2480	DB	'setTSSSelector(', 00H
$SG2481	DB	')', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iSelector$ = 8
_this$ = -4
?setTSSSelector@CThread@@AAEXG@Z PROC NEAR		; CThread::setTSSSelector

; 188  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 189  : 	// Set TSS selector member.
; 190  : 	cout << m_pClassName << "setTSSSelector(" << iSelector << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2481
	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2480
	push	OFFSET FLAT:?m_pClassName@CThread@@0QBDB ; CThread::m_pClassName
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

; 191  : 	m_iTSSSelector = iSelector;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dx, WORD PTR _iSelector$[ebp]
	mov	WORD PTR [ecx+112], dx

; 192  : 	m_pTSSDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( iSelector );

	mov	ax, WORD PTR _iSelector$[ebp]
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGDT@CCPU@@QAEAAVCGDT@@XZ		; CCPU::getGDT
	mov	ecx, eax
	call	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+108], eax

; 193  : 	m_pTSSDescriptor->setPointer( Application.getSystem().getCPU().getGlobalDataSelector(), this );

	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGlobalDataSelector@CCPU@@QAEGXZ	; CCPU::getGlobalDataSelector
	push	eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+108]
	call	?setPointer@CDescriptor@@QAEXGPAX@Z	; CDescriptor::setPointer

; 194  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setTSSSelector@CThread@@AAEXG@Z ENDP			; CThread::setTSSSelector
_TEXT	ENDS
END
