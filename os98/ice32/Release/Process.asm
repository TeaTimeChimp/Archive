	TITLE	E:\WORKSHOP\os98\ice32\Process.cpp
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
;	COMDAT ??1?$TCollection@PAVCThread@@@@UAE@XZ
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
;	COMDAT ?setItem@CNode@?$TCollection@PAVCThread@@@@QAEXPAVCThread@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCThread@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCThread@@@@QAEXPAV12@@Z
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
;	COMDAT ?getNext@CNode@?$TCollection@PAVCThread@@@@QBEPAV12@XZ
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
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CProcess@@0QBDB			; CProcess::m_pClassName
CONST	SEGMENT
?m_pClassName@CProcess@@0QBDB DB 'CProcess::', 00H	; CProcess::m_pClassName
CONST	ENDS
PUBLIC	??0CProcess@@QAE@AAVCThreadManager@@@Z		; CProcess::CProcess
_TEXT	SEGMENT
_ThreadManager$ = 8
_this$ = -4
??0CProcess@@QAE@AAVCThreadManager@@@Z PROC NEAR	; CProcess::CProcess

; 32   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _ThreadManager$[ebp]
	mov	DWORD PTR [eax], ecx

; 33   : 	// Initialise state.
; 34   : 	m_pThreads				= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0

; 35   : 	m_pPageDirectoryTable	= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], 0

; 36   : 	m_iCodeSelector			= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	WORD PTR [ecx+12], 0

; 37   : 	m_iDataSelector			= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	WORD PTR [edx+14], 0

; 38   : 	m_iStackSelector		= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	WORD PTR [eax+16], 0

; 39   : 	m_pLDT					= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+18], 0

; 40   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0CProcess@@QAE@AAVCThreadManager@@@Z ENDP		; CProcess::CProcess
_TEXT	ENDS
PUBLIC	??1CProcess@@QAE@XZ				; CProcess::~CProcess
_TEXT	SEGMENT
_this$ = -4
??1CProcess@@QAE@XZ PROC NEAR				; CProcess::~CProcess

; 53   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 54   : 
; 55   : }

	mov	esp, ebp
	pop	ebp
	ret	0
??1CProcess@@QAE@XZ ENDP				; CProcess::~CProcess
_TEXT	ENDS
PUBLIC	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory
PUBLIC	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ; CProcess::getPageDirectoryTable
EXTRN	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ:NEAR ; CSystem::getPhysicalMemoryManager
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z:NEAR ; CPhysicalMemoryManager::commitMemory
_TEXT	SEGMENT
_pBaseAddress$ = 8
_iSize$ = 12
_eAllocationType$ = 16
_this$ = -8
_pAddress$ = -4
?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z PROC NEAR ; CProcess::allocateMemory

