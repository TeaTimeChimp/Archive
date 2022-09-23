	TITLE	E:\WORKSHOP\os98\ice32\PortableExecutable.cpp
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
;	COMDAT ?getSignature@CMZHeader@@QBEGXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPEHeaderOffset@CMZHeader@@QBEKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getSignature@CPEHeader@CPortableExecutable@@QAEKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNumberOfSections@CPEHeader@CPortableExecutable@@QAEGXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getEntryPoint@COptionalHeader@CPortableExecutable@@QBEPAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getImageBase@COptionalHeader@CPortableExecutable@@QBEPAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getName@CSectionHeader@CPortableExecutable@@QBEPBDXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getVirtualAddress@CSectionHeader@CPortableExecutable@@QBEPAXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CPortableExecutable@@0QBDB	; CPortableExecutable::m_pClassName
PUBLIC	?m_bDebug@CPortableExecutable@@0_NB		; CPortableExecutable::m_bDebug
PUBLIC	?m_iSignatureMZ@CPortableExecutable@@0GB	; CPortableExecutable::m_iSignatureMZ
PUBLIC	?m_iSignatureNT@CPortableExecutable@@0KB	; CPortableExecutable::m_iSignatureNT
PUBLIC	?m_pClassName@CSectionHeader@CPortableExecutable@@0QBDB ; CPortableExecutable::CSectionHeader::m_pClassName
CONST	SEGMENT
?m_pClassName@CPortableExecutable@@0QBDB DB 'PortableExecutable::', 00H ; CPortableExecutable::m_pClassName
?m_bDebug@CPortableExecutable@@0_NB DB 00H		; CPortableExecutable::m_bDebug
?m_iSignatureMZ@CPortableExecutable@@0GB DW 05a4dH	; CPortableExecutable::m_iSignatureMZ
?m_iSignatureNT@CPortableExecutable@@0KB DD 04550H	; CPortableExecutable::m_iSignatureNT
?m_pClassName@CSectionHeader@CPortableExecutable@@0QBDB DB 'SectionHeader'
	DB	'::', 00H					; CPortableExecutable::CSectionHeader::m_pClassName
CONST	ENDS
PUBLIC	?getEntryPoint@CPortableExecutable@@QAEPAXXZ	; CPortableExecutable::getEntryPoint
_TEXT	SEGMENT
_this$ = -8
$T2759 = -4
?getEntryPoint@CPortableExecutable@@QAEPAXXZ PROC NEAR	; CPortableExecutable::getEntryPoint

; 40   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 41   : 	// Return entry point from optional header.
; 42   : 	return m_pOptionalHeader->getEntryPoint();

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2759[ebp], ecx
	mov	edx, DWORD PTR $T2759[ebp]
	mov	eax, DWORD PTR [edx+16]
	mov	ecx, DWORD PTR $T2759[ebp]
	add	eax, DWORD PTR [ecx+28]

; 43   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getEntryPoint@CPortableExecutable@@QAEPAXXZ ENDP	; CPortableExecutable::getEntryPoint
_TEXT	ENDS
PUBLIC	?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ ; CPortableExecutable::getFirstSectionHeader
_TEXT	SEGMENT
_this$ = -4
?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ PROC NEAR ; CPortableExecutable::getFirstSectionHeader

; 56   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 57   : 	// Return first section header.
; 58   : 	return m_pSectionHeaders;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 59   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ ENDP ; CPortableExecutable::getFirstSectionHeader
_TEXT	ENDS
PUBLIC	?getNextSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PAV21@@Z ; CPortableExecutable::getNextSectionHeader
_TEXT	SEGMENT
_pSection$ = 8
_this$ = -20
_iSectionIndex$ = -8
_pNextSection$ = -4
$T2765 = -12
$T2769 = -16
?getNextSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PAV21@@Z PROC NEAR ; CPortableExecutable::getNextSectionHeader

; 72   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 73   : 	DWORD iSectionIndex;
; 74   : 	CSectionHeader* pNextSection;
; 75   : 
; 76   : 	// Locate the section specified by the caller.
; 77   : 	iSectionIndex = 1;

	mov	DWORD PTR _iSectionIndex$[ebp], 1

