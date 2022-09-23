	TITLE	E:\WORKSHOP\os98\ice32\ProcessManager.cpp
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
;	COMDAT ??_GCProcess@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCProcess@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCProcess@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCProcess@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCProcess@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCProcess@@@@QAEXPAVCProcess@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCProcess@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCProcess@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCProcess@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCProcess@@@@QBEPAVCProcess@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCProcess@@@@QAEXPAVCProcess@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCProcess@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCProcess@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCProcess@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCProcess@@@@QAEXPAVCProcess@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCProcess@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCProcess@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCProcess@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCProcess@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7?$TList@PAVCProcess@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCProcess@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CProcessManager@@0QBDB		; CProcessManager::m_pClassName
CONST	SEGMENT
?m_pClassName@CProcessManager@@0QBDB DB 'ProcessManager::', 00H ; CProcessManager::m_pClassName
CONST	ENDS
PUBLIC	??0CProcessManager@@QAE@XZ			; CProcessManager::CProcessManager
_TEXT	SEGMENT
_this$ = -4
??0CProcessManager@@QAE@XZ PROC NEAR			; CProcessManager::CProcessManager

; 34   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 35   : 	// Initialise state.
; 36   : 	m_pProcesses		= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 37   : 	m_pThreadManager	= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], 0

; 38   : 	m_pKernelProcess	= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0

; 39   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CProcessManager@@QAE@XZ ENDP				; CProcessManager::CProcessManager
_TEXT	ENDS
PUBLIC	??1CProcessManager@@QAE@XZ			; CProcessManager::~CProcessManager
_TEXT	SEGMENT
_this$ = -4
??1CProcessManager@@QAE@XZ PROC NEAR			; CProcessManager::~CProcessManager

; 52   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 53   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CProcessManager@@QAE@XZ ENDP				; CProcessManager::~CProcessManager
_TEXT	ENDS
PUBLIC	?getThreadManager@CProcessManager@@AAEAAVCThreadManager@@XZ ; CProcessManager::getThreadManager
PUBLIC	?setKernelProcess@CProcessManager@@AAEXPAVCProcess@@@Z ; CProcessManager::setKernelProcess
PUBLIC	?create@CProcessManager@@QAE_NXZ		; CProcessManager::create
PUBLIC	?createProcess@CProcessManager@@QAEPAVCProcess@@XZ ; CProcessManager::createProcess
PUBLIC	??_7?$TCollection@PAVCProcess@@@@6B@		; TCollection<CProcess *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCProcess@@@@UAEPAXI@Z	; TCollection<CProcess *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCProcess@@@@UAEPAXI@Z	; TCollection<CProcess *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCProcess@@@@UBE?BKXZ		; TList<CProcess *>::count
PUBLIC	?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ ; TList<CProcess *>::first
PUBLIC	?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ ; TList<CProcess *>::last
PUBLIC	??_7?$TList@PAVCProcess@@@@6B@			; TList<CProcess *>::`vftable'
PUBLIC	??_G?$TList@PAVCProcess@@@@UAEPAXI@Z		; TList<CProcess *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCProcess@@@@UAEPAXI@Z		; TList<CProcess *>::`vector deleting destructor'
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??0CThreadManager@@QAE@XZ:NEAR			; CThreadManager::CThreadManager
EXTRN	?create@CThreadManager@@QAE_NXZ:NEAR		; CThreadManager::create
EXTRN	?setKernelThread@CThreadManager@@QAEXPAVCThread@@@Z:NEAR ; CThreadManager::setKernelThread
EXTRN	?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z:NEAR ; CProcess::createThread
;	COMDAT ??_7?$TCollection@PAVCProcess@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.cpp
CONST	SEGMENT
??_7?$TCollection@PAVCProcess@@@@6B@ DD FLAT:??_E?$TCollection@PAVCProcess@@@@UAEPAXI@Z ; TCollection<CProcess *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCProcess@@@@6B@
CONST	SEGMENT
??_7?$TList@PAVCProcess@@@@6B@ DD FLAT:??_E?$TList@PAVCProcess@@@@UAEPAXI@Z ; TList<CProcess *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCProcess@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
	DD	FLAT:?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
