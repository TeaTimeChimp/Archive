	TITLE	E:\WORKSHOP\os98\ice32\System.cpp
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
;	COMDAT ??_GCSystem@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CSystem@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	??0CSystem@@QAE@XZ				; CSystem::CSystem
PUBLIC	??_7CSystem@@6B@				; CSystem::`vftable'
PUBLIC	??_GCSystem@@UAEPAXI@Z				; CSystem::`scalar deleting destructor'
PUBLIC	??_ECSystem@@UAEPAXI@Z				; CSystem::`vector deleting destructor'
EXTRN	??0CCPU@@QAE@PAX0@Z:NEAR			; CCPU::CCPU
;	COMDAT ??_7CSystem@@6B@
; File E:\WORKSHOP\os98\ice32\System.cpp
CONST	SEGMENT
??_7CSystem@@6B@ DD FLAT:??_ECSystem@@UAEPAXI@Z		; CSystem::`vftable'
CONST	ENDS
_TEXT	SEGMENT
_this$ = -4
??0CSystem@@QAE@XZ PROC NEAR				; CSystem::CSystem

; 26   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	push	2048					; 00000800H
	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??0CCPU@@QAE@PAX0@Z			; CCPU::CCPU
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CSystem@@6B@ ; CSystem::`vftable'

; 27   : 	// Invalidate managers.
; 28   : 	m_pIOManager	= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+54], 0

; 29   : 	m_pDMAManager	= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+46], 0

; 30   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CSystem@@QAE@XZ ENDP					; CSystem::CSystem
_TEXT	ENDS
PUBLIC	??1CSystem@@UAE@XZ				; CSystem::~CSystem
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCSystem@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCSystem@@UAEPAXI@Z PROC NEAR			; CSystem::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CSystem@@UAE@XZ			; CSystem::~CSystem
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2433
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2433:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCSystem@@UAEPAXI@Z ENDP				; CSystem::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CCPU@@UAE@XZ:NEAR				; CCPU::~CCPU
_TEXT	SEGMENT
_this$ = -4
??1CSystem@@UAE@XZ PROC NEAR				; CSystem::~CSystem

; 34   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CSystem@@6B@ ; CSystem::`vftable'

; 35   : 
; 36   : }

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	??1CCPU@@UAE@XZ				; CCPU::~CCPU
	mov	esp, ebp
	pop	ebp
	ret	0
??1CSystem@@UAE@XZ ENDP					; CSystem::~CSystem
_TEXT	ENDS
PUBLIC	?create@CSystem@@QAE?BJXZ			; CSystem::create
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
EXTRN	??0CTimer@@QAE@XZ:NEAR				; CTimer::CTimer
EXTRN	?create@CTimer@@QAE_NXZ:NEAR			; CTimer::create
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	?create@CCPU@@QAE?BKXZ:NEAR			; CCPU::create
EXTRN	?enableInterrupts@CCPU@@QAEX_N@Z:NEAR		; CCPU::enableInterrupts
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	??0CIOManager@@QAE@XZ:NEAR			; CIOManager::CIOManager
EXTRN	?create@CIOManager@@QAE?BKXZ:NEAR		; CIOManager::create
EXTRN	??0CDMAManager@@QAE@XZ:NEAR			; CDMAManager::CDMAManager
EXTRN	?create@CDMAManager@@QAE_NXZ:NEAR		; CDMAManager::create
EXTRN	??0CFloppyDiskController@@QAE@XZ:NEAR		; CFloppyDiskController::CFloppyDiskController
EXTRN	?create@CFloppyDiskController@@QAE?BKXZ:NEAR	; CFloppyDiskController::create
EXTRN	??0CPhysicalMemoryManager@@QAE@XZ:NEAR		; CPhysicalMemoryManager::CPhysicalMemoryManager
EXTRN	?create@CPhysicalMemoryManager@@QAEKXZ:NEAR	; CPhysicalMemoryManager::create
EXTRN	??0CPIC@@QAE@XZ:NEAR				; CPIC::CPIC
EXTRN	?create@CPIC@@QAE?BJXZ:NEAR			; CPIC::create
_DATA	SEGMENT
$SG2441	DB	'Initializing system.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -32
_iError$ = -4
$T2485 = -8
$T2488 = -12
$T2491 = -16
$T2494 = -20
$T2497 = -24
$T2500 = -28
?create@CSystem@@QAE?BJXZ PROC NEAR			; CSystem::create

; 50   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 56					; 00000038H
	mov	DWORD PTR _this$[ebp], ecx

; 51   : 	unsigned long iError;
; 52   : 
; 53   : 	// Sign-on.
; 54   : 	cout << "Initializing system." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2441
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 55   : 
; 56   : 	// Initialise CPU object.
; 57   : 	iError = m_CPU.create();

	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?create@CCPU@@QAE?BKXZ			; CCPU::create
	mov	DWORD PTR _iError$[ebp], eax