; 78   : 	pNextSection = getFirstSectionHeader();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ ; CPortableExecutable::getFirstSectionHeader
	mov	DWORD PTR _pNextSection$[ebp], eax
$L2636:

; 79   : 	while( pNextSection!=pSection && iSectionIndex<m_pPEHeader->getNumberOfSections() )

	mov	eax, DWORD PTR _pNextSection$[ebp]
	cmp	eax, DWORD PTR _pSection$[ebp]
	je	SHORT $L2637
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	ax, WORD PTR [edx+2]
	mov	WORD PTR $T2765[ebp], ax
	mov	ecx, DWORD PTR $T2765[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	DWORD PTR _iSectionIndex$[ebp], ecx
	jae	SHORT $L2637

; 81   : 		pNextSection++;

	mov	edx, DWORD PTR _pNextSection$[ebp]
	add	edx, 40					; 00000028H
	mov	DWORD PTR _pNextSection$[ebp], edx

; 82   : 		iSectionIndex++;

	mov	eax, DWORD PTR _iSectionIndex$[ebp]
	add	eax, 1
	mov	DWORD PTR _iSectionIndex$[ebp], eax

; 83   : 	}

	jmp	SHORT $L2636
$L2637:

; 84   : 
; 85   : 	// If the specified section has been found return the next.
; 86   : 	if( iSectionIndex<m_pPEHeader->getNumberOfSections() )

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	ax, WORD PTR [edx+2]
	mov	WORD PTR $T2769[ebp], ax
	mov	ecx, DWORD PTR $T2769[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	DWORD PTR _iSectionIndex$[ebp], ecx
	jae	SHORT $L2638

; 87   : 		pNextSection = pNextSection++;

	mov	edx, DWORD PTR _pNextSection$[ebp]
	mov	DWORD PTR _pNextSection$[ebp], edx
	mov	eax, DWORD PTR _pNextSection$[ebp]
	add	eax, 40					; 00000028H
	mov	DWORD PTR _pNextSection$[ebp], eax

; 88   : 	else

	jmp	SHORT $L2639
$L2638:

; 89   : 		pNextSection = NULL;

	mov	DWORD PTR _pNextSection$[ebp], 0
$L2639:

; 90   : 
; 91   : 	// Return next section.
; 92   : 	return pNextSection;

	mov	eax, DWORD PTR _pNextSection$[ebp]

; 93   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getNextSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PAV21@@Z ENDP ; CPortableExecutable::getNextSectionHeader
_TEXT	ENDS
PUBLIC	?getRelocationTable@CPortableExecutable@@ABEPAXPAVCSectionHeader@1@@Z ; CPortableExecutable::getRelocationTable
_TEXT	SEGMENT
_pSection$ = 8
_this$ = -16
_pRelocationTable$ = -4
$T2774 = -8
$T2778 = -12
?getRelocationTable@CPortableExecutable@@ABEPAXPAVCSectionHeader@1@@Z PROC NEAR ; CPortableExecutable::getRelocationTable

; 105  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 106  : 	void* pRelocationTable;
; 107  : 
; 108  : 	pRelocationTable = (void*)((DWORD)(m_pOptionalHeader->getImageBase())+(DWORD)(pSection->getVirtualAddress()));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [ecx+28]
	mov	DWORD PTR $T2774[ebp], edx
	mov	eax, DWORD PTR _pSection$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR $T2778[ebp], ecx
	mov	edx, DWORD PTR $T2774[ebp]
	add	edx, DWORD PTR $T2778[ebp]
	mov	DWORD PTR _pRelocationTable$[ebp], edx

; 109  : 
; 110  : 	return pRelocationTable;

	mov	eax, DWORD PTR _pRelocationTable$[ebp]

; 111  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getRelocationTable@CPortableExecutable@@ABEPAXPAVCSectionHeader@1@@Z ENDP ; CPortableExecutable::getRelocationTable
_TEXT	ENDS
PUBLIC	?getSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PBD@Z ; CPortableExecutable::getSectionHeader
EXTRN	_strlen:NEAR
EXTRN	_strncmp:NEAR
_TEXT	SEGMENT
_pRequiredSectionName$ = 8
_this$ = -8
_pSection$ = -4
?getSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PBD@Z PROC NEAR ; CPortableExecutable::getSectionHeader

; 123  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 124  : 	CSectionHeader* pSection;
; 125  : 
; 126  : 	// Iterate across section headers.
; 127  : 	pSection = getFirstSectionHeader();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ ; CPortableExecutable::getFirstSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax
$L2654:

; 128  : 	while( pSection!=NULL )

	cmp	DWORD PTR _pSection$[ebp], 0
	je	SHORT $L2655

; 130  : 		// Compare section name with the one required.
; 131  : 		if( strncmp(pRequiredSectionName,pSection->getName(),strlen(pRequiredSectionName))==0 )

	mov	eax, DWORD PTR _pRequiredSectionName$[ebp]
	push	eax
	call	_strlen
	add	esp, 4
	push	eax
	mov	ecx, DWORD PTR _pSection$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pRequiredSectionName$[ebp]
	push	edx
	call	_strncmp
	add	esp, 12					; 0000000cH
	test	eax, eax
	jne	SHORT $L2656

; 132  : 			break;

	jmp	SHORT $L2655
$L2656:

; 133  : 
; 134  : 		// Get next section header.
; 135  : 		pSection = getNextSectionHeader( pSection );

	mov	eax, DWORD PTR _pSection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getNextSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PAV21@@Z ; CPortableExecutable::getNextSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax

; 136  : 	}

	jmp	SHORT $L2654
