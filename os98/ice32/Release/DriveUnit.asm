	TITLE	E:\WORKSHOP\os98\ice32\DriveUnit.cpp
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
;	COMDAT ??_GCDriveUnit@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_7CDriveUnit@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CDriveUnit@@0QBDB			; CDriveUnit::m_pClassName
CONST	SEGMENT
?m_pClassName@CDriveUnit@@0QBDB DB 'DriveUnit::', 00H	; CDriveUnit::m_pClassName
CONST	ENDS
PUBLIC	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ; CDriveUnit::CDriveUnit
PUBLIC	?getImageSize@CDriveUnit@@UAEKXZ		; CDriveUnit::getImageSize
PUBLIC	?getName@CDriveUnit@@UAEPADXZ			; CDriveUnit::getName
PUBLIC	?readBootImage@CDriveUnit@@UAEKPAX@Z		; CDriveUnit::readBootImage
PUBLIC	??_7CDriveUnit@@6B@				; CDriveUnit::`vftable'
PUBLIC	??_GCDriveUnit@@UAEPAXI@Z			; CDriveUnit::`scalar deleting destructor'
PUBLIC	??_ECDriveUnit@@UAEPAXI@Z			; CDriveUnit::`vector deleting destructor'
EXTRN	??0CBootDevice@@QAE@XZ:NEAR			; CBootDevice::CBootDevice
;	COMDAT ??_7CDriveUnit@@6B@
; File E:\WORKSHOP\os98\ice32\DriveUnit.cpp
CONST	SEGMENT
??_7CDriveUnit@@6B@ DD FLAT:??_ECDriveUnit@@UAEPAXI@Z	; CDriveUnit::`vftable'
	DD	FLAT:?getName@CDriveUnit@@UAEPADXZ
	DD	FLAT:?getImageSize@CDriveUnit@@UAEKXZ
	DD	FLAT:?readBootImage@CDriveUnit@@UAEKPAX@Z
CONST	ENDS
_DATA	SEGMENT
$SG812	DB	'fd0', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pController$ = 8
_iUnitNumber$ = 12
_this$ = -4
??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z PROC NEAR ; CDriveUnit::CDriveUnit

; 18   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CBootDevice@@QAE@XZ			; CBootDevice::CBootDevice
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDriveUnit@@6B@ ; CDriveUnit::`vftable'

; 19   : 	// Initalise member values.
; 20   : 	m_iBootBlockStart		= 1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 1

; 21   : 	m_iBootBlockCount		= 4;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 4

; 22   : 	m_iBytesPerBlock		= 512;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 512			; 00000200H

; 23   : 	m_iCurrentCylinder		= -1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+16], -1

; 24   : 	m_iCylindersPerPlatter	= 80;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+20], 80			; 00000050H

; 25   : 	m_iDataBytesPerSector	= 2;

	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+24], 2

; 26   : 	m_iDataLength			= 255;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+25], 255			; 000000ffH

; 27   : 	m_pDriveController		= (CFloppyDiskController*)pController;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _pController$[ebp]
	mov	DWORD PTR [edx+26], eax

; 28   : 	m_iEndOfTrack			= 18;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+30], 18			; 00000012H

; 29   : 	m_iGapLength			= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+31], 0

; 30   : 	m_iHeadsPerDisk			= 2;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+32], 2

; 31   : 	m_bMotorOffRequestFlag	= true;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [ecx+36], 1

; 32   : 	m_bMounted				= false;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+37], 0

; 33   : 	m_iSectorsPerTrack		= 18;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+42], 18			; 00000012H

; 34   : 	m_iTimeToMotorOff		= 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+46], 0

; 35   : 	m_iUnitNumber			= iUnitNumber;

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _iUnitNumber$[ebp]
	mov	DWORD PTR [edx+50], eax

; 36   : 
; 37   : 	// Create object name.
; 38   : 	m_pName = "fd0";

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+38], OFFSET FLAT:$SG812

; 39   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	8
??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ENDP	; CDriveUnit::CDriveUnit
_TEXT	ENDS
PUBLIC	??1CDriveUnit@@UAE@XZ				; CDriveUnit::~CDriveUnit
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCDriveUnit@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCDriveUnit@@UAEPAXI@Z PROC NEAR			; CDriveUnit::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CDriveUnit@@UAE@XZ			; CDriveUnit::~CDriveUnit
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L816
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L816:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCDriveUnit@@UAEPAXI@Z ENDP				; CDriveUnit::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CBootDevice@@UAE@XZ:NEAR			; CBootDevice::~CBootDevice
_TEXT	SEGMENT
_this$ = -4
??1CDriveUnit@@UAE@XZ PROC NEAR				; CDriveUnit::~CDriveUnit

; 43   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CDriveUnit@@6B@ ; CDriveUnit::`vftable'