; 58   : 
; 59   : 	// Initialise IO manager.
; 60   : 	m_pIOManager = new CIOManager();

	push	8
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2485[ebp], eax
	cmp	DWORD PTR $T2485[ebp], 0
	je	SHORT $L2486
	mov	ecx, DWORD PTR $T2485[ebp]
	call	??0CIOManager@@QAE@XZ			; CIOManager::CIOManager
	mov	DWORD PTR -36+[ebp], eax
	jmp	SHORT $L2487
$L2486:
	mov	DWORD PTR -36+[ebp], 0
$L2487:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -36+[ebp]
	mov	DWORD PTR [eax+54], ecx

; 61   : 	iError = m_pIOManager->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+54]
	call	?create@CIOManager@@QAE?BKXZ		; CIOManager::create
	mov	DWORD PTR _iError$[ebp], eax

; 62   : 
; 63   : 	// Initialise programmable interrupt controller.
; 64   : 	m_pPIC = new CPIC();

	push	36					; 00000024H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2488[ebp], eax
	cmp	DWORD PTR $T2488[ebp], 0
	je	SHORT $L2489
	mov	ecx, DWORD PTR $T2488[ebp]
	call	??0CPIC@@QAE@XZ				; CPIC::CPIC
	mov	DWORD PTR -40+[ebp], eax
	jmp	SHORT $L2490
$L2489:
	mov	DWORD PTR -40+[ebp], 0
$L2490:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -40+[ebp]
	mov	DWORD PTR [eax+58], ecx

; 65   : 	iError = m_pPIC->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+58]
	call	?create@CPIC@@QAE?BJXZ			; CPIC::create
	mov	DWORD PTR _iError$[ebp], eax

; 66   : 	
; 67   : 	// Initialise interval timer.
; 68   : 	m_pTimer = new CTimer();

	push	21					; 00000015H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2491[ebp], eax
	cmp	DWORD PTR $T2491[ebp], 0
	je	SHORT $L2492
	mov	ecx, DWORD PTR $T2491[ebp]
	call	??0CTimer@@QAE@XZ			; CTimer::CTimer
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L2493
$L2492:
	mov	DWORD PTR -44+[ebp], 0
$L2493:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -44+[ebp]
	mov	DWORD PTR [eax+62], ecx

; 69   : 	iError = m_pTimer->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+62]
	call	?create@CTimer@@QAE_NXZ			; CTimer::create
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _iError$[ebp], eax

; 70   : 
; 71   : 	// Initialise physical memory manager,
; 72   : 	m_pPhysicalMemoryManager = new CPhysicalMemoryManager();

	push	14					; 0000000eH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2494[ebp], eax
	cmp	DWORD PTR $T2494[ebp], 0
	je	SHORT $L2495
	mov	ecx, DWORD PTR $T2494[ebp]
	call	??0CPhysicalMemoryManager@@QAE@XZ	; CPhysicalMemoryManager::CPhysicalMemoryManager
	mov	DWORD PTR -48+[ebp], eax
	jmp	SHORT $L2496
$L2495:
	mov	DWORD PTR -48+[ebp], 0
$L2496:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -48+[ebp]
	mov	DWORD PTR [eax+66], ecx

; 73   : 	iError = m_pPhysicalMemoryManager->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+66]
	call	?create@CPhysicalMemoryManager@@QAEKXZ	; CPhysicalMemoryManager::create
	mov	DWORD PTR _iError$[ebp], eax

; 74   : 
; 75   : 	// Enable interrupts.
; 76   : 	m_CPU.enableInterrupts( true );

	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 4
	call	?enableInterrupts@CCPU@@QAEX_N@Z	; CCPU::enableInterrupts

; 77   : 
; 78   : 	// Initialise DMA manager.
; 79   : 	m_pDMAManager = new CDMAManager();

	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2497[ebp], eax
	cmp	DWORD PTR $T2497[ebp], 0
	je	SHORT $L2498
	mov	ecx, DWORD PTR $T2497[ebp]
	call	??0CDMAManager@@QAE@XZ			; CDMAManager::CDMAManager
	mov	DWORD PTR -52+[ebp], eax
	jmp	SHORT $L2499
$L2498:
	mov	DWORD PTR -52+[ebp], 0
$L2499:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -52+[ebp]
	mov	DWORD PTR [eax+46], ecx

; 80   : 	m_pDMAManager->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+46]
	call	?create@CDMAManager@@QAE_NXZ		; CDMAManager::create