$L2655:

; 137  : 
; 138  : 	// Return section pointer.
; 139  : 	return pSection;

	mov	eax, DWORD PTR _pSection$[ebp]

; 140  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PBD@Z ENDP ; CPortableExecutable::getSectionHeader
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?mapImage@CPortableExecutable@@AAEPAXPAVCProcess@@@Z ; CPortableExecutable::mapImage
PUBLIC	?initialise@CPortableExecutable@@QAE_NPAVCProcess@@PAX@Z ; CPortableExecutable::initialise
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?dumpMemory@CCPU@@QAEXPAX@Z:NEAR		; CCPU::dumpMemory
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z:NEAR	; CProcess::getPhysicalAddress
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
_DATA	SEGMENT
$SG2666	DB	'initialise() - ', 00H
$SG2668	DB	'Raw image at 0x', 00H
$SG2678	DB	'.CRT', 00H
	ORG $+3
$SG2680	DB	'CRT', 00H
$SG2682	DB	'No CRT section.', 00H
$SG2689	DB	'CPortableExecutable::initialise() - Call initialiser 0x', 00H
$SG2691	DB	'Entry point 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pProcess$ = 8
_pRawImage$ = 12
_this$ = -44
_bSuccess$ = -20
_pSection$ = -24
_pInitialiser$ = -28
_pFunctionName$ = -16
$T2787 = -32
$T2791 = -36
$T2795 = -40
?initialise@CPortableExecutable@@QAE_NPAVCProcess@@PAX@Z PROC NEAR ; CPortableExecutable::initialise

; 153  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx

; 154  : 	bool bSuccess;
; 155  : 	CSectionHeader* pSection;
; 156  : 	void (**pInitialiser)();
; 157  : 	const char pFunctionName[] = "initialise() - ";

	mov	eax, DWORD PTR $SG2666
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2666+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2666+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2666+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax

; 158  : 
; 159  : 	// Base MZ header and calculate other header pointers.
; 160  : 	cout << m_pClassName << pFunctionName << "Raw image at 0x" << (DWORD)pRawImage << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pRawImage$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2668
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPortableExecutable@@0QBDB ; CPortableExecutable::m_pClassName
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

; 161  : 	m_pMZHeader = (CMZHeader*)pRawImage;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pRawImage$[ebp]
	mov	DWORD PTR [eax], ecx

