	TITLE	E:\WORKSHOP\os98\ice32\ThreadManager.cpp
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
;	COMDAT ??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCThread@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCursor@PAVCThread@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCThread@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCThread@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCThread@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCThread@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCThread@@@@QAEXPAVCThread@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCursor@PAVCThread@@@@QAE@AAV?$TCollection@PAVCThread@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PAVCThread@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PAVCThread@@@@QAEQAVCThread@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCThread@@@@QAEQAVCThread@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCThread@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCThread@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCThread@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCThread@@@@QBEPAVCThread@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCThread@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCThread@@@@QAEXPAVCThread@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCThread@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCThread@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCThread@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCThread@@@@QAEXPAVCThread@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCThread@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCThread@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCThread@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7?$TList@PAVCThread@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCThread@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CThreadManager@@0QBDB		; CThreadManager::m_pClassName
PUBLIC	?m_pCurrentThread@CThreadManager@@0PAVCThread@@A ; CThreadManager::m_pCurrentThread
PUBLIC	?m_pMainThread@CThreadManager@@0PAVCThread@@A	; CThreadManager::m_pMainThread
PUBLIC	?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A ; CThreadManager::m_pThreadCursor
PUBLIC	?m_bMultiTaskingEnabled@CThreadManager@@0_NA	; CThreadManager::m_bMultiTaskingEnabled
_BSS	SEGMENT
?m_pCurrentThread@CThreadManager@@0PAVCThread@@A DD 01H DUP (?) ; CThreadManager::m_pCurrentThread
?m_pMainThread@CThreadManager@@0PAVCThread@@A DD 01H DUP (?) ; CThreadManager::m_pMainThread
?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A DD 01H DUP (?) ; CThreadManager::m_pThreadCursor
?m_bMultiTaskingEnabled@CThreadManager@@0_NA DB 01H DUP (?) ; CThreadManager::m_bMultiTaskingEnabled
_BSS	ENDS
CONST	SEGMENT
?m_pClassName@CThreadManager@@0QBDB DB 'ThreadManager::', 00H ; CThreadManager::m_pClassName
CONST	ENDS
PUBLIC	??0CThreadManager@@QAE@XZ			; CThreadManager::CThreadManager
_TEXT	SEGMENT
_this$ = -4
??0CThreadManager@@QAE@XZ PROC NEAR			; CThreadManager::CThreadManager

; 33   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 34   : 	m_pThreads		= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], 0

; 35   : 	m_pThreadCursor = NULL;

	mov	DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A, 0 ; CThreadManager::m_pThreadCursor

; 36   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CThreadManager@@QAE@XZ ENDP				; CThreadManager::CThreadManager
_TEXT	ENDS
PUBLIC	??1CThreadManager@@QAE@XZ			; CThreadManager::~CThreadManager
_TEXT	SEGMENT
_this$ = -4
??1CThreadManager@@QAE@XZ PROC NEAR			; CThreadManager::~CThreadManager

; 39   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 40   : 
; 41   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CThreadManager@@QAE@XZ ENDP				; CThreadManager::~CThreadManager
_TEXT	ENDS
PUBLIC	?create@CThreadManager@@QAE_NXZ			; CThreadManager::create
PUBLIC	??_7?$TCollection@PAVCThread@@@@6B@		; TCollection<CThread *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCThread@@@@UAEPAXI@Z	; TCollection<CThread *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCThread@@@@UAEPAXI@Z	; TCollection<CThread *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCThread@@@@UBE?BKXZ		; TList<CThread *>::count
PUBLIC	?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ ; TList<CThread *>::first
PUBLIC	?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ ; TList<CThread *>::last
PUBLIC	??_7?$TList@PAVCThread@@@@6B@			; TList<CThread *>::`vftable'
PUBLIC	??_G?$TList@PAVCThread@@@@UAEPAXI@Z		; TList<CThread *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCThread@@@@UAEPAXI@Z		; TList<CThread *>::`vector deleting destructor'
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
;	COMDAT ??_7?$TList@PAVCThread@@@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.cpp
CONST	SEGMENT
??_7?$TList@PAVCThread@@@@6B@ DD FLAT:??_E?$TList@PAVCThread@@@@UAEPAXI@Z ; TList<CThread *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCThread@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
	DD	FLAT:?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCThread@@@@6B@
CONST	SEGMENT
??_7?$TCollection@PAVCThread@@@@6B@ DD FLAT:??_E?$TCollection@PAVCThread@@@@UAEPAXI@Z ; TCollection<CThread *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
_this$ = -12
_bSuccess$ = -4
$T2847 = -8
?create@CThreadManager@@QAE_NXZ PROC NEAR		; CThreadManager::create