; 44   : 
; 45   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CBootDevice@@UAE@XZ			; CBootDevice::~CBootDevice
	mov	esp, ebp
	pop	ebp
	ret	0
??1CDriveUnit@@UAE@XZ ENDP				; CDriveUnit::~CDriveUnit
_TEXT	ENDS
PUBLIC	?getBytesPerBlock@CDriveUnit@@QAEKXZ		; CDriveUnit::getBytesPerBlock
_TEXT	SEGMENT
_this$ = -4
?getBytesPerBlock@CDriveUnit@@QAEKXZ PROC NEAR		; CDriveUnit::getBytesPerBlock

; 58   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 59   : 	// Return bytes per block.
; 60   : 	return m_iBytesPerBlock;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+12]

; 61   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getBytesPerBlock@CDriveUnit@@QAEKXZ ENDP		; CDriveUnit::getBytesPerBlock
_TEXT	ENDS
PUBLIC	?getCurrentCylinder@CDriveUnit@@QAEKXZ		; CDriveUnit::getCurrentCylinder
_TEXT	SEGMENT
_this$ = -4
?getCurrentCylinder@CDriveUnit@@QAEKXZ PROC NEAR	; CDriveUnit::getCurrentCylinder

; 75   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 76   : 	// Return the current cylinder.
; 77   : 	return m_iCurrentCylinder;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+16]

; 78   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getCurrentCylinder@CDriveUnit@@QAEKXZ ENDP		; CDriveUnit::getCurrentCylinder
_TEXT	ENDS
PUBLIC	?getCylinder@CDriveUnit@@QAEKK@Z		; CDriveUnit::getCylinder
_TEXT	SEGMENT
_iLinearSector$ = 8
_this$ = -4
?getCylinder@CDriveUnit@@QAEKK@Z PROC NEAR		; CDriveUnit::getCylinder

; 91   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 92   : 	// Return cylinder number.
; 93   : 	return (iLinearSector/m_iSectorsPerTrack)/m_iHeadsPerDisk;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _iLinearSector$[ebp]
	xor	edx, edx
	div	DWORD PTR [ecx+42]
	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	div	DWORD PTR [ecx+32]

; 94   : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getCylinder@CDriveUnit@@QAEKK@Z ENDP			; CDriveUnit::getCylinder
_TEXT	ENDS
PUBLIC	?getDataBytesPerSector@CDriveUnit@@QAEKXZ	; CDriveUnit::getDataBytesPerSector
_TEXT	SEGMENT
_this$ = -4
?getDataBytesPerSector@CDriveUnit@@QAEKXZ PROC NEAR	; CDriveUnit::getDataBytesPerSector

; 107  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 108  : 	// Return data bytes per sector.
; 109  : 	return m_iDataBytesPerSector;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+24]
	mov	eax, ecx

; 110  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDataBytesPerSector@CDriveUnit@@QAEKXZ ENDP		; CDriveUnit::getDataBytesPerSector
_TEXT	ENDS
PUBLIC	?getDataLength@CDriveUnit@@QAEKXZ		; CDriveUnit::getDataLength
_TEXT	SEGMENT
_this$ = -4
?getDataLength@CDriveUnit@@QAEKXZ PROC NEAR		; CDriveUnit::getDataLength

; 123  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 124  : 	// Return data length setting.
; 125  : 	return m_iDataLength;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+25]
	mov	eax, ecx

; 126  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getDataLength@CDriveUnit@@QAEKXZ ENDP			; CDriveUnit::getDataLength
_TEXT	ENDS
PUBLIC	?getGapLength@CDriveUnit@@QAEKXZ		; CDriveUnit::getGapLength
_TEXT	SEGMENT
_this$ = -4
?getGapLength@CDriveUnit@@QAEKXZ PROC NEAR		; CDriveUnit::getGapLength

; 139  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 140  : 	// Return data length setting.
; 141  : 	return m_iGapLength;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+31]
	mov	eax, ecx

; 142  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getGapLength@CDriveUnit@@QAEKXZ ENDP			; CDriveUnit::getGapLength
_TEXT	ENDS
PUBLIC	?getEndOfTrack@CDriveUnit@@QAEKXZ		; CDriveUnit::getEndOfTrack
_TEXT	SEGMENT
_this$ = -4
?getEndOfTrack@CDriveUnit@@QAEKXZ PROC NEAR		; CDriveUnit::getEndOfTrack