; 162  : 	m_pPEHeader = (CPEHeader*)((DWORD)m_pMZHeader+m_pMZHeader->getPEHeaderOffset()+sizeof(m_iSignatureNT));

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR [eax+60]
	mov	DWORD PTR $T2787[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx]
	mov	ecx, DWORD PTR $T2787[ebp]
	lea	edx, DWORD PTR [eax+ecx+4]
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx

; 163  : 	m_pOptionalHeader = (COptionalHeader*)((DWORD)m_pPEHeader+sizeof(CPEHeader));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 20					; 00000014H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+8], edx

; 164  : 	m_pSectionHeaders = (CSectionHeader*)((DWORD)m_pOptionalHeader+sizeof(COptionalHeader));

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	add	edx, 224				; 000000e0H
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], edx

; 165  : 
; 166  : 	// Map image into desired address space.
; 167  : 	mapImage( pProcess );

	mov	ecx, DWORD PTR _pProcess$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?mapImage@CPortableExecutable@@AAEPAXPAVCProcess@@@Z ; CPortableExecutable::mapImage

; 168  : 
; 169  : 	// Look for '.CRT' section.
; 170  : 	pSection = getSectionHeader( ".CRT" );

	push	OFFSET FLAT:$SG2678
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PBD@Z ; CPortableExecutable::getSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax

; 171  : 	if( pSection==NULL )

	cmp	DWORD PTR _pSection$[ebp], 0
	jne	SHORT $L2679

; 172  : 		pSection = getSectionHeader( "CRT" );

	push	OFFSET FLAT:$SG2680
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PBD@Z ; CPortableExecutable::getSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax
$L2679:

; 173  : 	if( pSection==NULL )

	cmp	DWORD PTR _pSection$[ebp], 0
	jne	SHORT $L2681

; 175  : 		// Failed to find C runtime section - not necessarily a failure.
; 176  : 		cout << m_pClassName << pFunctionName << "No CRT section." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2682
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CPortableExecutable@@0QBDB ; CPortableExecutable::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 177  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1

; 179  : 	else

	jmp	SHORT $L2683
$L2681:

; 181  : 		// Call exectuable initialisation code.
; 182  : 		pInitialiser = (void(**)())(getRelocationTable( pSection ));

	mov	eax, DWORD PTR _pSection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getRelocationTable@CPortableExecutable@@ABEPAXPAVCSectionHeader@1@@Z ; CPortableExecutable::getRelocationTable
	mov	DWORD PTR _pInitialiser$[ebp], eax
$L2686:

; 183  : 		while( pInitialiser!=NULL )

	cmp	DWORD PTR _pInitialiser$[ebp], 0
	je	SHORT $L2687

; 185  : 			cout << "CPortableExecutable::initialise() - Call initialiser 0x" << (DWORD)(*pInitialiser) << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pInitialiser$[ebp]
	mov	edx, DWORD PTR [ecx]
	push	edx
	push	OFFSET FLAT:$SG2689
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 186  : 			//(*pInitialiser)();
; 187  : 			pInitialiser++;

	mov	eax, DWORD PTR _pInitialiser$[ebp]
	add	eax, 4
	mov	DWORD PTR _pInitialiser$[ebp], eax

; 188  : 		}

	jmp	SHORT $L2686
$L2687:

; 189  : 		bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1
$L2683:

; 191  : 
; 192  : 	// Dump entry point.
; 193  : 	cout << m_pClassName << pFunctionName << "Entry point 0x" << (DWORD)(m_pOptionalHeader->getEntryPoint()) << endl;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2791[ebp], edx
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR $T2791[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	edx, DWORD PTR $T2791[ebp]
	add	ecx, DWORD PTR [edx+28]
	push	ecx
	push	OFFSET FLAT:$SG2691
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CPortableExecutable@@0QBDB ; CPortableExecutable::m_pClassName
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

; 194  : 	Application.getSystem().getCPU().dumpMemory( pProcess->getPhysicalAddress(m_pOptionalHeader->getEntryPoint()) );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T2795[ebp], edx
	mov	eax, DWORD PTR $T2795[ebp]
	mov	ecx, DWORD PTR [eax+16]
	mov	edx, DWORD PTR $T2795[ebp]
	add	ecx, DWORD PTR [edx+28]
	push	ecx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z ; CProcess::getPhysicalAddress
	push	eax
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?dumpMemory@CCPU@@QAEXPAX@Z		; CCPU::dumpMemory

; 195  : 
; 196  : 	// Return success state.
; 197  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 198  : }

	mov	esp, ebp
	pop	ebp
	ret	8
