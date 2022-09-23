	TITLE	E:\WORKSHOP\os98\ice32\Application.cpp
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
_BSS	SEGMENT PARA USE32 PUBLIC 'BSS'
_BSS	ENDS
_TLS	SEGMENT DWORD USE32 PUBLIC 'TLS'
_TLS	ENDS
CRT$XCA	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCA	ENDS
CRT$XCU	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCU	ENDS
CRT$XCL	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCL	ENDS
CRT$XCC	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCC	ENDS
CRT$XCZ	SEGMENT DWORD USE32 PUBLIC 'DATA'
CRT$XCZ	ENDS
;	COMDAT ?flush@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?endl@@YAAAVostream@@AAV1@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCApplication@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CApplication@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS, CRT$XCA, CRT$XCU, CRT$XCL, CRT$XCC, CRT$XCZ
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CApplication@@0QBDB		; CApplication::m_pClassName
PUBLIC	?Application@@3VCApplication@@A			; Application
PUBLIC	?g_pBaseAddress@@3PBEB				; g_pBaseAddress
_BSS	SEGMENT
?Application@@3VCApplication@@A DB 04eH DUP (?)		; Application
_BSS	ENDS
_DATA	SEGMENT
?g_pBaseAddress@@3PBEB DD 080000000H			; g_pBaseAddress
_DATA	ENDS
CONST	SEGMENT
?m_pClassName@CApplication@@0QBDB DB 'Application::', 00H ; CApplication::m_pClassName
CONST	ENDS
CRT$XCU	SEGMENT
_$S84	DD	FLAT:_$E83
CRT$XCU	ENDS
_TEXT	SEGMENT
_$E83	PROC NEAR
	push	ebp
	mov	ebp, esp
	call	_$E80
	call	_$E82
	pop	ebp
	ret	0
_$E83	ENDP
_TEXT	ENDS
PUBLIC	??0CApplication@@QAE@XZ				; CApplication::CApplication
_TEXT	SEGMENT
_$E80	PROC NEAR

; 17   : CApplication Application;

	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	??0CApplication@@QAE@XZ			; CApplication::CApplication
	pop	ebp
	ret	0
_$E80	ENDP
_TEXT	ENDS
EXTRN	_atexit:NEAR
_TEXT	SEGMENT
_$E82	PROC NEAR
	push	ebp
	mov	ebp, esp
	push	OFFSET FLAT:_$E81
	call	_atexit
	add	esp, 4
	pop	ebp
	ret	0
_$E82	ENDP
_TEXT	ENDS
PUBLIC	??1CApplication@@UAE@XZ				; CApplication::~CApplication
_TEXT	SEGMENT
_$E81	PROC NEAR
	push	ebp
	mov	ebp, esp
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	??1CApplication@@UAE@XZ			; CApplication::~CApplication
	pop	ebp
	ret	0
_$E81	ENDP
_TEXT	ENDS
PUBLIC	??_7CApplication@@6B@				; CApplication::`vftable'
PUBLIC	??_GCApplication@@UAEPAXI@Z			; CApplication::`scalar deleting destructor'
PUBLIC	??_ECApplication@@UAEPAXI@Z			; CApplication::`vector deleting destructor'
EXTRN	??0CSystem@@QAE@XZ:NEAR				; CSystem::CSystem
;	COMDAT ??_7CApplication@@6B@
; File E:\WORKSHOP\os98\ice32\Application.cpp
CONST	SEGMENT
??_7CApplication@@6B@ DD FLAT:??_ECApplication@@UAEPAXI@Z ; CApplication::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CApplication@@QAE@XZ PROC NEAR			; CApplication::CApplication

; 25   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??0CSystem@@QAE@XZ			; CSystem::CSystem
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CApplication@@6B@ ; CApplication::`vftable'

; 26   : 	// Initialise state.
; 27   : 	m_pProcessManager = NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+74], 0

; 28   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CApplication@@QAE@XZ ENDP				; CApplication::CApplication
_TEXT	ENDS
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCApplication@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCApplication@@UAEPAXI@Z PROC NEAR			; CApplication::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CApplication@@UAE@XZ			; CApplication::~CApplication
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2475
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2475:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCApplication@@UAEPAXI@Z ENDP			; CApplication::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CSystem@@UAE@XZ:NEAR				; CSystem::~CSystem
_TEXT	SEGMENT
_this$ = -4
??1CApplication@@UAE@XZ PROC NEAR			; CApplication::~CApplication