; 155  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 156  : 	// Return data length setting.
; 157  : 	return m_iEndOfTrack;

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+30]
	mov	eax, ecx

; 158  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getEndOfTrack@CDriveUnit@@QAEKXZ ENDP			; CDriveUnit::getEndOfTrack
_TEXT	ENDS
PUBLIC	?getHead@CDriveUnit@@QAEKK@Z			; CDriveUnit::getHead
_TEXT	SEGMENT
_iLinearSector$ = 8
_this$ = -4
?getHead@CDriveUnit@@QAEKK@Z PROC NEAR			; CDriveUnit::getHead

; 171  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 172  : 	// Return head number.
; 173  : 	return (iLinearSector/m_iSectorsPerTrack)%m_iHeadsPerDisk;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _iLinearSector$[ebp]
	xor	edx, edx
	div	DWORD PTR [ecx+42]
	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	div	DWORD PTR [ecx+32]
	mov	eax, edx

; 174  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getHead@CDriveUnit@@QAEKK@Z ENDP			; CDriveUnit::getHead
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	?getImageBase@CDriveUnit@@QAEPAXXZ		; CDriveUnit::getImageBase
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
_DATA	SEGMENT
$SG849	DB	'getImageBase() = 0x00200000', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?getImageBase@CDriveUnit@@QAEPAXXZ PROC NEAR		; CDriveUnit::getImageBase

; 187  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 188  : 	// Return boot image base.
; 189  : 	cout << m_pClassName << "getImageBase() = 0x00200000" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG849
	push	OFFSET FLAT:?m_pClassName@CDriveUnit@@0QBDB ; CDriveUnit::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 190  : 	return (void*)0x00200000;

	mov	eax, 2097152				; 00200000H

; 191  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getImageBase@CDriveUnit@@QAEPAXXZ ENDP			; CDriveUnit::getImageBase
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
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
_DATA	SEGMENT
$SG855	DB	'DU: Image size = 0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -8
_iImageSize$ = -4
?getImageSize@CDriveUnit@@UAEKXZ PROC NEAR		; CDriveUnit::getImageSize

; 204  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 205  : 	unsigned long iImageSize;
; 206  : 
; 207  : 	// Return bytes in boot image.
; 208  : 	iImageSize = m_iBootBlockCount*getBytesPerBlock();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	imul	edx, eax
	mov	DWORD PTR _iImageSize$[ebp], edx

; 209  : 	cout << "DU: Image size = 0x" << iImageSize << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iImageSize$[ebp]
	push	eax
	push	OFFSET FLAT:$SG855
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 210  : 	return iImageSize;

	mov	eax, DWORD PTR _iImageSize$[ebp]

; 211  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getImageSize@CDriveUnit@@UAEKXZ ENDP			; CDriveUnit::getImageSize
_TEXT	ENDS
PUBLIC	?getMotorOffRequestFlag@CDriveUnit@@QBE?B_NXZ	; CDriveUnit::getMotorOffRequestFlag
_TEXT	SEGMENT
_this$ = -4
?getMotorOffRequestFlag@CDriveUnit@@QBE?B_NXZ PROC NEAR	; CDriveUnit::getMotorOffRequestFlag

; 224  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 225  : 	// Return motor off request flag.
; 226  : 	return m_bMotorOffRequestFlag;

	mov	eax, DWORD PTR _this$[ebp]
	mov	al, BYTE PTR [eax+36]

; 227  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getMotorOffRequestFlag@CDriveUnit@@QBE?B_NXZ ENDP	; CDriveUnit::getMotorOffRequestFlag
_this$ = -4
?getName@CDriveUnit@@UAEPADXZ PROC NEAR			; CDriveUnit::getName

; 240  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 241  : 	// Return device name.
; 242  : 	return m_pName;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+38]

; 243  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getName@CDriveUnit@@UAEPADXZ ENDP			; CDriveUnit::getName
_TEXT	ENDS
PUBLIC	?getSector@CDriveUnit@@QAEKK@Z			; CDriveUnit::getSector
_TEXT	SEGMENT
_iLinearSector$ = 8
_this$ = -4
?getSector@CDriveUnit@@QAEKK@Z PROC NEAR		; CDriveUnit::getSector

; 256  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 257  : 	// Return sector number.
; 258  : 	return (iLinearSector%m_iSectorsPerTrack)+1;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR _iLinearSector$[ebp]
	xor	edx, edx
	div	DWORD PTR [ecx+42]
	mov	eax, edx
	add	eax, 1

; 259  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?getSector@CDriveUnit@@QAEKK@Z ENDP			; CDriveUnit::getSector
_TEXT	ENDS
PUBLIC	?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ		; CDriveUnit::getTimeToMotorOff
_TEXT	SEGMENT
_this$ = -4
?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ PROC NEAR	; CDriveUnit::getTimeToMotorOff