; 68   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 73   : 	{

	mov	eax, DWORD PTR _eAllocationType$[ebp]
	mov	DWORD PTR -12+[ebp], eax
	cmp	DWORD PTR -12+[ebp], 1
	je	SHORT $L2466
	jmp	SHORT $L2469
$L2466:

; 76   : 			// Map the specified range of linear pages to physical memory.
; 77   : 			if( Application.getSystem().getPhysicalMemoryManager().commitMemory( getPageDirectoryTable(), pBaseAddress, iSize )==0 )

	mov	ecx, DWORD PTR _iSize$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pBaseAddress$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ; CProcess::getPageDirectoryTable
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
	mov	ecx, eax
	call	?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z ; CPhysicalMemoryManager::commitMemory
	test	eax, eax
	jne	SHORT $L2467

; 78   : 				pAddress = (void*)pBaseAddress;

	mov	eax, DWORD PTR _pBaseAddress$[ebp]
	mov	DWORD PTR _pAddress$[ebp], eax
$L2467:

; 79   : 			break;

	jmp	SHORT $L2463
$L2469:

; 83   : 			// Unsupported mapping technique.
; 84   : 			pAddress = NULL;

	mov	DWORD PTR _pAddress$[ebp], 0
$L2463:

; 88   : 
; 89   : 	// Return linear address of memory mapping.
; 90   : 	return pAddress;

	mov	eax, DWORD PTR _pAddress$[ebp]

; 91   : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ENDP ; CProcess::allocateMemory
_TEXT	ENDS
PUBLIC	?setCodeSelector@CProcess@@AAEXG@Z		; CProcess::setCodeSelector
PUBLIC	?setDataSelector@CProcess@@AAEXG@Z		; CProcess::setDataSelector
PUBLIC	?setPageDirectoryTable@CProcess@@AAEXPAVCPageDirectoryEntry@@@Z ; CProcess::setPageDirectoryTable
PUBLIC	?create@CProcess@@QAE_NXZ			; CProcess::create
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?getLDT@CProcess@@QAEPAVCLDT@@XZ		; CProcess::getLDT
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	??0CLDT@@QAE@PAXG@Z:NEAR			; CLDT::CLDT
EXTRN	?setLDTSelector@CLDT@@QAEXG@Z:NEAR		; CLDT::setLDTSelector
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	?getGDT@CCPU@@QAEAAVCGDT@@XZ:NEAR		; CCPU::getGDT
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z:NEAR ; CCPU::setPageDirectoryTable
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z:NEAR ; CDescriptorTable::addMemoryDescriptor
EXTRN	?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ:NEAR ; CPhysicalMemoryManager::createPageDirectory
EXTRN	?mapGlobalPages@CPhysicalMemoryManager@@QAEXPAVCPageDirectoryEntry@@@Z:NEAR ; CPhysicalMemoryManager::mapGlobalPages
_DATA	SEGMENT
$SG2476	DB	'create - ', 00H
	ORG $+2
$SG2480	DB	'Failed to create PDT.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -36
_bSuccess$ = -16
_pPageDirectoryTable$ = -20
_pFunctionName$ = -12
_pCurrentPDT$ = -24
_PMM$ = -28
$T2707 = -32
?create@CProcess@@QAE_NXZ PROC NEAR			; CProcess::create

; 104  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[ebp], ecx

; 105  : 	bool bSuccess;
; 106  : 	CPageDirectoryTable* pPageDirectoryTable;
; 107  : 	const char pFunctionName[] = "create - ";

	mov	eax, DWORD PTR $SG2476
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2476+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	dx, WORD PTR $SG2476+8
	mov	WORD PTR _pFunctionName$[ebp+8], dx

; 108  : 	CPageDirectoryTable* pCurrentPDT;
; 109  : 	CPhysicalMemoryManager& PMM = Application.getSystem().getPhysicalMemoryManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
	mov	DWORD PTR _PMM$[ebp], eax

; 110  : 
; 111  : 	// Assume failure.
; 112  : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 113  : 	
; 114  : 	// Allocate a page directory for this process.
; 115  : 	pPageDirectoryTable = PMM.createPageDirectory();

	mov	ecx, DWORD PTR _PMM$[ebp]
	call	?createPageDirectory@CPhysicalMemoryManager@@QAEPAVCPageDirectoryEntry@@XZ ; CPhysicalMemoryManager::createPageDirectory
	mov	DWORD PTR _pPageDirectoryTable$[ebp], eax

; 116  : 	if( pPageDirectoryTable==NULL )

	cmp	DWORD PTR _pPageDirectoryTable$[ebp], 0
	jne	SHORT $L2479

; 118  : 		// Failed to create a virtual memory space for the process.
; 119  : 		cout << m_pClassName << pFunctionName << "Failed to create PDT." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2480
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CProcess@@0QBDB ; CProcess::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 121  : 	else

	jmp	$L2481
$L2479:

; 123  : 		// Store the physical address of the page directory in the TSS.
; 124  : 		setPageDirectoryTable( pPageDirectoryTable );

	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setPageDirectoryTable@CProcess@@AAEXPAVCPageDirectoryEntry@@@Z ; CProcess::setPageDirectoryTable

; 125  : 
; 126  : 		// Map global kernel memory into address space.
; 127  : 		PMM.mapGlobalPages( pPageDirectoryTable );

	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _PMM$[ebp]
	call	?mapGlobalPages@CPhysicalMemoryManager@@QAEXPAVCPageDirectoryEntry@@@Z ; CPhysicalMemoryManager::mapGlobalPages

; 128  : 
; 129  : 		// Construct LDT for process.
; 130  : 		m_pLDT = new CLDT( (void*)0x80000000, 512 );

	push	20					; 00000014H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2707[ebp], eax
	cmp	DWORD PTR $T2707[ebp], 0
	je	SHORT $L2708
	push	512					; 00000200H
	push	-2147483648				; 80000000H
	mov	ecx, DWORD PTR $T2707[ebp]
	call	??0CLDT@@QAE@PAXG@Z			; CLDT::CLDT
	mov	DWORD PTR -40+[ebp], eax
	jmp	SHORT $L2709
$L2708:
	mov	DWORD PTR -40+[ebp], 0
$L2709:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -40+[ebp]
	mov	DWORD PTR [eax+18], ecx

; 131  : 		PMM.commitMemory( pPageDirectoryTable, (void*)0x80000000, 4096 );

	push	4096					; 00001000H
	push	-2147483648				; 80000000H
	mov	edx, DWORD PTR _pPageDirectoryTable$[ebp]
	push	edx
	mov	ecx, DWORD PTR _PMM$[ebp]
	call	?commitMemory@CPhysicalMemoryManager@@QAEKPAVCPageDirectoryEntry@@PBXK@Z ; CPhysicalMemoryManager::commitMemory

; 132  : 		m_pLDT->setLDTSelector( Application.getSystem().getCPU().getGDT().addMemoryDescriptor( DT_LDT, DPL0, (void*)0x80000000, 0x00001000 ) );

	push	4096					; 00001000H
	push	-2147483648				; 80000000H
	push	0
	push	258					; 00000102H
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGDT@CCPU@@QAEAAVCGDT@@XZ		; CCPU::getGDT
	mov	ecx, eax
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	push	eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	call	?setLDTSelector@CLDT@@QAEXG@Z		; CLDT::setLDTSelector

; 133  : 		
; 134  : 		// Construct code segment.
; 135  : 		pCurrentPDT = Application.getSystem().getCPU().setPageDirectoryTable( getPageDirectoryTable() );

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ; CProcess::getPageDirectoryTable
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z ; CCPU::setPageDirectoryTable
	mov	DWORD PTR _pCurrentPDT$[ebp], eax

; 136  : 		setCodeSelector( getLDT()->addMemoryDescriptor( DT_EXECUTE_READ, DPL0, 0x00000000, 0xffffffff ) );

	push	-1
	push	0
	push	0
	push	10					; 0000000aH
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getLDT@CProcess@@QAEPAVCLDT@@XZ	; CProcess::getLDT
	mov	ecx, eax
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setCodeSelector@CProcess@@AAEXG@Z	; CProcess::setCodeSelector

; 137  : 		setDataSelector( getLDT()->addMemoryDescriptor( DT_READ_WRITE, DPL0, 0x00000000, 0xffffffff ) );

	push	-1
	push	0
	push	0
	push	2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getLDT@CProcess@@QAEPAVCLDT@@XZ	; CProcess::getLDT
	mov	ecx, eax
	call	?addMemoryDescriptor@CDescriptorTable@@QAEGW4EDescriptorType@@W4EPriviledgeLevel@@PAXK@Z ; CDescriptorTable::addMemoryDescriptor
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setDataSelector@CProcess@@AAEXG@Z	; CProcess::setDataSelector

; 138  : 		Application.getSystem().getCPU().setPageDirectoryTable( pCurrentPDT );

	mov	ecx, DWORD PTR _pCurrentPDT$[ebp]
	push	ecx
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?setPageDirectoryTable@CCPU@@QAEPAVCPageDirectoryEntry@@PAV2@@Z ; CCPU::setPageDirectoryTable

; 139  : 
; 140  : 		// Return success.
; 141  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2481:

; 143  : 
; 144  : 	// Return success of process creation.
; 145  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 146  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CProcess@@QAE_NXZ ENDP				; CProcess::create
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
PUBLIC	?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z	; CProcess::createThread
EXTRN	?createThread@CThreadManager@@QAEPAVCThread@@PAVCProcess@@P6AXXZ@Z:NEAR ; CThreadManager::createThread
_TEXT	SEGMENT
_pEntryPoint$ = 8
_this$ = -28
_pThread$ = -4
$T2726 = -16
$T2730 = -20
_pLink$2732 = -8
$T2737 = -12
$T2748 = -24
?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z PROC NEAR ; CProcess::createThread

; 159  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	DWORD PTR _this$[ebp], ecx

; 160  : 	CThread* pThread;
; 161  : 
; 162  : 	// Request a new thread of execution.
; 163  : 	pThread = m_ThreadManager.createThread( this, pEntryPoint );

	mov	eax, DWORD PTR _pEntryPoint$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx]
	call	?createThread@CThreadManager@@QAEPAVCThread@@PAVCProcess@@P6AXXZ@Z ; CThreadManager::createThread
	mov	DWORD PTR _pThread$[ebp], eax