; 54   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 55   : 	bool bSuccess;
; 56   : 
; 57   : 	// Assume failure.
; 58   : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 59   : 
; 60   : 	// Hook into system timer for pre-emptive context switching.
; 61   : 	//hookTimer();
; 62   : 
; 63   : 	// Allocate list for managing thread objects.
; 64   : 	m_pThreads = new TList<CThread*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2847[ebp], eax
	cmp	DWORD PTR $T2847[ebp], 0
	je	SHORT $L2848
	mov	eax, DWORD PTR $T2847[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCThread@@@@6B@ ; TCollection<CThread *>::`vftable'
	mov	ecx, DWORD PTR $T2847[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PAVCThread@@@@6B@ ; TList<CThread *>::`vftable'
	mov	edx, DWORD PTR $T2847[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T2847[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T2847[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T2847[ebp]
	mov	DWORD PTR -16+[ebp], edx
	jmp	SHORT $L2849
$L2848:
	mov	DWORD PTR -16+[ebp], 0
$L2849:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -16+[ebp]
	mov	DWORD PTR [eax], ecx

; 65   : 	if( m_pThreads!=NULL )

	mov	edx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [edx], 0
	je	SHORT $L2544

; 66   : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2544:

; 67   : 
; 68   : 	// Always return true(for now).
; 69   : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 70   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CThreadManager@@QAE_NXZ ENDP			; CThreadManager::create
_TEXT	ENDS
PUBLIC	?createThreadCursor@CThreadManager@@AAEXXZ	; CThreadManager::createThreadCursor
PUBLIC	?createThread@CThreadManager@@QAEPAVCThread@@PAVCProcess@@P6AXXZ@Z ; CThreadManager::createThread
EXTRN	??0CThread@@QAE@XZ:NEAR				; CThread::CThread
EXTRN	??1CThread@@QAE@XZ:NEAR				; CThread::~CThread
EXTRN	?create@CThread@@QAE_NPAVCProcess@@P6AXXZ@Z:NEAR ; CThread::create
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
_TEXT	SEGMENT
_pProcess$ = 8
_pEntryPoint$ = 12
_this$ = -40
_pThread$ = -4
$T2859 = -8
$T2862 = -12
$T2863 = -16
$T2883 = -28
$T2887 = -32
_pLink$2889 = -20
$T2894 = -24
$T2905 = -36
?createThread@CThreadManager@@QAEPAVCThread@@PAVCProcess@@P6AXXZ@Z PROC NEAR ; CThreadManager::createThread

; 84   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	mov	DWORD PTR _this$[ebp], ecx

; 85   : 	CThread* pThread;
; 86   : 
; 87   : 	// Allocate a new thread object.
; 88   : 	pThread = new CThread();

	push	114					; 00000072H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2859[ebp], eax
	cmp	DWORD PTR $T2859[ebp], 0
	je	SHORT $L2860
	mov	ecx, DWORD PTR $T2859[ebp]
	call	??0CThread@@QAE@XZ			; CThread::CThread
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L2861
$L2860:
	mov	DWORD PTR -44+[ebp], 0
$L2861:
	mov	eax, DWORD PTR -44+[ebp]
	mov	DWORD PTR _pThread$[ebp], eax

; 89   : 	if( pThread!=NULL )

	cmp	DWORD PTR _pThread$[ebp], 0
	je	$L2557

; 91   : 		// Create initial state of thread object.
; 92   : 		if( pThread->create( pProcess, pEntryPoint )==false )

	mov	ecx, DWORD PTR _pEntryPoint$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pProcess$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pThread$[ebp]
	call	?create@CThread@@QAE_NPAVCProcess@@P6AXXZ@Z ; CThread::create
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L2554

; 94   : 			// Rollback thread creation.
; 95   : 			delete pThread;

	mov	eax, DWORD PTR _pThread$[ebp]
	mov	DWORD PTR $T2863[ebp], eax
	mov	ecx, DWORD PTR $T2863[ebp]
	mov	DWORD PTR $T2862[ebp], ecx
	cmp	DWORD PTR $T2862[ebp], 0
	je	SHORT $L2864
	mov	ecx, DWORD PTR $T2862[ebp]
	call	??1CThread@@QAE@XZ			; CThread::~CThread
	mov	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L2867
	mov	eax, DWORD PTR $T2862[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2867:
	mov	ecx, DWORD PTR $T2862[ebp]
	mov	DWORD PTR -48+[ebp], ecx
	jmp	SHORT $L2865
$L2864:
	mov	DWORD PTR -48+[ebp], 0
$L2865:

; 96   : 			pThread = NULL;

	mov	DWORD PTR _pThread$[ebp], 0

; 98   : 		else

	jmp	$L2557
$L2554:

; 100  : 			// Add thread to collection of managed threads.
; 101  : 			m_pThreads->insert( pThread );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR $T2905[ebp], eax
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2894[ebp], eax
	cmp	DWORD PTR $T2894[ebp], 0
	je	SHORT $L2895
	mov	ecx, DWORD PTR $T2894[ebp]
	mov	DWORD PTR [ecx+8], 0
	mov	edx, DWORD PTR $T2894[ebp]
	mov	DWORD PTR [edx+4], 0
	mov	eax, DWORD PTR $T2894[ebp]
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L2896
$L2895:
	mov	DWORD PTR -52+[ebp], 0
$L2896:
	mov	ecx, DWORD PTR -52+[ebp]
	mov	DWORD PTR _pLink$2889[ebp], ecx
	cmp	DWORD PTR _pLink$2889[ebp], 0
	je	SHORT $L2888
	mov	edx, DWORD PTR _pLink$2889[ebp]
	mov	eax, DWORD PTR _pThread$[ebp]
	mov	DWORD PTR [edx], eax
	mov	ecx, DWORD PTR $T2905[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L2901
	mov	edx, DWORD PTR $T2905[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T2883[ebp], eax
	mov	ecx, DWORD PTR $T2883[ebp]
	mov	edx, DWORD PTR _pLink$2889[ebp]
	mov	DWORD PTR [ecx+8], edx
$L2901:
	mov	eax, DWORD PTR $T2905[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2887[ebp], ecx
	mov	edx, DWORD PTR _pLink$2889[ebp]
	mov	eax, DWORD PTR $T2887[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T2905[ebp]
	mov	edx, DWORD PTR _pLink$2889[ebp]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR $T2905[ebp]
	cmp	DWORD PTR [eax+12], 0
	jne	SHORT $L2892
	mov	ecx, DWORD PTR $T2905[ebp]
	mov	edx, DWORD PTR _pLink$2889[ebp]
	mov	DWORD PTR [ecx+12], edx
$L2892:
	mov	eax, DWORD PTR $T2905[ebp]
	mov	ecx, DWORD PTR [eax+4]
	add	ecx, 1
	mov	edx, DWORD PTR $T2905[ebp]
	mov	DWORD PTR [edx+4], ecx
$L2888:

; 102  : 			createThreadCursor();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?createThreadCursor@CThreadManager@@AAEXXZ ; CThreadManager::createThreadCursor
$L2557:

; 105  : 
; 106  : 	// Return pointer to new thread object.
; 107  : 	return pThread;

	mov	eax, DWORD PTR _pThread$[ebp]

; 108  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?createThread@CThreadManager@@QAEPAVCThread@@PAVCProcess@@P6AXXZ@Z ENDP ; CThreadManager::createThread
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?m_bDebug@?$TCursor@PAVCThread@@@@0_NB		; TCursor<CThread *>::m_bDebug
PUBLIC	??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
PUBLIC	??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
PUBLIC	??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
PUBLIC	??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
PUBLIC	??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
PUBLIC	??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
;	COMDAT ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCollection.h
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCThread@@@@0_NB DB 00H		; TCursor<CThread *>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
$SG2591	DB	'createThreadCursor()', 00H
_DATA	ENDS
;	COMDAT ??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@
_DATA	SEGMENT
??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ DB 'TCursor cr'
	DB	'eated on NULL - Halt.', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@
_DATA	SEGMENT
??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ DB 'TCursor<I'
	DB	'temType>::TCursor - First at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@
_DATA	SEGMENT
??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ DB 'TCursor<I'
	DB	'temType>::TCursor - Last at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@
_DATA	SEGMENT
??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ DB 'TCursor<I'
	DB	'temType>::TCursor - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@
_DATA	SEGMENT
??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ DB 'TCursor<I'
	DB	'temType>::first - First at 0x', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@
_DATA	SEGMENT
??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ DB 'TCursor<I'
	DB	'temType>::first - Current at 0x', 00H	; `string'
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -28
$T2907 = -4
$T2908 = -8
$T2911 = -12
$T2932 = -16
_Item$2938 = -20
$T2946 = -24
?createThreadCursor@CThreadManager@@AAEXXZ PROC NEAR	; CThreadManager::createThreadCursor

; 121  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H
	mov	DWORD PTR _this$[ebp], ecx

; 122  : 	// Delete current thread cursor.
; 123  : 	delete m_pThreadCursor;

	mov	eax, DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A ; CThreadManager::m_pThreadCursor
	mov	DWORD PTR $T2908[ebp], eax
	mov	ecx, DWORD PTR $T2908[ebp]
	mov	DWORD PTR $T2907[ebp], ecx
	cmp	DWORD PTR $T2907[ebp], 0
	je	SHORT $L2909
	mov	edx, 1
	and	edx, 1
	test	edx, edx
	je	SHORT $L2918
	mov	eax, DWORD PTR $T2907[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2918:
	mov	ecx, DWORD PTR $T2907[ebp]
	mov	DWORD PTR -32+[ebp], ecx
	jmp	SHORT $L2910
$L2909:
	mov	DWORD PTR -32+[ebp], 0
$L2910:

; 124  : 
; 125  : 	// Allocate a new thread cursor.
; 126  : 	m_pThreadCursor = new TCursor<CThread*>(*m_pThreads);

	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2911[ebp], eax
	cmp	DWORD PTR $T2911[ebp], 0
	je	$L2912
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR $T2932[ebp], eax
	cmp	DWORD PTR $T2932[ebp], 0
	jne	SHORT $L2927
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2926:
	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L2927
	jmp	SHORT $L2926
$L2927:
	mov	edx, DWORD PTR $T2932[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR $T2932[ebp]
	call	DWORD PTR [eax+8]
	mov	ecx, DWORD PTR $T2911[ebp]
	mov	DWORD PTR [ecx], eax
	mov	edx, DWORD PTR $T2932[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR $T2932[ebp]
	call	DWORD PTR [eax+12]
	mov	ecx, DWORD PTR $T2911[ebp]
	mov	DWORD PTR [ecx+4], eax
	mov	edx, DWORD PTR $T2911[ebp]
	mov	eax, DWORD PTR $T2911[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR [edx+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	edx, edx
	je	SHORT $L2928
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR $T2911[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2928:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	edx, edx
	je	SHORT $L2929
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR $T2911[ebp]
	mov	ecx, DWORD PTR [eax+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2929:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	edx, edx
	je	SHORT $L2924
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR $T2911[ebp]
	mov	ecx, DWORD PTR [eax+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2924:
	mov	edx, DWORD PTR $T2911[ebp]
	mov	DWORD PTR -36+[ebp], edx
	jmp	SHORT $L2913
$L2912:
	mov	DWORD PTR -36+[ebp], 0
$L2913:
	mov	eax, DWORD PTR -36+[ebp]
	mov	DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A, eax ; CThreadManager::m_pThreadCursor

; 127  : 	if( m_pThreadCursor!=NULL )

	cmp	DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A, 0 ; CThreadManager::m_pThreadCursor
	je	$L2937

; 129  : 		// Start cursor, else getNextThread doesn't call 'first'.
; 130  : 		cout << m_pClassName << "createThreadCursor()" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2591
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 131  : 		m_pThreadCursor->first();

	mov	ecx, DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A ; CThreadManager::m_pThreadCursor
	mov	DWORD PTR $T2946[ebp], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	edx, edx
	je	SHORT $L2939
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR $T2946[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2939:
	mov	edx, DWORD PTR $T2946[ebp]
	cmp	DWORD PTR [edx], 0
	jne	SHORT $L2940
	mov	eax, DWORD PTR $T2946[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	DWORD PTR _Item$2938[ebp], 0
	jmp	SHORT $L2937
$L2940:
	mov	ecx, DWORD PTR $T2946[ebp]
	mov	edx, DWORD PTR $T2946[ebp]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR [ecx+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2942
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR $T2946[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2942:
	mov	ecx, DWORD PTR $T2946[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx]
	mov	DWORD PTR _Item$2938[ebp], eax
$L2937:

; 133  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?createThreadCursor@CThreadManager@@AAEXXZ ENDP		; CThreadManager::createThreadCursor
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
PUBLIC	?getCurrentThread@CThreadManager@@SAPAVCThread@@XZ ; CThreadManager::getCurrentThread
_DATA	SEGMENT
	ORG $+3
$SG2599	DB	'getCurrentThread = 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
?getCurrentThread@CThreadManager@@SAPAVCThread@@XZ PROC NEAR ; CThreadManager::getCurrentThread

; 146  : {

	push	ebp
	mov	ebp, esp

; 147  : 	// Return pointer to current thread object.
; 148  : 	cout << m_pClassName << "getCurrentThread = 0x" << (DWORD)m_pCurrentThread << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR ?m_pCurrentThread@CThreadManager@@0PAVCThread@@A ; CThreadManager::m_pCurrentThread
	push	eax
	push	OFFSET FLAT:$SG2599
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 149  : 	return m_pCurrentThread;

	mov	eax, DWORD PTR ?m_pCurrentThread@CThreadManager@@0PAVCThread@@A ; CThreadManager::m_pCurrentThread

; 150  : }

	pop	ebp
	ret	0
?getCurrentThread@CThreadManager@@SAPAVCThread@@XZ ENDP	; CThreadManager::getCurrentThread
_TEXT	ENDS
PUBLIC	?getMainThread@CThreadManager@@CAPAVCThread@@XZ	; CThreadManager::getMainThread
_DATA	SEGMENT
	ORG $+2
$SG2603	DB	'getMainThread - Main thread is 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
?getMainThread@CThreadManager@@CAPAVCThread@@XZ PROC NEAR ; CThreadManager::getMainThread

; 164  : {

	push	ebp
	mov	ebp, esp

; 165  : 	// Return pointer to main thread object.
; 166  : 	cout << m_pClassName << "getMainThread - Main thread is 0x" << (DWORD)m_pMainThread << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR ?m_pMainThread@CThreadManager@@0PAVCThread@@A ; CThreadManager::m_pMainThread
	push	eax
	push	OFFSET FLAT:$SG2603
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 167  : 	return m_pMainThread;

	mov	eax, DWORD PTR ?m_pMainThread@CThreadManager@@0PAVCThread@@A ; CThreadManager::m_pMainThread

; 168  : }

	pop	ebp
	ret	0
?getMainThread@CThreadManager@@CAPAVCThread@@XZ ENDP	; CThreadManager::getMainThread
_TEXT	ENDS
PUBLIC	?getMultiTaskingEnabled@CThreadManager@@CA_NXZ	; CThreadManager::getMultiTaskingEnabled
_TEXT	SEGMENT
?getMultiTaskingEnabled@CThreadManager@@CA_NXZ PROC NEAR ; CThreadManager::getMultiTaskingEnabled

; 181  : {

	push	ebp
	mov	ebp, esp

; 182  : 	// Return multi-tasking flag.
; 183  : 	return m_bMultiTaskingEnabled;

	mov	al, BYTE PTR ?m_bMultiTaskingEnabled@CThreadManager@@0_NA ; CThreadManager::m_bMultiTaskingEnabled

; 184  : }

	pop	ebp
	ret	0
?getMultiTaskingEnabled@CThreadManager@@CA_NXZ ENDP	; CThreadManager::getMultiTaskingEnabled
_TEXT	ENDS
PUBLIC	?getNextThread@CThreadManager@@CAPAVCThread@@XZ	; CThreadManager::getNextThread
PUBLIC	??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
_DATA	SEGMENT
	ORG $+2
$SG2610	DB	'getNextThread - ', 00H
	ORG $+3
$SG2612	DB	'No thread cursor.', 00H
	ORG $+2
$SG2616	DB	'First thread=0x', 00H
$SG2619	DB	'Next thread=0x', 00H
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
; File E:\WORKSHOP\os98\ice32\TCollection.h
_DATA	SEGMENT
??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ DB 'TCursor<I'
	DB	'temType>::next - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@
_DATA	SEGMENT
??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ DB 'TCursor<'
	DB	'ItemType>::next - Next at 0x', 00H		; `string'
_DATA	ENDS
_TEXT	SEGMENT
_pThread$ = -24
_pFunctionName$ = -20
$T2957 = -32
_Next$2962 = -28
$T2972 = -36
_Item$2978 = -40
$T2986 = -44
?getNextThread@CThreadManager@@CAPAVCThread@@XZ PROC NEAR ; CThreadManager::getNextThread

; 197  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH

; 198  : 	CThread* pThread;
; 199  : 	const char pFunctionName[] = "getNextThread - ";

	mov	eax, DWORD PTR $SG2610
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2610+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2610+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2610+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cl, BYTE PTR $SG2610+16
	mov	BYTE PTR _pFunctionName$[ebp+16], cl

; 200  : 
; 201  : 	// Verify cursor existance.
; 202  : 	if( m_pThreadCursor==NULL )

	cmp	DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A, 0 ; CThreadManager::m_pThreadCursor
	jne	SHORT $L2611

; 204  : 		cout << m_pClassName << pFunctionName << "No thread cursor." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2612
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 205  : 		pThread = NULL;

	mov	DWORD PTR _pThread$[ebp], 0

; 207  : 	else

	jmp	$L2617
$L2611:

; 209  : 		// Return next thread looping to first at end.
; 210  : 		pThread = m_pThreadCursor->next();

	mov	eax, DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A ; CThreadManager::m_pThreadCursor
	mov	DWORD PTR $T2972[ebp], eax
	mov	DWORD PTR _Next$2962[ebp], 0
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2963
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR $T2972[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2963:
	mov	ecx, DWORD PTR $T2972[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L2961
	mov	edx, DWORD PTR $T2972[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T2957[ebp], ecx
	mov	edx, DWORD PTR $T2972[ebp]
	mov	eax, DWORD PTR $T2957[ebp]
	mov	DWORD PTR [edx+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2965
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR $T2972[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2965:
	mov	ecx, DWORD PTR $T2972[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L2961
	mov	edx, DWORD PTR $T2972[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Next$2962[ebp], ecx
$L2961:
	mov	edx, DWORD PTR _Next$2962[ebp]
	mov	DWORD PTR _pThread$[ebp], edx

; 211  : 		if( pThread == NULL )

	cmp	DWORD PTR _pThread$[ebp], 0
	jne	$L2614

; 213  : 			pThread = m_pThreadCursor->first();

	mov	eax, DWORD PTR ?m_pThreadCursor@CThreadManager@@0PAV?$TCursor@PAVCThread@@@@A ; CThreadManager::m_pThreadCursor
	mov	DWORD PTR $T2986[ebp], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L2979
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR $T2986[ebp]
	mov	eax, DWORD PTR [edx]
	push	eax
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2979:
	mov	ecx, DWORD PTR $T2986[ebp]
	cmp	DWORD PTR [ecx], 0
	jne	SHORT $L2980
	mov	edx, DWORD PTR $T2986[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	DWORD PTR _Item$2978[ebp], 0
	jmp	SHORT $L2977
$L2980:
	mov	eax, DWORD PTR $T2986[ebp]
	mov	ecx, DWORD PTR $T2986[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR [eax+8], edx
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCThread@@@@0_NB ; TCursor<CThread *>::m_bDebug
	test	eax, eax
	je	SHORT $L2982
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR $T2986[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2982:
	mov	eax, DWORD PTR $T2986[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Item$2978[ebp], edx
$L2977:
	mov	eax, DWORD PTR _Item$2978[ebp]
	mov	DWORD PTR _pThread$[ebp], eax

; 214  : 			cout << m_pClassName << pFunctionName << "First thread=0x" << (DWORD)pThread << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pThread$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2616
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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

; 216  : 		else

	jmp	SHORT $L2617
$L2614:

; 217  : 			cout << m_pClassName << pFunctionName << "Next thread=0x" << (DWORD)pThread << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pThread$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2619
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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
$L2617:

; 219  : 
; 220  : 	// Return pointer to next thread object.
; 221  : 	return pThread;

	mov	eax, DWORD PTR _pThread$[ebp]

; 222  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getNextThread@CThreadManager@@CAPAVCThread@@XZ ENDP	; CThreadManager::getNextThread
_TEXT	ENDS
PUBLIC	?hookTimer@CThreadManager@@AAEXXZ		; CThreadManager::hookTimer
PUBLIC	?timerISRHandler@CThreadManager@@CAXXZ		; CThreadManager::timerISRHandler
EXTRN	?getIDT@CCPU@@QAEAAVCIDT@@XZ:NEAR		; CCPU::getIDT
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?registerHandler@CIDT@@QAEXEP6AXXZ@Z:NEAR	; CIDT::registerHandler
EXTRN	?irqToInt@CPIC@@QBE?BEE@Z:NEAR			; CPIC::irqToInt
EXTRN	?getIRQ@CTimer@@QBE?BEXZ:NEAR			; CTimer::getIRQ
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?getPIC@CSystem@@QAEAAVCPIC@@XZ:NEAR		; CSystem::getPIC
EXTRN	?getTimer@CSystem@@QAEAAVCTimer@@XZ:NEAR	; CSystem::getTimer
_TEXT	SEGMENT
_this$ = -20
_System$ = -16
_IDT$ = -12
_PIC$ = -8
_Timer$ = -4
?hookTimer@CThreadManager@@AAEXXZ PROC NEAR		; CThreadManager::hookTimer

; 236  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 237  : 	CSystem&	System	= Application.getSystem();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	DWORD PTR _System$[ebp], eax

; 238  : 	CIDT&		IDT		= System.getCPU().getIDT();

	mov	ecx, DWORD PTR _System$[ebp]
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getIDT@CCPU@@QAEAAVCIDT@@XZ		; CCPU::getIDT
	mov	DWORD PTR _IDT$[ebp], eax

; 239  : 	CPIC&		PIC		= System.getPIC();

	mov	ecx, DWORD PTR _System$[ebp]
	call	?getPIC@CSystem@@QAEAAVCPIC@@XZ		; CSystem::getPIC
	mov	DWORD PTR _PIC$[ebp], eax

; 240  : 	CTimer&		Timer	= System.getTimer();

	mov	ecx, DWORD PTR _System$[ebp]
	call	?getTimer@CSystem@@QAEAAVCTimer@@XZ	; CSystem::getTimer
	mov	DWORD PTR _Timer$[ebp], eax

; 241  : 
; 242  : 	// Register timer handler.
; 243  : 	IDT.registerHandler( PIC.irqToInt(Timer.getIRQ()), CThreadManager::timerISRHandler );

	push	OFFSET FLAT:?timerISRHandler@CThreadManager@@CAXXZ ; CThreadManager::timerISRHandler
	mov	ecx, DWORD PTR _Timer$[ebp]
	call	?getIRQ@CTimer@@QBE?BEXZ		; CTimer::getIRQ
	push	eax
	mov	ecx, DWORD PTR _PIC$[ebp]
	call	?irqToInt@CPIC@@QBE?BEE@Z		; CPIC::irqToInt
	push	eax
	mov	ecx, DWORD PTR _IDT$[ebp]
	call	?registerHandler@CIDT@@QAEXEP6AXXZ@Z	; CIDT::registerHandler

; 244  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?hookTimer@CThreadManager@@AAEXXZ ENDP			; CThreadManager::hookTimer
_TEXT	ENDS
PUBLIC	?resumeThread@CThreadManager@@CAXPAVCThread@@@Z	; CThreadManager::resumeThread
EXTRN	?getTSSSelector@CThread@@QAEGXZ:NEAR		; CThread::getTSSSelector
EXTRN	?setBusy@CThread@@QAEX_N@Z:NEAR			; CThread::setBusy
EXTRN	?setReturnThread@CThread@@QAEXPAV1@@Z:NEAR	; CThread::setReturnThread
EXTRN	?setCS@CCPU@@QAEXG@Z:NEAR			; CCPU::setCS
EXTRN	?setNT@CCPU@@QAEX_N@Z:NEAR			; CCPU::setNT
_DATA	SEGMENT
	ORG $+1
$SG2632	DB	'resumeThread - ', 00H
$SG2634	DB	'At 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pNextThread$ = 8
_pCurrentThread$ = -20
_pFunctionName$ = -16
?resumeThread@CThreadManager@@CAXPAVCThread@@@Z PROC NEAR ; CThreadManager::resumeThread

; 257  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H

; 258  : 	CThread* pCurrentThread;
; 259  : 	const char pFunctionName[] = "resumeThread - ";

	mov	eax, DWORD PTR $SG2632
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2632+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2632+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2632+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax

; 260  : 
; 261  : 	cout << m_pClassName << pFunctionName << "At 0x" << (DWORD)pNextThread << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pNextThread$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2634
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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

; 262  : 
; 263  : 	// Get pointer to current thread object.
; 264  : 	pCurrentThread = getCurrentThread();

	call	?getCurrentThread@CThreadManager@@SAPAVCThread@@XZ ; CThreadManager::getCurrentThread
	mov	DWORD PTR _pCurrentThread$[ebp], eax

; 265  : 
; 266  : 	// If the current task is the same as the next task then
; 267  : 	// don't task switch, since the next(this) task's LINK
; 268  : 	// field has been set to KernelTSS and would send us to
; 269  : 	// the 'ThreadMonitor' for termination.
; 270  : 	if( pNextThread!=pCurrentThread )

	mov	eax, DWORD PTR _pNextThread$[ebp]
	cmp	eax, DWORD PTR _pCurrentThread$[ebp]
	je	SHORT $L2635

; 272  : 
; 273  : 		// Make the thread we want to switch to the current thread's return thread.
; 274  : 		// By returning from this thread we make the switch into the desired thread.
; 275  : 		pCurrentThread->setReturnThread( pNextThread );

	mov	ecx, DWORD PTR _pNextThread$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pCurrentThread$[ebp]
	call	?setReturnThread@CThread@@QAEXPAV1@@Z	; CThread::setReturnThread

; 276  : 
; 277  : 		// Set next task type to 'Busy 386 TSS' to allow outward task switch.
; 278  : 		pNextThread->setBusy( true );

	push	1
	mov	ecx, DWORD PTR _pNextThread$[ebp]
	call	?setBusy@CThread@@QAEX_N@Z		; CThread::setBusy

; 279  : 
; 280  : 		// Set return thread to the kernel's thread. When the thread
; 281  : 		// terminates it will be return to the scheduling loop.
; 282  : 		pNextThread->setReturnThread( getMainThread() );

	call	?getMainThread@CThreadManager@@CAPAVCThread@@XZ ; CThreadManager::getMainThread
	push	eax
	mov	ecx, DWORD PTR _pNextThread$[ebp]
	call	?setReturnThread@CThread@@QAEXPAV1@@Z	; CThread::setReturnThread

; 283  : 
; 284  : 		// Set NT=1 for nested task return.
; 285  : 		Application.getSystem().getCPU().setNT( true );

	push	1
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setNT@CCPU@@QAEX_N@Z			; CCPU::setNT
$L2635:

; 287  : 
; 288  : 	// Place next ISR address on stack.
; 289  : 	Application.getSystem().getCPU().setCS( pNextThread->getTSSSelector() );

	mov	ecx, DWORD PTR _pNextThread$[ebp]
	call	?getTSSSelector@CThread@@QAEGXZ		; CThread::getTSSSelector
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setCS@CCPU@@QAEXG@Z			; CCPU::setCS

; 290  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?resumeThread@CThreadManager@@CAXPAVCThread@@@Z ENDP	; CThreadManager::resumeThread
_TEXT	ENDS
PUBLIC	?run@CThreadManager@@QAEXXZ			; CThreadManager::run
_DATA	SEGMENT
	ORG $+2
$SG2641	DB	'run - ', 00H
	ORG $+1
$SG2642	DB	'Starting with ', 00H
	ORG $+1
$SG2643	DB	' threads.', 00H
	ORG $+2
$SG2647	DB	'All threads have terminated.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -16
_pThread$ = -12
_pFunctionName$ = -8
?run@CThreadManager@@QAEXXZ PROC NEAR			; CThreadManager::run

; 304  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 305  : 	CThread* pThread;
; 306  : 	const char pFunctionName[] = "run - ";

	mov	eax, DWORD PTR $SG2641
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	cx, WORD PTR $SG2641+4
	mov	WORD PTR _pFunctionName$[ebp+4], cx
	mov	dl, BYTE PTR $SG2641+6
	mov	BYTE PTR _pFunctionName$[ebp+6], dl

; 307  : 
; 308  : 	// Loop while there are still threads left.
; 309  : 	cout << m_pClassName << pFunctionName << "Starting with " << m_pThreads->count() << " threads." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2643
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	edx, DWORD PTR [eax]
	call	DWORD PTR [edx+4]
	push	eax
	push	OFFSET FLAT:$SG2642
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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
$L2645:

; 310  : 	while( m_pThreads->count()>0 )

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	edx, DWORD PTR [eax]
	call	DWORD PTR [edx+4]
	test	eax, eax
	jbe	SHORT $L2646

; 312  : 		// Iterate through all threads.
; 313  : 		pThread = getNextThread();

	call	?getNextThread@CThreadManager@@CAPAVCThread@@XZ ; CThreadManager::getNextThread
	mov	DWORD PTR _pThread$[ebp], eax

; 314  : 		
; 315  : 		// Resume execution of thread.
; 316  : 		resumeThread( pThread );

	mov	eax, DWORD PTR _pThread$[ebp]
	push	eax
	call	?resumeThread@CThreadManager@@CAXPAVCThread@@@Z ; CThreadManager::resumeThread
	add	esp, 4

; 317  : 	}

	jmp	SHORT $L2645
$L2646:

; 318  : 	cout << m_pClassName << pFunctionName << "All threads have terminated." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2647
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 319  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?run@CThreadManager@@QAEXXZ ENDP			; CThreadManager::run
_TEXT	ENDS
PUBLIC	?setCurrentThread@CThreadManager@@AAEXPAVCThread@@@Z ; CThreadManager::setCurrentThread
EXTRN	?halt@CApplication@@QBEXPAD@Z:NEAR		; CApplication::halt
_DATA	SEGMENT
	ORG $+3
$SG2653	DB	'setCurrentThread(0x', 00H
$SG2654	DB	')', 00H
	ORG $+2
$SG2656	DB	'NULL Pointer', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pThread$ = 8
_this$ = -4
?setCurrentThread@CThreadManager@@AAEXPAVCThread@@@Z PROC NEAR ; CThreadManager::setCurrentThread

; 332  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 333  : 	// Set main thread pointer.
; 334  : 	cout << m_pClassName << "setCurrentThread(0x" << (DWORD)pThread << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2654
	mov	eax, DWORD PTR _pThread$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2653
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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

; 335  : 	if( pThread==NULL )

	cmp	DWORD PTR _pThread$[ebp], 0
	jne	SHORT $L2655

; 336  : 		Application.halt( "NULL Pointer" );

	push	OFFSET FLAT:$SG2656
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 337  : 	else

	jmp	SHORT $L2657
$L2655:

; 338  : 		m_pCurrentThread = pThread;

	mov	ecx, DWORD PTR _pThread$[ebp]
	mov	DWORD PTR ?m_pCurrentThread@CThreadManager@@0PAVCThread@@A, ecx ; CThreadManager::m_pCurrentThread
$L2657:

; 339  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setCurrentThread@CThreadManager@@AAEXPAVCThread@@@Z ENDP ; CThreadManager::setCurrentThread
_TEXT	ENDS
PUBLIC	?setKernelThread@CThreadManager@@QAEXPAVCThread@@@Z ; CThreadManager::setKernelThread
_DATA	SEGMENT
	ORG $+3
$SG2663	DB	'setKernelThread(0x', 00H
	ORG $+1
$SG2664	DB	')', 00H
	ORG $+2
$SG2666	DB	'NULL Pointer', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pThread$ = 8
_this$ = -4
?setKernelThread@CThreadManager@@QAEXPAVCThread@@@Z PROC NEAR ; CThreadManager::setKernelThread

; 352  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 353  : 	// Set main thread pointer.
; 354  : 	cout << m_pClassName << "setKernelThread(0x" << (DWORD)pThread << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2664
	mov	eax, DWORD PTR _pThread$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2663
	push	OFFSET FLAT:?m_pClassName@CThreadManager@@0QBDB ; CThreadManager::m_pClassName
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

; 355  : 	if( pThread==NULL )

	cmp	DWORD PTR _pThread$[ebp], 0
	jne	SHORT $L2665

; 356  : 		Application.halt( "NULL Pointer" );

	push	OFFSET FLAT:$SG2666
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 357  : 	else

	jmp	SHORT $L2667
$L2665:

; 359  : 		m_pMainThread = pThread;

	mov	ecx, DWORD PTR _pThread$[ebp]
	mov	DWORD PTR ?m_pMainThread@CThreadManager@@0PAVCThread@@A, ecx ; CThreadManager::m_pMainThread

; 360  : 		setCurrentThread( pThread );

	mov	edx, DWORD PTR _pThread$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setCurrentThread@CThreadManager@@AAEXPAVCThread@@@Z ; CThreadManager::setCurrentThread
$L2667:

; 362  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setKernelThread@CThreadManager@@QAEXPAVCThread@@@Z ENDP ; CThreadManager::setKernelThread
_pLastThread$ = -4
_pNextThread$ = -8
?timerISRHandler@CThreadManager@@CAXXZ PROC NEAR	; CThreadManager::timerISRHandler

; 375  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8

; 376  : 	CThread* pLastThread;
; 377  : 	CThread* pNextThread;
; 378  : 	
; 379  : 	if( getMultiTaskingEnabled()==true )

	call	?getMultiTaskingEnabled@CThreadManager@@CA_NXZ ; CThreadManager::getMultiTaskingEnabled
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2672

; 381  : 		// Tasking is enabled so return to a different thread.
; 382  : 
; 383  : 		// Get current task selector(always an application).
; 384  : 		pLastThread = getCurrentThread();

	call	?getCurrentThread@CThreadManager@@SAPAVCThread@@XZ ; CThreadManager::getCurrentThread
	mov	DWORD PTR _pLastThread$[ebp], eax

; 385  : 
; 386  : 		// Get next task selector and update task pointer.
; 387  : 		pNextThread = getNextThread();

	call	?getNextThread@CThreadManager@@CAPAVCThread@@XZ ; CThreadManager::getNextThread
	mov	DWORD PTR _pNextThread$[ebp], eax
$L2672:

; 389  : 	resumeThread( pNextThread );

	mov	eax, DWORD PTR _pNextThread$[ebp]
	push	eax
	call	?resumeThread@CThreadManager@@CAXPAVCThread@@@Z ; CThreadManager::resumeThread
	add	esp, 4

; 390  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?timerISRHandler@CThreadManager@@CAXXZ ENDP		; CThreadManager::timerISRHandler
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCThread@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCThread@@@@UBE?BKXZ PROC NEAR		; TList<CThread *>::count, COMDAT

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
?count@?$TList@PAVCThread@@@@UBE?BKXZ ENDP		; TList<CThread *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ PROC NEAR ; TList<CThread *>::first, COMDAT

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
?first@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ ENDP ; TList<CThread *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ PROC NEAR ; TList<CThread *>::last, COMDAT

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
?last@?$TList@PAVCThread@@@@UBEPBVCNode@?$TCollection@PAVCThread@@@@XZ ENDP ; TList<CThread *>::last
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCThread@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCThread@@@@UAEPAXI@Z PROC NEAR	; TCollection<CThread *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCThread@@@@6B@ ; TCollection<CThread *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L2760
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2760:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCThread@@@@UAEPAXI@Z ENDP		; TCollection<CThread *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCThread@@@@UAEPAXI@Z
_TEXT	SEGMENT
_pNode$3104 = -8
_pNext$3105 = -12
$T3112 = -16
$T3113 = -20
___flags$ = 8
_this$ = -40
$T3005 = -4
$T3014 = -24
$T3024 = -28
$T3031 = -32
$T3038 = -36
??_G?$TList@PAVCThread@@@@UAEPAXI@Z PROC NEAR		; TList<CThread *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCThread@@@@6B@ ; TList<CThread *>::`vftable'
$L3098:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L3097
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T3005[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$3104[ebp], eax
$L3106:
	cmp	DWORD PTR _pNode$3104[ebp], 0
	je	SHORT $L3107
	mov	ecx, DWORD PTR _pNode$3104[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T3014[ebp], edx
	mov	eax, DWORD PTR $T3014[ebp]
	cmp	eax, DWORD PTR $T3005[ebp]
	je	SHORT $L3107
	mov	ecx, DWORD PTR _pNode$3104[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$3104[ebp], edx
	jmp	SHORT $L3106
$L3107:
	cmp	DWORD PTR _pNode$3104[ebp], 0
	je	$L3103
	mov	eax, DWORD PTR _pNode$3104[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$3105[ebp], ecx
	mov	edx, DWORD PTR _pNode$3104[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T3024[ebp], eax
	mov	ecx, DWORD PTR $T3024[ebp]
	mov	edx, DWORD PTR _pNext$3105[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$3104[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3031[ebp], ecx
	mov	edx, DWORD PTR _pNext$3105[ebp]
	mov	eax, DWORD PTR $T3031[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$3104[ebp]
	jne	SHORT $L3109
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$3105[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3109:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$3104[ebp]
	jne	SHORT $L3110
	mov	ecx, DWORD PTR _pNode$3104[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3038[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T3038[ebp]
	mov	DWORD PTR [eax+12], ecx
$L3110:
	mov	edx, DWORD PTR _pNode$3104[ebp]
	mov	DWORD PTR $T3113[ebp], edx
	mov	eax, DWORD PTR $T3113[ebp]
	mov	DWORD PTR $T3112[ebp], eax
	cmp	DWORD PTR $T3112[ebp], 0
	je	SHORT $L3114
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3090
	mov	edx, DWORD PTR $T3112[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3090:
	mov	eax, DWORD PTR $T3112[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L3115
$L3114:
	mov	DWORD PTR -44+[ebp], 0
$L3115:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L3103:
	jmp	$L3098
$L3097:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCThread@@@@6B@ ; TCollection<CThread *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L2763
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2763:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCThread@@@@UAEPAXI@Z ENDP		; TList<CThread *>::`scalar deleting destructor'
_TEXT	ENDS
END