; 272  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 273  : 	// Return time units.
; 274  : 	return m_iTimeToMotorOff;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+46]

; 275  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ ENDP		; CDriveUnit::getTimeToMotorOff
_TEXT	ENDS
PUBLIC	?getUnitNumber@CDriveUnit@@QBE?BKXZ		; CDriveUnit::getUnitNumber
_TEXT	SEGMENT
_this$ = -4
?getUnitNumber@CDriveUnit@@QBE?BKXZ PROC NEAR		; CDriveUnit::getUnitNumber

; 288  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 289  : 	// Return the unit number.
; 290  : 	return m_iUnitNumber;

	mov	eax, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [eax+50]

; 291  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getUnitNumber@CDriveUnit@@QBE?BKXZ ENDP		; CDriveUnit::getUnitNumber
_TEXT	ENDS
PUBLIC	?motorOff@CDriveUnit@@QAEXXZ			; CDriveUnit::motorOff
EXTRN	?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z:NEAR ; CFloppyDiskController::requestMotorOff
_TEXT	SEGMENT
_this$ = -4
?motorOff@CDriveUnit@@QAEXXZ PROC NEAR			; CDriveUnit::motorOff

; 304  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 305  : 	// Instruct the controller to turn this motor off.
; 306  : 	m_pDriveController->requestMotorOff( this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+26]
	call	?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOff

; 307  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?motorOff@CDriveUnit@@QAEXXZ ENDP			; CDriveUnit::motorOff
_TEXT	ENDS
PUBLIC	?motorOn@CDriveUnit@@QAEXXZ			; CDriveUnit::motorOn
EXTRN	?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z:NEAR ; CFloppyDiskController::requestMotorOn
_TEXT	SEGMENT
_this$ = -4
?motorOn@CDriveUnit@@QAEXXZ PROC NEAR			; CDriveUnit::motorOn

; 320  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 321  : 	// Instruct the controller to turn this motor on.
; 322  : 	m_pDriveController->requestMotorOn( this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+26]
	call	?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOn

; 323  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?motorOn@CDriveUnit@@QAEXXZ ENDP			; CDriveUnit::motorOn
_TEXT	ENDS
PUBLIC	?readBlocks@CDriveUnit@@QAEKKKPAX@Z		; CDriveUnit::readBlocks
EXTRN	?readBlocks@CFloppyDiskController@@QAEKPAVCDriveUnit@@KKPAX@Z:NEAR ; CFloppyDiskController::readBlocks
_TEXT	SEGMENT
_iFirstBlock$ = 8
_iCount$ = 12
_pBuffer$ = 16
_this$ = -8
_iBlocksRead$ = -4
?readBlocks@CDriveUnit@@QAEKKKPAX@Z PROC NEAR		; CDriveUnit::readBlocks

; 336  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 337  : 	unsigned long iBlocksRead;
; 338  : 
; 339  : 	// Instruct controller to read from this unit.
; 340  : 	iBlocksRead = m_pDriveController->readBlocks( this, iFirstBlock, iCount, pBuffer );

	mov	eax, DWORD PTR _pBuffer$[ebp]
	push	eax
	mov	ecx, DWORD PTR _iCount$[ebp]
	push	ecx
	mov	edx, DWORD PTR _iFirstBlock$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+26]
	call	?readBlocks@CFloppyDiskController@@QAEKPAVCDriveUnit@@KKPAX@Z ; CFloppyDiskController::readBlocks
	mov	DWORD PTR _iBlocksRead$[ebp], eax

; 341  : 
; 342  : 	// Return number of blocks read.
; 343  : 	return iBlocksRead;

	mov	eax, DWORD PTR _iBlocksRead$[ebp]

; 344  : 
; 345  : }

	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?readBlocks@CDriveUnit@@QAEKKKPAX@Z ENDP		; CDriveUnit::readBlocks
_TEXT	ENDS
_DATA	SEGMENT
$SG891	DB	'readBootImage() - ', 00H
	ORG $+1
$SG892	DB	'Unit ', 00H
	ORG $+2
$SG893	DB	'Read ', 00H
	ORG $+2
$SG894	DB	' byte of image.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pPhysicalAddress$ = 8
_this$ = -28
_iActualImageSize$ = -24
_pFunctionName$ = -20
?readBootImage@CDriveUnit@@UAEKPAX@Z PROC NEAR		; CDriveUnit::readBootImage

; 358  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	mov	DWORD PTR _this$[ebp], ecx