?initialise@CPortableExecutable@@QAE_NPAVCProcess@@PAX@Z ENDP ; CPortableExecutable::initialise
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
PUBLIC	?relocateSections@CPortableExecutable@@AAE_NPAVCProcess@@@Z ; CPortableExecutable::relocateSections
EXTRN	??6ostream@@QAEAAV0@G@Z:NEAR			; ostream::operator<<
_DATA	SEGMENT
	ORG $+1
$SG2698	DB	'mapImage() - ', 00H
	ORG $+2
$SG2706	DB	'MZ signature not matched, found 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pProcess$ = 8
_this$ = -44
_pEntryPoint$ = -20
_pFunctionName$ = -16
$T2802 = -24
$T2806 = -28
$T2810 = -32
$T2814 = -36
$T2818 = -40
?mapImage@CPortableExecutable@@AAEPAXPAVCProcess@@@Z PROC NEAR ; CPortableExecutable::mapImage

; 211  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx

; 212  : 	void* pEntryPoint;
; 213  : 	const char pFunctionName[] = "mapImage() - ";

	mov	eax, DWORD PTR $SG2698
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2698+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2698+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	ax, WORD PTR $SG2698+12
	mov	WORD PTR _pFunctionName$[ebp+12], ax

; 214  : 
; 215  : 	// Assume function will fail.
; 216  : 	pEntryPoint = NULL;

	mov	DWORD PTR _pEntryPoint$[ebp], 0

; 217  : 
; 218  : 	// Check MZ signature.
; 219  : 	if( m_pMZHeader->getSignature()==m_iSignatureMZ )

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	ax, WORD PTR [edx]
	mov	WORD PTR $T2802[ebp], ax
	mov	ecx, DWORD PTR $T2802[ebp]
	and	ecx, 65535				; 0000ffffH
	cmp	ecx, 23117				; 00005a4dH
	jne	SHORT $L2699

; 221  : 		// Check NT signature.
; 222  : 		if( m_pPEHeader->getSignature()==m_iSignatureNT )

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	ecx, DWORD PTR [eax-4]
	mov	DWORD PTR $T2806[ebp], ecx
	cmp	DWORD PTR $T2806[ebp], 17744		; 00004550H
	jne	SHORT $L2701

; 224  : 			// Relocate PE sections.
; 225  : 			if( relocateSections( pProcess )==true )

	mov	edx, DWORD PTR _pProcess$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?relocateSections@CPortableExecutable@@AAE_NPAVCProcess@@@Z ; CPortableExecutable::relocateSections
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2701