; 31   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CApplication@@6B@ ; CApplication::`vftable'

; 32   : 
; 33   : }

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??1CSystem@@UAE@XZ			; CSystem::~CSystem
	mov	esp, ebp
	pop	ebp
	ret	0
??1CApplication@@UAE@XZ ENDP				; CApplication::~CApplication
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?halt@CApplication@@QBEXPAD@Z			; CApplication::halt
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG2483	DB	'halt() - ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pMessage$ = 8
_this$ = -4
?halt@CApplication@@QBEXPAD@Z PROC NEAR			; CApplication::halt

; 46   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 47   : 	// Infinite loop.
; 48   : 	cout << m_pClassName << "halt() - " << pMessage << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pMessage$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2483
	push	OFFSET FLAT:?m_pClassName@CApplication@@0QBDB ; CApplication::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2485:

; 49   : 	while( true );

	mov	ecx, 1
	test	ecx, ecx
	je	SHORT $L2486
	jmp	SHORT $L2485
$L2486:

; 50   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?halt@CApplication@@QBEXPAD@Z ENDP			; CApplication::halt
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
PUBLIC	?run@CApplication@@QAEHXZ			; CApplication::run
EXTRN	?create@CSystem@@QAE?BJXZ:NEAR			; CSystem::create
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??6ostream@@QAEAAV0@J@Z:NEAR			; ostream::operator<<
EXTRN	??0CProcessManager@@QAE@XZ:NEAR			; CProcessManager::CProcessManager
EXTRN	?create@CProcessManager@@QAE_NXZ:NEAR		; CProcessManager::create
EXTRN	?run@CProcessManager@@QAEXXZ:NEAR		; CProcessManager::run
EXTRN	??0CBootManager@@QAE@XZ:NEAR			; CBootManager::CBootManager
EXTRN	?boot@CBootManager@@QAE_NXZ:NEAR		; CBootManager::boot
EXTRN	?create@CBootManager@@QAE_NXZ:NEAR		; CBootManager::create
_DATA	SEGMENT
	ORG $+2
$SG2493	DB	'run - ', 00H
	ORG $+1
$SG2495	DB	'System initialized.', 00H
$SG2499	DB	'Failed to allocate ProcessManager object.', 00H
	ORG $+2
$SG2504	DB	0aH, 'Initialisation failed error ', 00H
	ORG $+2
$SG2505	DB	'Application::run()', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -28
_iError$ = -12
_pBootManager$ = -16
_pFunctionName$ = -8
$T2533 = -20
$T2536 = -24
?run@CApplication@@QAEHXZ PROC NEAR			; CApplication::run

; 63   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 36					; 00000024H
	mov	DWORD PTR _this$[ebp], ecx

; 64   : 	long iError;
; 65   : 	CBootManager* pBootManager;
; 66   : 	const char pFunctionName[] = "run - ";

	mov	eax, DWORD PTR $SG2493
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	cx, WORD PTR $SG2493+4
	mov	WORD PTR _pFunctionName$[ebp+4], cx
	mov	dl, BYTE PTR $SG2493+6
	mov	BYTE PTR _pFunctionName$[ebp+6], dl

; 67   : 
; 68   : 	// Initialise system object.
; 69   : 	iError = m_System.create();

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?create@CSystem@@QAE?BJXZ		; CSystem::create
	mov	DWORD PTR _iError$[ebp], eax

; 70   : 	if( iError==0 )

	cmp	DWORD PTR _iError$[ebp], 0
	jne	$L2494

; 72   : 		// System initialisation succeeded.
; 73   : 		cout << m_pClassName << pFunctionName << "System initialized." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2495
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CApplication@@0QBDB ; CApplication::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 74   : 
; 75   : 		// Create process manager.
; 76   : 		m_pProcessManager = new CProcessManager();

	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2533[ebp], eax
	cmp	DWORD PTR $T2533[ebp], 0
	je	SHORT $L2534
	mov	ecx, DWORD PTR $T2533[ebp]
	call	??0CProcessManager@@QAE@XZ		; CProcessManager::CProcessManager
	mov	DWORD PTR -32+[ebp], eax
	jmp	SHORT $L2535
$L2534:
	mov	DWORD PTR -32+[ebp], 0
$L2535:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR -32+[ebp]
	mov	DWORD PTR [ecx+74], edx

; 77   : 		if( m_pProcessManager==NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+74], 0
	jne	SHORT $L2498

; 78   : 			cout << m_pClassName << pFunctionName << "Failed to allocate ProcessManager object." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2499
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CApplication@@0QBDB ; CApplication::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 79   : 		else

	jmp	SHORT $L2500
$L2498:

; 81   : 			// Create initial state of process manager.
; 82   : 			m_pProcessManager->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+74]
	call	?create@CProcessManager@@QAE_NXZ	; CProcessManager::create

; 83   : 
; 84   : 			// Boot operating system.
; 85   : 			pBootManager = new CBootManager();

	push	8
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2536[ebp], eax
	cmp	DWORD PTR $T2536[ebp], 0
	je	SHORT $L2537
	mov	ecx, DWORD PTR $T2536[ebp]
	call	??0CBootManager@@QAE@XZ			; CBootManager::CBootManager
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L2538
$L2537:
	mov	DWORD PTR -36+[ebp], 0
$L2538:
	mov	eax, DWORD PTR -36+[ebp]
	mov	DWORD PTR _pBootManager$[ebp], eax

; 86   : 			pBootManager->create();

	mov	ecx, DWORD PTR _pBootManager$[ebp]
	call	?create@CBootManager@@QAE_NXZ		; CBootManager::create

; 87   : 			pBootManager->boot();

	mov	ecx, DWORD PTR _pBootManager$[ebp]
	call	?boot@CBootManager@@QAE_NXZ		; CBootManager::boot

; 88   : 
; 89   : 			// Pass control to the process manager.
; 90   : 			m_pProcessManager->run();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+74]
	call	?run@CProcessManager@@QAEXXZ		; CProcessManager::run
$L2500:

; 93   : 	else

	jmp	SHORT $L2503
$L2494:

; 95   : 		// Initialisation failed.
; 96   : 		cout << "\nInitialisation failed error " << iError;

	mov	edx, DWORD PTR _iError$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2504
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@J@Z			; ostream::operator<<
$L2503:

; 98   : 
; 99   : 	// System will now halt.
; 100  : 	halt( "Application::run()" );

	push	OFFSET FLAT:$SG2505
	mov	ecx, DWORD PTR _this$[ebp]
	call	?halt@CApplication@@QBEXPAD@Z		; CApplication::halt

; 101  : 
; 102  : 	// Return error code.
; 103  : 	return 0;

	xor	eax, eax

; 104  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?run@CApplication@@QAEHXZ ENDP				; CApplication::run
_TEXT	ENDS
PUBLIC	?getSystem@CApplication@@QAEAAVCSystem@@XZ	; CApplication::getSystem
_TEXT	SEGMENT
_this$ = -4
?getSystem@CApplication@@QAEAAVCSystem@@XZ PROC NEAR	; CApplication::getSystem

; 117  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 118  : 	// Return reference to system resource object.
; 119  : 	return m_System;

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4

; 120  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getSystem@CApplication@@QAEAAVCSystem@@XZ ENDP		; CApplication::getSystem
_TEXT	ENDS
PUBLIC	?getCodeSegment@CApplication@@QAEGXZ		; CApplication::getCodeSegment
_TEXT	SEGMENT
_this$ = -8
_iCS$ = -4
?getCodeSegment@CApplication@@QAEGXZ PROC NEAR		; CApplication::getCodeSegment

; 133  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 134  : 	SELECTOR iCS;
; 135  : 
; 136  : 	__asm	mov	ax, cs

	mov	ax, cs

; 137  : 	__asm	mov	iCS, ax

	mov	WORD PTR _iCS$[ebp], ax

; 138  : 
; 139  : 	return iCS;

	mov	ax, WORD PTR _iCS$[ebp]

; 140  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	0
?getCodeSegment@CApplication@@QAEGXZ ENDP		; CApplication::getCodeSegment
_TEXT	ENDS
PUBLIC	?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ ; CApplication::getProcessManager
_TEXT	SEGMENT
_this$ = -4
?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ PROC NEAR ; CApplication::getProcessManager

; 153  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 154  : 	// Return process manager reference.
; 155  : 	return *m_pProcessManager;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+74]

; 156  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getProcessManager@CApplication@@QAEAAVCProcessManager@@XZ ENDP ; CApplication::getProcessManager
_TEXT	ENDS
END