; 359  : 	unsigned long iActualImageSize;
; 360  : 	const char pFunctionName[] = "readBootImage() - ";

	mov	eax, DWORD PTR $SG891
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG891+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG891+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG891+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cx, WORD PTR $SG891+16
	mov	WORD PTR _pFunctionName$[ebp+16], cx
	mov	dl, BYTE PTR $SG891+18
	mov	BYTE PTR _pFunctionName$[ebp+18], dl

; 361  : 
; 362  : 	cout << m_pClassName << pFunctionName << "Unit " << getUnitNumber() << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	push	eax
	push	OFFSET FLAT:$SG892
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CDriveUnit@@0QBDB ; CDriveUnit::m_pClassName
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

; 363  : 
; 364  : 	// Load first n sectors from drive.
; 365  : 	readBlocks( m_iBootBlockStart, m_iBootBlockCount, pPhysicalAddress );

	mov	ecx, DWORD PTR _pPhysicalAddress$[ebp]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?readBlocks@CDriveUnit@@QAEKKKPAX@Z	; CDriveUnit::readBlocks

; 366  : 	cout << m_pClassName << pFunctionName << "Read " << iActualImageSize << " byte of image." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG894
	mov	eax, DWORD PTR _iActualImageSize$[ebp]
	push	eax
	push	OFFSET FLAT:$SG893
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CDriveUnit@@0QBDB ; CDriveUnit::m_pClassName
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

; 367  : 
; 368  : 	// Return actual image size.
; 369  : 	return iActualImageSize;

	mov	eax, DWORD PTR _iActualImageSize$[ebp]

; 370  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?readBootImage@CDriveUnit@@UAEKPAX@Z ENDP		; CDriveUnit::readBootImage
_TEXT	ENDS
PUBLIC	?select@CDriveUnit@@QAEXXZ			; CDriveUnit::select
EXTRN	?select@CFloppyDiskController@@QAEXPBVCDriveUnit@@@Z:NEAR ; CFloppyDiskController::select
_TEXT	SEGMENT
_this$ = -4
?select@CDriveUnit@@QAEXXZ PROC NEAR			; CDriveUnit::select

; 383  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 384  : 	// Instruct controller to select this drive.
; 385  : 	m_pDriveController->select( this );

	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+26]
	call	?select@CFloppyDiskController@@QAEXPBVCDriveUnit@@@Z ; CFloppyDiskController::select

; 386  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?select@CDriveUnit@@QAEXXZ ENDP				; CDriveUnit::select
_TEXT	ENDS
PUBLIC	?setCurrentCylinder@CDriveUnit@@QAEXK@Z		; CDriveUnit::setCurrentCylinder
_TEXT	SEGMENT
_iCylinder$ = 8
_this$ = -4
?setCurrentCylinder@CDriveUnit@@QAEXK@Z PROC NEAR	; CDriveUnit::setCurrentCylinder

; 399  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 400  : 	// Store current cylinder.
; 401  : 	m_iCurrentCylinder = iCylinder;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _iCylinder$[ebp]
	mov	DWORD PTR [eax+16], ecx

; 402  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setCurrentCylinder@CDriveUnit@@QAEXK@Z ENDP		; CDriveUnit::setCurrentCylinder
_TEXT	ENDS
PUBLIC	?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z	; CDriveUnit::setMotorOffRequestFlag
_TEXT	SEGMENT
_bMotorOffRequest$ = 8
_this$ = -4
?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z PROC NEAR	; CDriveUnit::setMotorOffRequestFlag

; 415  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 416  : 	// Set flag.
; 417  : 	m_bMotorOffRequestFlag = bMotorOffRequest;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _bMotorOffRequest$[ebp]
	mov	BYTE PTR [eax+36], cl

; 418  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z ENDP	; CDriveUnit::setMotorOffRequestFlag
_TEXT	ENDS
PUBLIC	?setTimeToMotorOff@CDriveUnit@@QAEXK@Z		; CDriveUnit::setTimeToMotorOff
_TEXT	SEGMENT
_iTimeToMotorOff$ = 8
_this$ = -4
?setTimeToMotorOff@CDriveUnit@@QAEXK@Z PROC NEAR	; CDriveUnit::setTimeToMotorOff

; 431  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 432  : 	// Set member variable.
; 433  : 	m_iTimeToMotorOff = iTimeToMotorOff;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _iTimeToMotorOff$[ebp]
	mov	DWORD PTR [eax+46], ecx

; 434  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setTimeToMotorOff@CDriveUnit@@QAEXK@Z ENDP		; CDriveUnit::setTimeToMotorOff
_TEXT	ENDS
END