; 164  : 	if( pThread!=NULL )

	cmp	DWORD PTR _pThread$[ebp], 0
	je	$L2731

; 166  : 		// Insert new thread into list.
; 167  : 		m_pThreads->insert( pThread );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2748[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T2737[ebp], eax
	cmp	DWORD PTR $T2737[ebp], 0
	je	SHORT $L2738
	mov	edx, DWORD PTR $T2737[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T2737[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T2737[ebp]
	mov	DWORD PTR -32+[ebp], ecx
	jmp	SHORT $L2739
$L2738:
	mov	DWORD PTR -32+[ebp], 0
$L2739:
	mov	edx, DWORD PTR -32+[ebp]
	mov	DWORD PTR _pLink$2732[ebp], edx
	cmp	DWORD PTR _pLink$2732[ebp], 0
	je	SHORT $L2731
	mov	eax, DWORD PTR _pLink$2732[ebp]
	mov	ecx, DWORD PTR _pThread$[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T2748[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L2744
	mov	eax, DWORD PTR $T2748[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2726[ebp], ecx
	mov	edx, DWORD PTR $T2726[ebp]
	mov	eax, DWORD PTR _pLink$2732[ebp]
	mov	DWORD PTR [edx+8], eax
$L2744:
	mov	ecx, DWORD PTR $T2748[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2730[ebp], edx
	mov	eax, DWORD PTR _pLink$2732[ebp]
	mov	ecx, DWORD PTR $T2730[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T2748[ebp]
	mov	eax, DWORD PTR _pLink$2732[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T2748[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L2735
	mov	edx, DWORD PTR $T2748[ebp]
	mov	eax, DWORD PTR _pLink$2732[ebp]
	mov	DWORD PTR [edx+12], eax
$L2735:
	mov	ecx, DWORD PTR $T2748[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T2748[ebp]
	mov	DWORD PTR [eax+4], edx
$L2731:

; 169  : 	// Return pointer to new thread object.
; 170  : 	return pThread;

	mov	eax, DWORD PTR _pThread$[ebp]

; 171  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?createThread@CProcess@@QAEPAVCThread@@P6AXXZ@Z ENDP	; CProcess::createThread
_TEXT	ENDS
PUBLIC	?getCodeSelector@CProcess@@QAEGXZ		; CProcess::getCodeSelector
_TEXT	SEGMENT
_this$ = -4
?getCodeSelector@CProcess@@QAEGXZ PROC NEAR		; CProcess::getCodeSelector

; 184  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 185  : 	// Return code selector.
; 186  : 	return m_iCodeSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+12]

; 187  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getCodeSelector@CProcess@@QAEGXZ ENDP			; CProcess::getCodeSelector
_TEXT	ENDS
PUBLIC	?getDataSelector@CProcess@@QAEGXZ		; CProcess::getDataSelector
_TEXT	SEGMENT
_this$ = -4
?getDataSelector@CProcess@@QAEGXZ PROC NEAR		; CProcess::getDataSelector

; 200  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 201  : 	// Return code selector.
; 202  : 	return m_iDataSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+14]

; 203  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDataSelector@CProcess@@QAEGXZ ENDP			; CProcess::getDataSelector
_this$ = -4
?getLDT@CProcess@@QAEPAVCLDT@@XZ PROC NEAR		; CProcess::getLDT

; 216  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 217  : 	// Returns a pointer to the processes LDT.
; 218  : 	return m_pLDT;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+18]

; 219  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getLDT@CProcess@@QAEPAVCLDT@@XZ ENDP			; CProcess::getLDT
_TEXT	ENDS
PUBLIC	?getLDTDescriptor@CProcess@@QAEPAVCDescriptor@@XZ ; CProcess::getLDTDescriptor
EXTRN	?getLDTSelector@CLDT@@QAEGXZ:NEAR		; CLDT::getLDTSelector
EXTRN	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z:NEAR ; CDescriptorTable::getDescriptor
_TEXT	SEGMENT
_this$ = -8
_pLDTDescriptor$ = -4
?getLDTDescriptor@CProcess@@QAEPAVCDescriptor@@XZ PROC NEAR ; CProcess::getLDTDescriptor

; 232  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 233  : 	CDescriptor* pLDTDescriptor;
; 234  : 
; 235  : 	// Get descriptor holding current LDT.
; 236  : 	pLDTDescriptor = Application.getSystem().getCPU().getGDT().getDescriptor( m_pLDT->getLDTSelector() );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+18]
	call	?getLDTSelector@CLDT@@QAEGXZ		; CLDT::getLDTSelector
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getGDT@CCPU@@QAEAAVCGDT@@XZ		; CCPU::getGDT
	mov	ecx, eax
	call	?getDescriptor@CDescriptorTable@@QAEPAVCDescriptor@@G@Z ; CDescriptorTable::getDescriptor
	mov	DWORD PTR _pLDTDescriptor$[ebp], eax

; 237  : 
; 238  : 	// Returns a pointer to the processes LDT descriptor.
; 239  : 	return pLDTDescriptor;

	mov	eax, DWORD PTR _pLDTDescriptor$[ebp]

; 240  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getLDTDescriptor@CProcess@@QAEPAVCDescriptor@@XZ ENDP	; CProcess::getLDTDescriptor
_TEXT	ENDS
PUBLIC	?getStackSelector@CProcess@@QAEGXZ		; CProcess::getStackSelector
_TEXT	SEGMENT
_this$ = -4
?getStackSelector@CProcess@@QAEGXZ PROC NEAR		; CProcess::getStackSelector

; 253  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 254  : 	// Return code selector.
; 255  : 	return m_iStackSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ax, WORD PTR [eax+16]

; 256  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getStackSelector@CProcess@@QAEGXZ ENDP			; CProcess::getStackSelector
_iCodeSelector$ = 8
_this$ = -4
?setCodeSelector@CProcess@@AAEXG@Z PROC NEAR		; CProcess::setCodeSelector

; 269  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 270  : 	// Store code segment selector.
; 271  : 	m_iCodeSelector = iCodeSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iCodeSelector$[ebp]
	mov	WORD PTR [eax+12], cx

; 272  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setCodeSelector@CProcess@@AAEXG@Z ENDP			; CProcess::setCodeSelector
_iDataSelector$ = 8
_this$ = -4
?setDataSelector@CProcess@@AAEXG@Z PROC NEAR		; CProcess::setDataSelector

; 285  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 286  : 	// Store data segment selector.
; 287  : 	m_iDataSelector = iDataSelector;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cx, WORD PTR _iDataSelector$[ebp]
	mov	WORD PTR [eax+14], cx

; 288  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setDataSelector@CProcess@@AAEXG@Z ENDP			; CProcess::setDataSelector
_this$ = -4
?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ PROC NEAR ; CProcess::getPageDirectoryTable

; 301  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 302  : 	// Return a pointer to the processes page directory table.
; 303  : 	return m_pPageDirectoryTable;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+4]

; 304  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ENDP ; CProcess::getPageDirectoryTable
_TEXT	ENDS
PUBLIC	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z	; CProcess::getPhysicalAddress
EXTRN	?virtualToPhysical@CPhysicalMemoryManager@@QBEPAXPAVCPageDirectoryEntry@@PBX@Z:NEAR ; CPhysicalMemoryManager::virtualToPhysical
_TEXT	SEGMENT
_pVirtualAddress$ = 8
_this$ = -4
?getPhysicalAddress@CProcess@@QAEPAXPBX@Z PROC NEAR	; CProcess::getPhysicalAddress

; 317  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 318  : 	// Return address through memory managers traslation.
; 319  : 	return Application.getSystem().getPhysicalMemoryManager().virtualToPhysical( getPageDirectoryTable(), pVirtualAddress );

	mov	eax, DWORD PTR _pVirtualAddress$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getPageDirectoryTable@CProcess@@QBEPAVCPageDirectoryEntry@@XZ ; CProcess::getPageDirectoryTable
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPhysicalMemoryManager@CSystem@@QAEAAVCPhysicalMemoryManager@@XZ ; CSystem::getPhysicalMemoryManager
	mov	ecx, eax
	call	?virtualToPhysical@CPhysicalMemoryManager@@QBEPAXPAVCPageDirectoryEntry@@PBX@Z ; CPhysicalMemoryManager::virtualToPhysical

; 320  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getPhysicalAddress@CProcess@@QAEPAXPBX@Z ENDP		; CProcess::getPhysicalAddress
_TEXT	ENDS
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
_DATA	SEGMENT
	ORG $+2
$SG2600	DB	'setPageDirectoryTable(0x', 00H
	ORG $+3
$SG2601	DB	')', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPageDirectoryTable$ = 8
_this$ = -4
?setPageDirectoryTable@CProcess@@AAEXPAVCPageDirectoryEntry@@@Z PROC NEAR ; CProcess::setPageDirectoryTable

; 333  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 334  : 	// Store pointer to page directory table.
; 335  : 	m_pPageDirectoryTable = pPageDirectoryTable;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pPageDirectoryTable$[ebp]
	mov	DWORD PTR [eax+4], ecx

; 336  : 	cout << m_pClassName << "setPageDirectoryTable(0x" << (DWORD)m_pPageDirectoryTable << ")" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2601
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	push	eax
	push	OFFSET FLAT:$SG2600
	push	OFFSET FLAT:?m_pClassName@CProcess@@0QBDB ; CProcess::m_pClassName
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

; 337  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setPageDirectoryTable@CProcess@@AAEXPAVCPageDirectoryEntry@@@Z ENDP ; CProcess::setPageDirectoryTable
_TEXT	ENDS
END