; 227  : 				// Return in success state.
; 228  : 				pEntryPoint = (void*)((DWORD)(m_pOptionalHeader->getImageBase()) + (DWORD)(m_pOptionalHeader->getEntryPoint()));

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	edx, DWORD PTR [ecx+28]
	mov	DWORD PTR $T2810[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T2814[ebp], ecx
	mov	edx, DWORD PTR $T2814[ebp]
	mov	eax, DWORD PTR [edx+16]
	mov	ecx, DWORD PTR $T2814[ebp]
	add	eax, DWORD PTR [ecx+28]
	mov	edx, DWORD PTR $T2810[ebp]
	add	edx, eax
	mov	DWORD PTR _pEntryPoint$[ebp], edx
$L2701:

; 232  : 	else

	jmp	SHORT $L2705
$L2699:

; 234  : 		// MZ signature not found.
; 235  : 		cout << m_pClassName << pFunctionName << "MZ signature not matched, found 0x" << m_pMZHeader->getSignature() << endl;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	dx, WORD PTR [ecx]
	mov	WORD PTR $T2818[ebp], dx
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ax, WORD PTR $T2818[ebp]
	push	eax
	push	OFFSET FLAT:$SG2706
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CPortableExecutable@@0QBDB ; CPortableExecutable::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@G@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2705:

; 237  : 
; 238  : 	// Return entry point.
; 239  : 	return pEntryPoint;

	mov	eax, DWORD PTR _pEntryPoint$[ebp]

; 240  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?mapImage@CPortableExecutable@@AAEPAXPAVCProcess@@@Z ENDP ; CPortableExecutable::mapImage
_TEXT	ENDS
PUBLIC	?relocate@CSectionHeader@CPortableExecutable@@QAE_NPAVCProcess@@PAVCMZHeader@@PAVCOptionalHeader@2@_N@Z ; CPortableExecutable::CSectionHeader::relocate
_TEXT	SEGMENT
_pProcess$ = 8
_this$ = -12
_bSuccess$ = -4
_pSection$ = -8
?relocateSections@CPortableExecutable@@AAE_NPAVCProcess@@@Z PROC NEAR ; CPortableExecutable::relocateSections

; 253  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 12					; 0000000cH
	mov	DWORD PTR _this$[ebp], ecx

; 254  : 	bool bSuccess;
; 255  : 	CSectionHeader* pSection;
; 256  : 
; 257  : 	// Relocate each section.
; 258  : 	bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1

; 259  : 	pSection = getFirstSectionHeader();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getFirstSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@XZ ; CPortableExecutable::getFirstSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax
$L2714:

; 260  : 	while( pSection!=NULL && bSuccess==true )

	cmp	DWORD PTR _pSection$[ebp], 0
	je	SHORT $L2715
	mov	eax, DWORD PTR _bSuccess$[ebp]
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2715

; 262  : 		// Relocate this section.
; 263  : 		bSuccess = pSection->relocate( pProcess, m_pMZHeader, m_pOptionalHeader, m_bDebug );

	push	0
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax]
	push	ecx
	mov	edx, DWORD PTR _pProcess$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pSection$[ebp]
	call	?relocate@CSectionHeader@CPortableExecutable@@QAE_NPAVCProcess@@PAVCMZHeader@@PAVCOptionalHeader@2@_N@Z ; CPortableExecutable::CSectionHeader::relocate
	mov	BYTE PTR _bSuccess$[ebp], al

; 264  : 
; 265  : 		// Move to next section.
; 266  : 		pSection = getNextSectionHeader( pSection );

	mov	eax, DWORD PTR _pSection$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getNextSectionHeader@CPortableExecutable@@AAEPAVCSectionHeader@1@PAV21@@Z ; CPortableExecutable::getNextSectionHeader
	mov	DWORD PTR _pSection$[ebp], eax

; 267  : 	}

	jmp	SHORT $L2714
$L2715:

; 268  : 
; 269  : 	// Return success state.
; 270  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 271  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?relocateSections@CPortableExecutable@@AAE_NPAVCProcess@@@Z ENDP ; CPortableExecutable::relocateSections
_TEXT	ENDS
EXTRN	_memcpy:NEAR
EXTRN	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z:NEAR ; CProcess::allocateMemory
_DATA	SEGMENT
	ORG $+1
$SG2726	DB	'relocate -', 00H
	ORG $+1
$SG2732	DB	'''', 00H
	ORG $+2
$SG2733	DB	''' from 0x', 00H
	ORG $+2
$SG2734	DB	' to linear 0x', 00H
	ORG $+2
$SG2735	DB	' size 0x', 00H
	ORG $+3
$SG2739	DB	'''', 00H
	ORG $+2
$SG2740	DB	''' from 0x', 00H
	ORG $+2
$SG2741	DB	' to physical 0x', 00H
$SG2742	DB	' size 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pProcess$ = 8
_pMZHeader$ = 12
_pOptionalHeader$ = 16
_bDebug$ = 20
_this$ = -28
_pSource$ = -16
_pDestination$ = -20
_pFunctionName$ = -12
$T2824 = -24
?relocate@CSectionHeader@CPortableExecutable@@QAE_NPAVCProcess@@PAVCMZHeader@@PAVCOptionalHeader@2@_N@Z PROC NEAR ; CPortableExecutable::CSectionHeader::relocate