CONST	ENDS
_TEXT	SEGMENT
_this$ = -16
_bSuccess$ = -4
$T2700 = -8
$T2703 = -12
?create@CProcessManager@@QAE_NXZ PROC NEAR		; CProcessManager::create

; 66   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 67   : 	bool bSuccess;
; 68   : 
; 69   : 	// Assume failure.
; 70   : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 71   : 
; 72   : 	// Allocate process list.
; 73   : 	m_pProcesses = new TList<CProcess*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2700[ebp], eax
	cmp	DWORD PTR $T2700[ebp], 0
	je	SHORT $L2701
	mov	eax, DWORD PTR $T2700[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCProcess@@@@6B@ ; TCollection<CProcess *>::`vftable'
	mov	ecx, DWORD PTR $T2700[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PAVCProcess@@@@6B@ ; TList<CProcess *>::`vftable'
	mov	edx, DWORD PTR $T2700[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T2700[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T2700[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T2700[ebp]
	mov	DWORD PTR -20+[ebp], edx
	jmp	SHORT $L2702
$L2701:
	mov	DWORD PTR -20+[ebp], 0
$L2702:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -20+[ebp]
	mov	DWORD PTR [eax+4], ecx

; 74   : 	if( m_pProcesses!=NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx+4], 0
	je	SHORT $L2547

; 76   : 		// Allocate thread manager.
; 77   : 		m_pThreadManager = new CThreadManager();

	push	4
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2703[ebp], eax
	cmp	DWORD PTR $T2703[ebp], 0
	je	SHORT $L2704
	mov	ecx, DWORD PTR $T2703[ebp]
	call	??0CThreadManager@@QAE@XZ		; CThreadManager::CThreadManager
	mov	DWORD PTR -24+[ebp], eax
	jmp	SHORT $L2705
$L2704:
	mov	DWORD PTR -24+[ebp], 0
$L2705:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -24+[ebp]
	mov	DWORD PTR [eax], ecx

; 78   : 		if( m_pThreadManager!=NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx], 0
	je	SHORT $L2547

; 80   : 			// Create initial state of thread manager.
; 81   : 			m_pThreadManager->create();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	call	?create@CThreadManager@@QAE_NXZ		; CThreadManager::create

; 82   : 
; 83   : 			// Create a process and thread for the kernel.
; 84   : 			setKernelProcess( createProcess() );

	mov	ecx, DWORD PTR _this$[ebp]
	call	?createProcess@CProcessManager@@QAEPAVCProcess@@XZ ; CProcessManager::createProcess
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setKernelProcess@CProcessManager@@AAEXPAVCProcess@@@Z ; CProcessManager::setKernelProcess

; 85   : 			getThreadManager().setKernelThread( m_pKernelProcess->createThread(NULL) );

	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+8]
	call	?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z ; CProcess::createThread
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getThreadManager@CProcessManager@@AAEAAVCThreadManager@@XZ ; CProcessManager::getThreadManager
	mov	ecx, eax
	call	?setKernelThread@CThreadManager@@QAEXPAVCThread@@@Z ; CThreadManager::setKernelThread

; 86   : 
; 87   : 			// Process manager successfully created.
; 88   : 			bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2547:

; 91   : 
; 92   : 	// Return create success.
; 93   : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 94   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CProcessManager@@QAE_NXZ ENDP			; CProcessManager::create
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	??0CProcess@@QAE@AAVCThreadManager@@@Z:NEAR	; CProcess::CProcess
EXTRN	??1CProcess@@QAE@XZ:NEAR			; CProcess::~CProcess
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?create@CProcess@@QAE_NXZ:NEAR			; CProcess::create
_DATA	SEGMENT
$SG2553	DB	'createProcess() - ', 00H
	ORG $+1
$SG2558	DB	'Process allocated at 0x', 00H
$SG2560	DB	'Success.', 00H
	ORG $+3
$SG2564	DB	'Failed.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -60
_pProcess$ = -4
_pFunctionName$ = -24
$T2715 = -28
$T2718 = -32
$T2719 = -36
$T2735 = -48
$T2739 = -52
_pLink$2741 = -40
$T2746 = -44
$T2757 = -56
?createProcess@CProcessManager@@QAEPAVCProcess@@XZ PROC NEAR ; CProcessManager::createProcess

; 107  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	mov	DWORD PTR _this$[ebp], ecx

; 108  : 	CProcess* pProcess;
; 109  : 	const char pFunctionName[] = "createProcess() - ";

	mov	eax, DWORD PTR $SG2553
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2553+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2553+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2553+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cx, WORD PTR $SG2553+16
	mov	WORD PTR _pFunctionName$[ebp+16], cx
	mov	dl, BYTE PTR $SG2553+18
	mov	BYTE PTR _pFunctionName$[ebp+18], dl

; 110  : 
; 111  : 	// Create new process.
; 112  : 	pProcess = new CProcess( getThreadManager() );

	push	22					; 00000016H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2715[ebp], eax
	cmp	DWORD PTR $T2715[ebp], 0
	je	SHORT $L2716
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getThreadManager@CProcessManager@@AAEAAVCThreadManager@@XZ ; CProcessManager::getThreadManager
	push	eax
	mov	ecx, DWORD PTR $T2715[ebp]
	call	??0CProcess@@QAE@AAVCThreadManager@@@Z	; CProcess::CProcess
	mov	DWORD PTR -64+[ebp], eax
	jmp	SHORT $L2717
$L2716:
	mov	DWORD PTR -64+[ebp], 0
$L2717:
	mov	eax, DWORD PTR -64+[ebp]
	mov	DWORD PTR _pProcess$[ebp], eax

; 113  : 	if( pProcess!=NULL )

	cmp	DWORD PTR _pProcess$[ebp], 0
	je	$L2561

; 115  : 		// Process allocated, create it's initial state.
; 116  : 		cout << m_pClassName << pFunctionName << "Process allocated at 0x" << (DWORD)pProcess << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pProcess$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2558
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CProcessManager@@0QBDB ; CProcessManager::m_pClassName
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

; 117  : 		if(	pProcess->create()==true )

	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?create@CProcess@@QAE_NXZ		; CProcess::create
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	$L2559

; 119  : 			// Insert the process into the process list.
; 120  : 			m_pProcesses->insert( pProcess );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T2757[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2746[ebp], eax
	cmp	DWORD PTR $T2746[ebp], 0
	je	SHORT $L2747
	mov	edx, DWORD PTR $T2746[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T2746[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T2746[ebp]
	mov	DWORD PTR -68+[ebp], ecx
	jmp	SHORT $L2748
$L2747:
	mov	DWORD PTR -68+[ebp], 0
$L2748:
	mov	edx, DWORD PTR -68+[ebp]
	mov	DWORD PTR _pLink$2741[ebp], edx
	cmp	DWORD PTR _pLink$2741[ebp], 0
	je	SHORT $L2740
	mov	eax, DWORD PTR _pLink$2741[ebp]
	mov	ecx, DWORD PTR _pProcess$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T2757[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L2753
	mov	eax, DWORD PTR $T2757[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2735[ebp], ecx
	mov	edx, DWORD PTR $T2735[ebp]
	mov	eax, DWORD PTR _pLink$2741[ebp]
	mov	DWORD PTR [edx+8], eax
$L2753:
	mov	ecx, DWORD PTR $T2757[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2739[ebp], edx
	mov	eax, DWORD PTR _pLink$2741[ebp]
	mov	ecx, DWORD PTR $T2739[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T2757[ebp]
	mov	eax, DWORD PTR _pLink$2741[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T2757[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L2744
	mov	edx, DWORD PTR $T2757[ebp]
	mov	eax, DWORD PTR _pLink$2741[ebp]
	mov	DWORD PTR [edx+12], eax
$L2744:
	mov	ecx, DWORD PTR $T2757[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T2757[ebp]
	mov	DWORD PTR [eax+4], edx
$L2740:

; 121  : 			cout << m_pClassName << pFunctionName << "Success." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2560
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CProcessManager@@0QBDB ; CProcessManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 123  : 		else

	jmp	SHORT $L2561
$L2559:

; 125  : 			// Free failed process.
; 126  : 			delete pProcess;

	mov	edx, DWORD PTR _pProcess$[ebp]
	mov	DWORD PTR $T2719[ebp], edx
	mov	eax, DWORD PTR $T2719[ebp]
	mov	DWORD PTR $T2718[ebp], eax
	cmp	DWORD PTR $T2718[ebp], 0
	je	SHORT $L2720
	mov	ecx, DWORD PTR $T2718[ebp]
	call	??1CProcess@@QAE@XZ			; CProcess::~CProcess
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2759
	mov	edx, DWORD PTR $T2718[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2759:
	mov	eax, DWORD PTR $T2718[ebp]
	mov	DWORD PTR -72+[ebp], eax
	jmp	SHORT $L2721
$L2720:
	mov	DWORD PTR -72+[ebp], 0
$L2721:

; 127  : 			pProcess = NULL;

	mov	DWORD PTR _pProcess$[ebp], 0

; 128  : 			cout << m_pClassName << pFunctionName << "Failed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2564
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CProcessManager@@0QBDB ; CProcessManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2561:

; 131  : 
; 132  : 	// Return process pointer.
; 133  : 	return pProcess;

	mov	eax, DWORD PTR _pProcess$[ebp]

; 134  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?createProcess@CProcessManager@@QAEPAVCProcess@@XZ ENDP	; CProcessManager::createProcess
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
PUBLIC	?getCurrentProcess@CProcessManager@@QAEPAVCProcess@@XZ ; CProcessManager::getCurrentProcess
_TEXT	SEGMENT
_this$ = -4
?getCurrentProcess@CProcessManager@@QAEPAVCProcess@@XZ PROC NEAR ; CProcessManager::getCurrentProcess

; 147  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 148  : 	return NULL;

	xor	eax, eax

; 149  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getCurrentProcess@CProcessManager@@QAEPAVCProcess@@XZ ENDP ; CProcessManager::getCurrentProcess
_this$ = -4
?getThreadManager@CProcessManager@@AAEAAVCThreadManager@@XZ PROC NEAR ; CProcessManager::getThreadManager

; 162  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 163  : 	// Return reference to thread manager.
; 164  : 	return *m_pThreadManager;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax]

; 165  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getThreadManager@CProcessManager@@AAEAAVCThreadManager@@XZ ENDP ; CProcessManager::getThreadManager
_TEXT	ENDS
PUBLIC	?run@CProcessManager@@QAEXXZ			; CProcessManager::run
EXTRN	?run@CThreadManager@@QAEXXZ:NEAR		; CThreadManager::run
_TEXT	SEGMENT
_this$ = -4
?run@CProcessManager@@QAEXXZ PROC NEAR			; CProcessManager::run

; 179  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 180  : 	// Call thread manager to run threads.
; 181  : 	m_pThreadManager->run();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	call	?run@CThreadManager@@QAEXXZ		; CThreadManager::run

; 182  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?run@CProcessManager@@QAEXXZ ENDP			; CProcessManager::run
_TEXT	ENDS
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
_DATA	SEGMENT
$SG2583	DB	'ProcessManager::setKernelProcess(NULL)', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pProcess$ = 8
_this$ = -4
?setKernelProcess@CProcessManager@@AAEXPAVCProcess@@@Z PROC NEAR ; CProcessManager::setKernelProcess

; 195  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 196  : 	if( pProcess==NULL )

	cmp	DWORD PTR _pProcess$[ebp], 0
	jne	SHORT $L2582

; 197  : 		Application.halt( "ProcessManager::setKernelProcess(NULL)" );

	push	OFFSET FLAT:$SG2583
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 198  : 	else

	jmp	SHORT $L2584
$L2582:

; 199  : 		m_pKernelProcess = pProcess;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pProcess$[ebp]
	mov	DWORD PTR [eax+8], ecx
$L2584:

; 200  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setKernelProcess@CProcessManager@@AAEXPAVCProcess@@@Z ENDP ; CProcessManager::setKernelProcess
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCProcess@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCProcess@@@@UBE?BKXZ PROC NEAR	; TList<CProcess *>::count, COMDAT

; 63   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 64   : 	// Return count of items in the list.
; 65   : 	return m_iCount;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]

; 66   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?count@?$TList@PAVCProcess@@@@UBE?BKXZ ENDP		; TList<CProcess *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ PROC NEAR ; TList<CProcess *>::first, COMDAT

; 80   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 81   : 	// Return first node.
; 82   : 	return m_pHead;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+8]

; 83   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?first@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ ENDP ; TList<CProcess *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ PROC NEAR ; TList<CProcess *>::last, COMDAT

; 132  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 133  : 	// Return first node.
; 134  : 	return m_pTail;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 135  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?last@?$TList@PAVCProcess@@@@UBEPBVCNode@?$TCollection@PAVCProcess@@@@XZ ENDP ; TList<CProcess *>::last
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCProcess@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCProcess@@@@UAEPAXI@Z PROC NEAR	; TCollection<CProcess *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCProcess@@@@6B@ ; TCollection<CProcess *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2627
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2627:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCProcess@@@@UAEPAXI@Z ENDP		; TCollection<CProcess *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCProcess@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -40
$T2780 = -4
$T2789 = -24
$T2799 = -28
$T2806 = -32
$T2813 = -36
_pNode$2867 = -8
_pNext$2868 = -12
$T2875 = -16
$T2876 = -20
??_G?$TList@PAVCProcess@@@@UAEPAXI@Z PROC NEAR		; TList<CProcess *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCProcess@@@@6B@ ; TList<CProcess *>::`vftable'
$L2861:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L2860
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T2780[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$2867[ebp], eax
$L2869:
	cmp	DWORD PTR _pNode$2867[ebp], 0
	je	SHORT $L2870
	mov	ecx, DWORD PTR _pNode$2867[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T2789[ebp], edx
	mov	eax, DWORD PTR $T2789[ebp]
	cmp	eax, DWORD PTR $T2780[ebp]
	je	SHORT $L2870
	mov	ecx, DWORD PTR _pNode$2867[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$2867[ebp], edx
	jmp	SHORT $L2869
$L2870:
	cmp	DWORD PTR _pNode$2867[ebp], 0
	je	$L2866
	mov	eax, DWORD PTR _pNode$2867[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$2868[ebp], ecx
	mov	edx, DWORD PTR _pNode$2867[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2799[ebp], eax
	mov	ecx, DWORD PTR $T2799[ebp]
	mov	edx, DWORD PTR _pNext$2868[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$2867[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2806[ebp], ecx
	mov	edx, DWORD PTR _pNext$2868[ebp]
	mov	eax, DWORD PTR $T2806[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$2867[ebp]
	jne	SHORT $L2872
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$2868[ebp]
	mov	DWORD PTR [eax+8], ecx
$L2872:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$2867[ebp]
	jne	SHORT $L2873
	mov	ecx, DWORD PTR _pNode$2867[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2813[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T2813[ebp]
	mov	DWORD PTR [eax+12], ecx
$L2873:
	mov	edx, DWORD PTR _pNode$2867[ebp]
	mov	DWORD PTR $T2876[ebp], edx
	mov	eax, DWORD PTR $T2876[ebp]
	mov	DWORD PTR $T2875[ebp], eax
	cmp	DWORD PTR $T2875[ebp], 0
	je	SHORT $L2877
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2895
	mov	edx, DWORD PTR $T2875[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2895:
	mov	eax, DWORD PTR $T2875[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L2878
$L2877:
	mov	DWORD PTR -44+[ebp], 0
$L2878:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L2866:
	jmp	$L2861
$L2860:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCProcess@@@@6B@ ; TCollection<CProcess *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L2630
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2630:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCProcess@@@@UAEPAXI@Z ENDP		; TList<CProcess *>::`scalar deleting destructor'
_TEXT	ENDS
END