; 81   : 
; 82   : 	// Initialise floppy disk controller.
; 83   : 	m_pFloppyDiskController = new CFloppyDiskController();

	push	59					; 0000003bH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2500[ebp], eax
	cmp	DWORD PTR $T2500[ebp], 0
	je	SHORT $L2501
	mov	ecx, DWORD PTR $T2500[ebp]
	call	??0CFloppyDiskController@@QAE@XZ	; CFloppyDiskController::CFloppyDiskController
	mov	DWORD PTR -56+[ebp], eax
	jmp	SHORT $L2502
$L2501:
	mov	DWORD PTR -56+[ebp], 0
$L2502:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -56+[ebp]
	mov	DWORD PTR [eax+50], ecx

; 84   : 	m_pFloppyDiskController->create();

	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+50]
	call	?create@CFloppyDiskController@@QAE?BKXZ	; CFloppyDiskController::create

; 85   : 
; 86   : 	// Return initialisation error code.
; 87   : 	return iError;

	mov	eax, DWORD PTR _iError$[ebp]

; 88   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CSystem@@QAE?BJXZ ENDP				; CSystem::create
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
PUBLIC	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ	; CSystem::getIOManager
_TEXT	SEGMENT
_this$ = -4
?getIOManager@CSystem@@QAEAAVCIOManager@@XZ PROC NEAR	; CSystem::getIOManager

; 101  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 102  : 	// Return IO manager.
; 103  : 	return *m_pIOManager;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+54]

; 104  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ENDP	; CSystem::getIOManager
_TEXT	ENDS
PUBLIC	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
_TEXT	SEGMENT
_this$ = -4
?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ PROC NEAR ; CSystem::getPhysicalMemoryManager

; 117  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 118  : 	// Return physical memory manager.
; 119  : 	return *m_pPhysicalMemoryManager;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+66]

; 120  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ENDP ; CSystem::getPhysicalMemoryManager
_TEXT	ENDS
PUBLIC	?getPIC@CSystem@@QAEAAVCPIC@@XZ			; CSystem::getPIC
_TEXT	SEGMENT
_this$ = -4
?getPIC@CSystem@@QAEAAVCPIC@@XZ PROC NEAR		; CSystem::getPIC

; 133  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 134  : 	// Return pointer to PIC object.
; 135  : 	return *m_pPIC;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+58]

; 136  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPIC@CSystem@@QAEAAVCPIC@@XZ ENDP			; CSystem::getPIC
_TEXT	ENDS
PUBLIC	?getCPU@CSystem@@QAEAAVCCPU@@XZ			; CSystem::getCPU
_TEXT	SEGMENT
_this$ = -4
?getCPU@CSystem@@QAEAAVCCPU@@XZ PROC NEAR		; CSystem::getCPU

; 149  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 150  : 	// Return CPU.
; 151  : 	return m_CPU;

	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4

; 152  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getCPU@CSystem@@QAEAAVCCPU@@XZ ENDP			; CSystem::getCPU
_TEXT	ENDS
PUBLIC	?getDMAManager@CSystem@@QAEAAVCDMAManager@@XZ	; CSystem::getDMAManager
_TEXT	SEGMENT
_this$ = -4
?getDMAManager@CSystem@@QAEAAVCDMAManager@@XZ PROC NEAR	; CSystem::getDMAManager

; 165  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 166  : 	// Return DMA manager reference.
; 167  : 	return *m_pDMAManager;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+46]

; 168  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDMAManager@CSystem@@QAEAAVCDMAManager@@XZ ENDP	; CSystem::getDMAManager
_TEXT	ENDS
PUBLIC	?getFloppyDiskController@CSystem@@QAEAAVCFloppyDiskController@@XZ ; CSystem::getFloppyDiskController
_TEXT	SEGMENT
_this$ = -4
?getFloppyDiskController@CSystem@@QAEAAVCFloppyDiskController@@XZ PROC NEAR ; CSystem::getFloppyDiskController

; 181  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 182  : 	// Return object reference.
; 183  : 	return *m_pFloppyDiskController;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+50]

; 184  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getFloppyDiskController@CSystem@@QAEAAVCFloppyDiskController@@XZ ENDP ; CSystem::getFloppyDiskController
_TEXT	ENDS
PUBLIC	?getTimer@CSystem@@QAEAAVCTimer@@XZ		; CSystem::getTimer
_TEXT	SEGMENT
_this$ = -4
?getTimer@CSystem@@QAEAAVCTimer@@XZ PROC NEAR		; CSystem::getTimer

; 197  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 198  : 	// Return timer.
; 199  : 	return *m_pTimer;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+62]

; 200  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getTimer@CSystem@@QAEAAVCTimer@@XZ ENDP		; CSystem::getTimer
_TEXT	ENDS
END