; 284  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	mov	DWORD PTR _this$[ebp], ecx

; 285  : 	void* pSource;
; 286  : 	void* pDestination;
; 287  : 	const char pFunctionName[] = "relocate -";

	mov	eax, DWORD PTR $SG2726
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2726+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	dx, WORD PTR $SG2726+8
	mov	WORD PTR _pFunctionName$[ebp+8], dx
	mov	al, BYTE PTR $SG2726+10
	mov	BYTE PTR _pFunctionName$[ebp+10], al

; 288  : 
; 289  : 	// Relocate section by physically copying contents.
; 290  : 	pSource = (BYTE*)pMZHeader + m_iPointerToRawData;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pMZHeader$[ebp]
	add	edx, DWORD PTR [ecx+20]
	mov	DWORD PTR _pSource$[ebp], edx

; 291  : 	pDestination = (BYTE*)(pOptionalHeader->getImageBase()) + m_iVirtualAddress;

	mov	eax, DWORD PTR _pOptionalHeader$[ebp]
	mov	ecx, DWORD PTR [eax+28]
	mov	DWORD PTR $T2824[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR $T2824[ebp]
	add	eax, DWORD PTR [edx+12]
	mov	DWORD PTR _pDestination$[ebp], eax

; 292  : 	if(bDebug) cout << m_pClassName << pFunctionName << "'" << m_pName << "' from 0x" << (DWORD)pSource << " to linear 0x" << (DWORD)pDestination << " size 0x" << m_iSizeOfRawData << endl;

	mov	ecx, DWORD PTR _bDebug$[ebp]
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	je	$L2729
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+16]
	push	eax
	push	OFFSET FLAT:$SG2735
	mov	ecx, DWORD PTR _pDestination$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2734
	mov	edx, DWORD PTR _pSource$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2733
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2732
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CSectionHeader@CPortableExecutable@@0QBDB ; CPortableExecutable::CSectionHeader::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
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
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2729:

; 293  : 	
; 294  : 	// Commit process address space required by section.
; 295  : 	pProcess->allocateMemory( pDestination, m_iSizeOfRawData, AT_COMMIT, MT_EXECUTE_READ_WRITE );

	push	7
	push	1
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+16]
	push	eax
	mov	ecx, DWORD PTR _pDestination$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?allocateMemory@CProcess@@QAEPAXPBXKW4EAllocationType@@W4EMemoryType@@@Z ; CProcess::allocateMemory

; 296  : 	pDestination = pProcess->getPhysicalAddress( pDestination );

	mov	edx, DWORD PTR _pDestination$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pProcess$[ebp]
	call	?getPhysicalAddress@CProcess@@QAEPAXPBX@Z ; CProcess::getPhysicalAddress
	mov	DWORD PTR _pDestination$[ebp], eax

; 297  : 	if(bDebug) cout << m_pClassName << pFunctionName << "'" << m_pName << "' from 0x" << (DWORD)pSource << " to physical 0x" << (DWORD)pDestination << " size 0x" << m_iSizeOfRawData << endl;

	mov	eax, DWORD PTR _bDebug$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	$L2736
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	push	edx
	push	OFFSET FLAT:$SG2742
	mov	eax, DWORD PTR _pDestination$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2741
	mov	ecx, DWORD PTR _pSource$[ebp]
	push	ecx
	push	OFFSET FLAT:$SG2740
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	push	OFFSET FLAT:$SG2739
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CSectionHeader@CPortableExecutable@@0QBDB ; CPortableExecutable::CSectionHeader::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
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
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2736:

; 298  : 	memcpy( pDestination, pSource, m_iSizeOfRawData );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+16]
	push	edx
	mov	eax, DWORD PTR _pSource$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pDestination$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 299  : 
; 300  : 	// Return true - until there's something that could fail.
; 301  : 	return true;

	mov	al, 1

; 302  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?relocate@CSectionHeader@CPortableExecutable@@QAE_NPAVCProcess@@PAVCMZHeader@@PAVCOptionalHeader@2@_N@Z ENDP ; CPortableExecutable::CSectionHeader::relocate
_TEXT	ENDS
END
