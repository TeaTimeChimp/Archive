	TITLE	E:\WORKSHOP\os98\ice32\FloppyDiskController.cpp
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
;	COMDAT ??_C@_07IHEJ@push?$CI0x?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
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
;	COMDAT ??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
;	COMDAT ??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@
_DATA	SEGMENT DWORD USE32 PUBLIC 'DATA'
_DATA	ENDS
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
;	COMDAT ??0CCommand@CFloppyDiskController@@QAE@_NEEE@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getCommandByte@CCommand@CFloppyDiskController@@QBE?BEXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNumberOfParameters@CCommand@CFloppyDiskController@@QBE?BEXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNumberOfResults@CCommand@CFloppyDiskController@@QBE?BEXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getInterruptTriggerFlag@CCommand@CFloppyDiskController@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCFloppyDiskController@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCollection@PAVCDriveUnit@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TList@PAVCDriveUnit@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TList@PAVCDriveUnit@@@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?insert@?$TList@PAVCDriveUnit@@@@QAEXPAVCDriveUnit@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TQueue@E@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TQueue@E@@UAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?flush@?$TQueue@E@@QAEXXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?pop@?$TQueue@E@@QAEEXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?push@?$TQueue@E@@QAEXE@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCursor@PAVCDriveUnit@@@@QAE@AAV?$TCollection@PAVCDriveUnit@@@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1?$TCursor@PAVCDriveUnit@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?first@?$TCursor@PAVCDriveUnit@@@@QAEQAVCDriveUnit@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?more@?$TCursor@PAVCDriveUnit@@@@QBE?B_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?next@?$TCursor@PAVCDriveUnit@@@@QAEQAVCDriveUnit@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDriveUnit@@@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_G?$TQueue@E@@UAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CNode@?$TCollection@PAVCDriveUnit@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CNode@?$TCollection@PAVCDriveUnit@@@@QBEPAVCDriveUnit@@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNext@CNode@?$TCollection@PAVCDriveUnit@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setItem@CNode@?$TCollection@PAVCDriveUnit@@@@QAEXPAVCDriveUnit@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNext@CNode@?$TCollection@PAVCDriveUnit@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setPrevious@CNode@?$TCollection@PAVCDriveUnit@@@@QAEXPAV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0CLink@?$TQueue@E@@QAE@E@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getItem@CLink@?$TQueue@E@@QAEEXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getNewer@CLink@?$TQueue@E@@QBEPBV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setNewer@CLink@?$TQueue@E@@QAEXPBV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?setOlder@CLink@?$TQueue@E@@QAEXPBV12@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??0?$TCollection@PAVCDriveUnit@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?remove@?$TList@PAVCDriveUnit@@@@QAEXPAVCDriveUnit@@@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?isEmpty@?$TQueue@E@@QAE_NXZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??_GCNode@?$TCollection@PAVCDriveUnit@@@@QAEPAXI@Z
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ??1CNode@?$TCollection@PAVCDriveUnit@@@@QAE@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?getPrevious@CNode@?$TCollection@PAVCDriveUnit@@@@QBEPAV12@XZ
_TEXT	SEGMENT PARA USE32 PUBLIC 'CODE'
_TEXT	ENDS
;	COMDAT ?m_pTemplateName@?$TQueue@E@@0QBDB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDriveUnit@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7CFloppyDiskController@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDriveUnit@@@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ??_7?$TQueue@E@@6B@
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
;	COMDAT ?m_bDebug@?$TQueue@E@@0_NB
CONST	SEGMENT DWORD USE32 PUBLIC 'CONST'
CONST	ENDS
FLAT	GROUP _DATA, CONST, _BSS, CRT$XCA, CRT$XCU, CRT$XCL, CRT$XCC, CRT$XCZ
	ASSUME	CS: FLAT, DS: FLAT, SS: FLAT
endif
PUBLIC	?m_pClassName@CFloppyDiskController@@0QBDB	; CFloppyDiskController::m_pClassName
PUBLIC	?m_bDebug@CFloppyDiskController@@0_NB		; CFloppyDiskController::m_bDebug
PUBLIC	?m_bDebugInit@CFloppyDiskController@@0_NB	; CFloppyDiskController::m_bDebugInit
PUBLIC	?m_bDebugIO@CFloppyDiskController@@0_NB		; CFloppyDiskController::m_bDebugIO
PUBLIC	?m_bDebugCmd@CFloppyDiskController@@0_NB	; CFloppyDiskController::m_bDebugCmd
PUBLIC	?m_iDigitalOutputRegister@CFloppyDiskController@@0GB ; CFloppyDiskController::m_iDigitalOutputRegister
PUBLIC	?m_iMainStatusRegister@CFloppyDiskController@@0GB ; CFloppyDiskController::m_iMainStatusRegister
PUBLIC	?m_iDataRegister@CFloppyDiskController@@0GB	; CFloppyDiskController::m_iDataRegister
PUBLIC	?m_iPortRetryAttempts@CFloppyDiskController@@0GB ; CFloppyDiskController::m_iPortRetryAttempts
PUBLIC	?m_iDMAChannel@CFloppyDiskController@@0EB	; CFloppyDiskController::m_iDMAChannel
PUBLIC	?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B ; CFloppyDiskController::m_pCommands
PUBLIC	?m_pSingletonInstance@CFloppyDiskController@@0PBV1@B ; CFloppyDiskController::m_pSingletonInstance
PUBLIC	?MOTOR_OFF_DELAY@CFloppyDiskController@@2KB	; CFloppyDiskController::MOTOR_OFF_DELAY
_BSS	SEGMENT
?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B DD 07H DUP (?) ; CFloppyDiskController::m_pCommands
?m_pSingletonInstance@CFloppyDiskController@@0PBV1@B DD 01H DUP (?) ; CFloppyDiskController::m_pSingletonInstance
_BSS	ENDS
CONST	SEGMENT
?m_pClassName@CFloppyDiskController@@0QBDB DB 'FloppyDiskController::', 00H ; CFloppyDiskController::m_pClassName
?m_bDebug@CFloppyDiskController@@0_NB DB 00H		; CFloppyDiskController::m_bDebug
?m_bDebugInit@CFloppyDiskController@@0_NB DB 00H	; CFloppyDiskController::m_bDebugInit
?m_bDebugIO@CFloppyDiskController@@0_NB DB 00H		; CFloppyDiskController::m_bDebugIO
?m_bDebugCmd@CFloppyDiskController@@0_NB DB 00H		; CFloppyDiskController::m_bDebugCmd
	ORG $+1
?m_iDigitalOutputRegister@CFloppyDiskController@@0GB DW 03f2H ; CFloppyDiskController::m_iDigitalOutputRegister
?m_iMainStatusRegister@CFloppyDiskController@@0GB DW 03f4H ; CFloppyDiskController::m_iMainStatusRegister
?m_iDataRegister@CFloppyDiskController@@0GB DW 03f5H	; CFloppyDiskController::m_iDataRegister
?m_iPortRetryAttempts@CFloppyDiskController@@0GB DW 02000H ; CFloppyDiskController::m_iPortRetryAttempts
?m_iDMAChannel@CFloppyDiskController@@0EB DB 02H	; CFloppyDiskController::m_iDMAChannel
	ORG $+3
?MOTOR_OFF_DELAY@CFloppyDiskController@@2KB DD 03H	; CFloppyDiskController::MOTOR_OFF_DELAY
CONST	ENDS
CRT$XCU	SEGMENT
_$S80	DD	FLAT:_$E79
CRT$XCU	ENDS
_TEXT	SEGMENT
_$E79	PROC NEAR
	push	ebp
	mov	ebp, esp
	call	_$E78
	pop	ebp
	ret	0
_$E79	ENDP
$T3185 = -4
$T3186 = -8
$T3187 = -12
$T3188 = -16
$T3189 = -20
$T3190 = -24
$T3191 = -28
_$E78	PROC NEAR

; 30   : 	{ 

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH

; 31   : 		CCommand( false, 0x00, 0, 0 ),// NULL

	mov	BYTE PTR $T3185[ebp], 0
	mov	BYTE PTR $T3185[ebp+1], 0
	mov	BYTE PTR $T3185[ebp+2], 0
	mov	BYTE PTR $T3185[ebp+3], 0
	mov	eax, DWORD PTR $T3185[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B, eax

; 32   : 		CCommand( false, 0x03, 2, 0 ),// SPECIFY_CHARACTERISTICS

	mov	BYTE PTR $T3186[ebp], 0
	mov	BYTE PTR $T3186[ebp+1], 3
	mov	BYTE PTR $T3186[ebp+2], 2
	mov	BYTE PTR $T3186[ebp+3], 0
	mov	ecx, DWORD PTR $T3186[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+4, ecx

; 33   : 		CCommand( false, 0x04, 1, 1 ),// SENSE_DRIVE_STATUS

	mov	BYTE PTR $T3187[ebp], 0
	mov	BYTE PTR $T3187[ebp+1], 4
	mov	BYTE PTR $T3187[ebp+2], 1
	mov	BYTE PTR $T3187[ebp+3], 1
	mov	edx, DWORD PTR $T3187[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+8, edx

; 34   : 		CCommand( true , 0x0f, 2, 0 ),// SEEK

	mov	BYTE PTR $T3188[ebp], 1
	mov	BYTE PTR $T3188[ebp+1], 15		; 0000000fH
	mov	BYTE PTR $T3188[ebp+2], 2
	mov	BYTE PTR $T3188[ebp+3], 0
	mov	eax, DWORD PTR $T3188[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+12, eax

; 35   : 		CCommand( true , 0x07, 1, 0 ),// RECALIBRATE

	mov	BYTE PTR $T3189[ebp], 1
	mov	BYTE PTR $T3189[ebp+1], 7
	mov	BYTE PTR $T3189[ebp+2], 1
	mov	BYTE PTR $T3189[ebp+3], 0
	mov	ecx, DWORD PTR $T3189[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+16, ecx

; 36   : 		CCommand( true , 0xe6, 8, 7 ),// READ_DATA

	mov	BYTE PTR $T3190[ebp], 1
	mov	BYTE PTR $T3190[ebp+1], 230		; 000000e6H
	mov	BYTE PTR $T3190[ebp+2], 8
	mov	BYTE PTR $T3190[ebp+3], 7
	mov	edx, DWORD PTR $T3190[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+20, edx

; 37   : 		CCommand( true , 0x4a, 1, 7 ) // READ_ID
; 38   : 	};

	mov	BYTE PTR $T3191[ebp], 1
	mov	BYTE PTR $T3191[ebp+1], 74		; 0000004aH
	mov	BYTE PTR $T3191[ebp+2], 1
	mov	BYTE PTR $T3191[ebp+3], 7
	mov	eax, DWORD PTR $T3191[ebp]
	mov	DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B+24, eax
	mov	esp, ebp
	pop	ebp
	ret	0
_$E78	ENDP
_TEXT	ENDS
PUBLIC	??_7?$TCollection@PAVCDriveUnit@@@@6B@		; TCollection<CDriveUnit *>::`vftable'
PUBLIC	??_G?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z	; TCollection<CDriveUnit *>::`scalar deleting destructor'
PUBLIC	??_E?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z	; TCollection<CDriveUnit *>::`vector deleting destructor'
PUBLIC	?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ	; TList<CDriveUnit *>::count
PUBLIC	?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ ; TList<CDriveUnit *>::first
PUBLIC	?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ ; TList<CDriveUnit *>::last
PUBLIC	??_7?$TList@PAVCDriveUnit@@@@6B@		; TList<CDriveUnit *>::`vftable'
PUBLIC	??_G?$TList@PAVCDriveUnit@@@@UAEPAXI@Z		; TList<CDriveUnit *>::`scalar deleting destructor'
PUBLIC	??_E?$TList@PAVCDriveUnit@@@@UAEPAXI@Z		; TList<CDriveUnit *>::`vector deleting destructor'
PUBLIC	??0CFloppyDiskController@@QAE@XZ		; CFloppyDiskController::CFloppyDiskController
PUBLIC	?getBootDevice@CFloppyDiskController@@UAEPAVCBootDevice@@XZ ; CFloppyDiskController::getBootDevice
PUBLIC	??_7CFloppyDiskController@@6B@			; CFloppyDiskController::`vftable'
PUBLIC	??_GCFloppyDiskController@@UAEPAXI@Z		; CFloppyDiskController::`scalar deleting destructor'
PUBLIC	??_ECFloppyDiskController@@UAEPAXI@Z		; CFloppyDiskController::`vector deleting destructor'
EXTRN	__purecall:NEAR
EXTRN	??2@YAPAXI@Z:NEAR				; operator new
EXTRN	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z:NEAR ; CDriveUnit::CDriveUnit
EXTRN	??0CBootController@@QAE@XZ:NEAR			; CBootController::CBootController
;	COMDAT ??_7CFloppyDiskController@@6B@
; File E:\WORKSHOP\os98\ice32\TCollection.h
CONST	SEGMENT
??_7CFloppyDiskController@@6B@ DD FLAT:??_ECFloppyDiskController@@UAEPAXI@Z ; CFloppyDiskController::`vftable'
	DD	FLAT:?getBootDevice@CFloppyDiskController@@UAEPAVCBootDevice@@XZ
CONST	ENDS
;	COMDAT ??_7?$TList@PAVCDriveUnit@@@@6B@
CONST	SEGMENT
??_7?$TList@PAVCDriveUnit@@@@6B@ DD FLAT:??_E?$TList@PAVCDriveUnit@@@@UAEPAXI@Z ; TList<CDriveUnit *>::`vftable'
	DD	FLAT:?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ
	DD	FLAT:?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
	DD	FLAT:?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
CONST	ENDS
;	COMDAT ??_7?$TCollection@PAVCDriveUnit@@@@6B@
CONST	SEGMENT
??_7?$TCollection@PAVCDriveUnit@@@@6B@ DD FLAT:??_E?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z ; TCollection<CDriveUnit *>::`vftable'
	DD	FLAT:__purecall
	DD	FLAT:__purecall
	DD	FLAT:__purecall
CONST	ENDS
_TEXT	SEGMENT
$T3214 = -4
$T3217 = -8
$T3220 = -12
$T3223 = -16
$T3226 = -20
$T3250 = -32
$T3254 = -36
$T3256 = -28
_pLink$3268 = -24
$T3272 = -40
$T3273 = -44
$T3287 = -56
$T3291 = -60
$T3293 = -52
_pLink$3305 = -48
$T3309 = -64
$T3310 = -68
$T3324 = -80
$T3328 = -84
$T3330 = -76
_pLink$3342 = -72
$T3346 = -88
$T3347 = -92
$T3361 = -104
$T3365 = -108
$T3367 = -100
_pLink$3379 = -96
$T3383 = -112
$T3384 = -116
_this$ = -120
??0CFloppyDiskController@@QAE@XZ PROC NEAR		; CFloppyDiskController::CFloppyDiskController

; 46   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 140				; 0000008cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??0CBootController@@QAE@XZ		; CBootController::CBootController
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CFloppyDiskController@@6B@ ; CFloppyDiskController::`vftable'

; 47   : 	// Initialise object state.
; 48   : 	m_pDMAChannel					= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+54], 0

; 49   : 	m_iCommandQueueEntries			= 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+22], 0

; 50   : 	m_iDigitalOutputRegisterState	= 0x0c;

	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+21], 12			; 0000000cH

; 51   : 	m_iResultsPending				= 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], 0

; 52   : 	m_bWaitForInterrupt				= false;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+16], 0

; 53   : 	m_pDigitalOutputRegister		= NULL;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+42], 0

; 54   : 	m_pMainStatusRegister			= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+46], 0

; 55   : 	m_pDataRegister					= NULL;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+38], 0

; 56   : 	m_iCallsToTimerHandle			= 0;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 0

; 57   : 	m_pQueue						= NULL;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+50], 0

; 58   : 
; 59   : 	// Set static instance pointer.
; 60   : 	m_pSingletonInstance = this;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR ?m_pSingletonInstance@CFloppyDiskController@@0PBV1@B, edx ; CFloppyDiskController::m_pSingletonInstance

; 61   : 
; 62   : 	// Create collection of possible four drive units.
; 63   : 	m_pDriveUnits = new TList<CDriveUnit*>();

	push	16					; 00000010H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3214[ebp], eax
	cmp	DWORD PTR $T3214[ebp], 0
	je	SHORT $L3215
	mov	eax, DWORD PTR $T3214[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCDriveUnit@@@@6B@ ; TCollection<CDriveUnit *>::`vftable'
	mov	ecx, DWORD PTR $T3214[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TList@PAVCDriveUnit@@@@6B@ ; TList<CDriveUnit *>::`vftable'
	mov	edx, DWORD PTR $T3214[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3214[ebp]
	mov	DWORD PTR [eax+12], 0
	mov	ecx, DWORD PTR $T3214[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T3214[ebp]
	mov	DWORD PTR -124+[ebp], edx
	jmp	SHORT $L3216
$L3215:
	mov	DWORD PTR -124+[ebp], 0
$L3216:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR -124+[ebp]
	mov	DWORD PTR [eax+34], ecx

; 64   : 	m_pDriveUnits->insert( new CDriveUnit(this,0) );

	push	54					; 00000036H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3217[ebp], eax
	cmp	DWORD PTR $T3217[ebp], 0
	je	SHORT $L3218
	push	0
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	mov	ecx, DWORD PTR $T3217[ebp]
	call	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ; CDriveUnit::CDriveUnit
	mov	DWORD PTR $T3273[ebp], eax
	jmp	SHORT $L3219
$L3218:
	mov	DWORD PTR $T3273[ebp], 0
$L3219:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR $T3272[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3256[ebp], eax
	cmp	DWORD PTR $T3256[ebp], 0
	je	SHORT $L3257
	mov	edx, DWORD PTR $T3256[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3256[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T3256[ebp]
	mov	DWORD PTR -128+[ebp], ecx
	jmp	SHORT $L3258
$L3257:
	mov	DWORD PTR -128+[ebp], 0
$L3258:
	mov	edx, DWORD PTR -128+[ebp]
	mov	DWORD PTR _pLink$3268[ebp], edx
	cmp	DWORD PTR _pLink$3268[ebp], 0
	je	SHORT $L3267
	mov	eax, DWORD PTR _pLink$3268[ebp]
	mov	ecx, DWORD PTR $T3273[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T3272[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L3264
	mov	eax, DWORD PTR $T3272[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3250[ebp], ecx
	mov	edx, DWORD PTR $T3250[ebp]
	mov	eax, DWORD PTR _pLink$3268[ebp]
	mov	DWORD PTR [edx+8], eax
$L3264:
	mov	ecx, DWORD PTR $T3272[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3254[ebp], edx
	mov	eax, DWORD PTR _pLink$3268[ebp]
	mov	ecx, DWORD PTR $T3254[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T3272[ebp]
	mov	eax, DWORD PTR _pLink$3268[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T3272[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L3271
	mov	edx, DWORD PTR $T3272[ebp]
	mov	eax, DWORD PTR _pLink$3268[ebp]
	mov	DWORD PTR [edx+12], eax
$L3271:
	mov	ecx, DWORD PTR $T3272[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T3272[ebp]
	mov	DWORD PTR [eax+4], edx
$L3267:

; 65   : 	m_pDriveUnits->insert( new CDriveUnit(this,1) );

	push	54					; 00000036H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3220[ebp], eax
	cmp	DWORD PTR $T3220[ebp], 0
	je	SHORT $L3221
	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	mov	ecx, DWORD PTR $T3220[ebp]
	call	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ; CDriveUnit::CDriveUnit
	mov	DWORD PTR $T3310[ebp], eax
	jmp	SHORT $L3222
$L3221:
	mov	DWORD PTR $T3310[ebp], 0
$L3222:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+34]
	mov	DWORD PTR $T3309[ebp], eax
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3293[ebp], eax
	cmp	DWORD PTR $T3293[ebp], 0
	je	SHORT $L3294
	mov	ecx, DWORD PTR $T3293[ebp]
	mov	DWORD PTR [ecx+8], 0
	mov	edx, DWORD PTR $T3293[ebp]
	mov	DWORD PTR [edx+4], 0
	mov	eax, DWORD PTR $T3293[ebp]
	mov	DWORD PTR -132+[ebp], eax
	jmp	SHORT $L3295
$L3294:
	mov	DWORD PTR -132+[ebp], 0
$L3295:
	mov	ecx, DWORD PTR -132+[ebp]
	mov	DWORD PTR _pLink$3305[ebp], ecx
	cmp	DWORD PTR _pLink$3305[ebp], 0
	je	SHORT $L3304
	mov	edx, DWORD PTR _pLink$3305[ebp]
	mov	eax, DWORD PTR $T3310[ebp]
	mov	DWORD PTR [edx], eax
	mov	ecx, DWORD PTR $T3309[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	SHORT $L3301
	mov	edx, DWORD PTR $T3309[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T3287[ebp], eax
	mov	ecx, DWORD PTR $T3287[ebp]
	mov	edx, DWORD PTR _pLink$3305[ebp]
	mov	DWORD PTR [ecx+8], edx
$L3301:
	mov	eax, DWORD PTR $T3309[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3291[ebp], ecx
	mov	edx, DWORD PTR _pLink$3305[ebp]
	mov	eax, DWORD PTR $T3291[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3309[ebp]
	mov	edx, DWORD PTR _pLink$3305[ebp]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR $T3309[ebp]
	cmp	DWORD PTR [eax+12], 0
	jne	SHORT $L3308
	mov	ecx, DWORD PTR $T3309[ebp]
	mov	edx, DWORD PTR _pLink$3305[ebp]
	mov	DWORD PTR [ecx+12], edx
$L3308:
	mov	eax, DWORD PTR $T3309[ebp]
	mov	ecx, DWORD PTR [eax+4]
	add	ecx, 1
	mov	edx, DWORD PTR $T3309[ebp]
	mov	DWORD PTR [edx+4], ecx
$L3304:

; 66   : 	m_pDriveUnits->insert( new CDriveUnit(this,2) );

	push	54					; 00000036H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3223[ebp], eax
	cmp	DWORD PTR $T3223[ebp], 0
	je	SHORT $L3224
	push	2
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	mov	ecx, DWORD PTR $T3223[ebp]
	call	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ; CDriveUnit::CDriveUnit
	mov	DWORD PTR $T3347[ebp], eax
	jmp	SHORT $L3225
$L3224:
	mov	DWORD PTR $T3347[ebp], 0
$L3225:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+34]
	mov	DWORD PTR $T3346[ebp], edx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3330[ebp], eax
	cmp	DWORD PTR $T3330[ebp], 0
	je	SHORT $L3331
	mov	eax, DWORD PTR $T3330[ebp]
	mov	DWORD PTR [eax+8], 0
	mov	ecx, DWORD PTR $T3330[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T3330[ebp]
	mov	DWORD PTR -136+[ebp], edx
	jmp	SHORT $L3332
$L3331:
	mov	DWORD PTR -136+[ebp], 0
$L3332:
	mov	eax, DWORD PTR -136+[ebp]
	mov	DWORD PTR _pLink$3342[ebp], eax
	cmp	DWORD PTR _pLink$3342[ebp], 0
	je	SHORT $L3341
	mov	ecx, DWORD PTR _pLink$3342[ebp]
	mov	edx, DWORD PTR $T3347[ebp]
	mov	DWORD PTR [ecx], edx
	mov	eax, DWORD PTR $T3346[ebp]
	cmp	DWORD PTR [eax+8], 0
	je	SHORT $L3338
	mov	ecx, DWORD PTR $T3346[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3324[ebp], edx
	mov	eax, DWORD PTR $T3324[ebp]
	mov	ecx, DWORD PTR _pLink$3342[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3338:
	mov	edx, DWORD PTR $T3346[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T3328[ebp], eax
	mov	ecx, DWORD PTR _pLink$3342[ebp]
	mov	edx, DWORD PTR $T3328[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T3346[ebp]
	mov	ecx, DWORD PTR _pLink$3342[ebp]
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR $T3346[ebp]
	cmp	DWORD PTR [edx+12], 0
	jne	SHORT $L3345
	mov	eax, DWORD PTR $T3346[ebp]
	mov	ecx, DWORD PTR _pLink$3342[ebp]
	mov	DWORD PTR [eax+12], ecx
$L3345:
	mov	edx, DWORD PTR $T3346[ebp]
	mov	eax, DWORD PTR [edx+4]
	add	eax, 1
	mov	ecx, DWORD PTR $T3346[ebp]
	mov	DWORD PTR [ecx+4], eax
$L3341:

; 67   : 	m_pDriveUnits->insert( new CDriveUnit(this,3) );

	push	54					; 00000036H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3226[ebp], eax
	cmp	DWORD PTR $T3226[ebp], 0
	je	SHORT $L3227
	push	3
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	mov	ecx, DWORD PTR $T3226[ebp]
	call	??0CDriveUnit@@QAE@PBVCFloppyDiskController@@K@Z ; CDriveUnit::CDriveUnit
	mov	DWORD PTR $T3384[ebp], eax
	jmp	SHORT $L3228
$L3227:
	mov	DWORD PTR $T3384[ebp], 0
$L3228:
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR $T3383[ebp], ecx
	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3367[ebp], eax
	cmp	DWORD PTR $T3367[ebp], 0
	je	SHORT $L3368
	mov	edx, DWORD PTR $T3367[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3367[ebp]
	mov	DWORD PTR [eax+4], 0
	mov	ecx, DWORD PTR $T3367[ebp]
	mov	DWORD PTR -140+[ebp], ecx
	jmp	SHORT $L3369
$L3368:
	mov	DWORD PTR -140+[ebp], 0
$L3369:
	mov	edx, DWORD PTR -140+[ebp]
	mov	DWORD PTR _pLink$3379[ebp], edx
	cmp	DWORD PTR _pLink$3379[ebp], 0
	je	SHORT $L3378
	mov	eax, DWORD PTR _pLink$3379[ebp]
	mov	ecx, DWORD PTR $T3384[ebp]
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR $T3383[ebp]
	cmp	DWORD PTR [edx+8], 0
	je	SHORT $L3375
	mov	eax, DWORD PTR $T3383[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3361[ebp], ecx
	mov	edx, DWORD PTR $T3361[ebp]
	mov	eax, DWORD PTR _pLink$3379[ebp]
	mov	DWORD PTR [edx+8], eax
$L3375:
	mov	ecx, DWORD PTR $T3383[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3365[ebp], edx
	mov	eax, DWORD PTR _pLink$3379[ebp]
	mov	ecx, DWORD PTR $T3365[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T3383[ebp]
	mov	eax, DWORD PTR _pLink$3379[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T3383[ebp]
	cmp	DWORD PTR [ecx+12], 0
	jne	SHORT $L3382
	mov	edx, DWORD PTR $T3383[ebp]
	mov	eax, DWORD PTR _pLink$3379[ebp]
	mov	DWORD PTR [edx+12], eax
$L3382:
	mov	ecx, DWORD PTR $T3383[ebp]
	mov	edx, DWORD PTR [ecx+4]
	add	edx, 1
	mov	eax, DWORD PTR $T3383[ebp]
	mov	DWORD PTR [eax+4], edx
$L3378:

; 68   : }

	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	0
??0CFloppyDiskController@@QAE@XZ ENDP			; CFloppyDiskController::CFloppyDiskController
_TEXT	ENDS
PUBLIC	??1CFloppyDiskController@@UAE@XZ		; CFloppyDiskController::~CFloppyDiskController
EXTRN	??3@YAXPAX@Z:NEAR				; operator delete
;	COMDAT ??_GCFloppyDiskController@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_GCFloppyDiskController@@UAEPAXI@Z PROC NEAR		; CFloppyDiskController::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CFloppyDiskController@@UAE@XZ	; CFloppyDiskController::~CFloppyDiskController
	mov	eax, DWORD PTR ___flags$[ebp]
	and	eax, 1
	test	eax, eax
	je	SHORT $L2579
	mov	ecx, DWORD PTR _this$[ebp]
	push	ecx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L2579:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_GCFloppyDiskController@@UAEPAXI@Z ENDP		; CFloppyDiskController::`scalar deleting destructor'
_TEXT	ENDS
EXTRN	??1CBootController@@UAE@XZ:NEAR			; CBootController::~CBootController
_TEXT	SEGMENT
_this$ = -4
??1CFloppyDiskController@@UAE@XZ PROC NEAR		; CFloppyDiskController::~CFloppyDiskController

; 72   : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7CFloppyDiskController@@6B@ ; CFloppyDiskController::`vftable'

; 73   : 
; 74   : }

	mov	ecx, DWORD PTR _this$[ebp]
	call	??1CBootController@@UAE@XZ		; CBootController::~CBootController
	mov	esp, ebp
	pop	ebp
	ret	0
??1CFloppyDiskController@@UAE@XZ ENDP			; CFloppyDiskController::~CFloppyDiskController
_TEXT	ENDS
PUBLIC	?endl@@YAAAVostream@@AAV1@@Z			; endl
PUBLIC	??_7?$TQueue@E@@6B@				; TQueue<unsigned char>::`vftable'
PUBLIC	??_G?$TQueue@E@@UAEPAXI@Z			; TQueue<unsigned char>::`scalar deleting destructor'
PUBLIC	??_E?$TQueue@E@@UAEPAXI@Z			; TQueue<unsigned char>::`vector deleting destructor'
PUBLIC	?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB	; TCursor<CDriveUnit *>::m_bDebug
PUBLIC	?enable@CFloppyDiskController@@AAE_NXZ		; CFloppyDiskController::enable
PUBLIC	?readBytes@CFloppyDiskController@@AAEJK@Z	; CFloppyDiskController::readBytes
PUBLIC	?reset@CFloppyDiskController@@AAE_NXZ		; CFloppyDiskController::reset
PUBLIC	?senseInterruptStatus@CFloppyDiskController@@ABE_NXZ ; CFloppyDiskController::senseInterruptStatus
PUBLIC	?create@CFloppyDiskController@@QAE?BKXZ		; CFloppyDiskController::create
PUBLIC	?diskISR@CFloppyDiskController@@SAXXZ		; CFloppyDiskController::diskISR
PUBLIC	?timerISR@CFloppyDiskController@@SAXXZ		; CFloppyDiskController::timerISR
PUBLIC	??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
PUBLIC	??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
PUBLIC	??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
PUBLIC	??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
PUBLIC	??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
PUBLIC	??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
PUBLIC	??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
PUBLIC	??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
EXTRN	?getIRQ@CTimer@@QBE?BEXZ:NEAR			; CTimer::getIRQ
EXTRN	?getCPU@CSystem@@QAEAAVCCPU@@XZ:NEAR		; CSystem::getCPU
EXTRN	?getDMAManager@CSystem@@QAEAAVCDMAManager@@XZ:NEAR ; CSystem::getDMAManager
EXTRN	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ:NEAR ; CSystem::getIOManager
EXTRN	?getPIC@CSystem@@QAEAAVCPIC@@XZ:NEAR		; CSystem::getPIC
EXTRN	?getTimer@CSystem@@QAEAAVCTimer@@XZ:NEAR	; CSystem::getTimer
EXTRN	?getIDT@CCPU@@QAEAAVCIDT@@XZ:NEAR		; CCPU::getIDT
EXTRN	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z:NEAR	; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@K@Z:NEAR			; ostream::operator<<
EXTRN	??6ostream@@QAEAAV0@PBD@Z:NEAR			; ostream::operator<<
EXTRN	?cout@@3Vostream_withassign@@A:BYTE		; cout
EXTRN	?getSystem@CApplication@@QAEAAVCSystem@@XZ:NEAR	; CApplication::getSystem
EXTRN	?Application@@3VCApplication@@A:BYTE		; Application
EXTRN	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z:NEAR ; CIOManager::requestPort
EXTRN	?requestChannel@CDMAManager@@QAEPAVCDMAChannel@@E@Z:NEAR ; CDMAManager::requestChannel
EXTRN	?motorOff@CDriveUnit@@QAEXXZ:NEAR		; CDriveUnit::motorOff
EXTRN	?motorOn@CDriveUnit@@QAEXXZ:NEAR		; CDriveUnit::motorOn
EXTRN	?registerHandler@CIDT@@QAEXEP6AXXZ@Z:NEAR	; CIDT::registerHandler
EXTRN	?irqToInt@CPIC@@QBE?BEE@Z:NEAR			; CPIC::irqToInt
;	COMDAT ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB
; File E:\WORKSHOP\os98\ice32\TCursor.cpp
CONST	SEGMENT
?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB DB 00H	; TCursor<CDriveUnit *>::m_bDebug
CONST	ENDS
;	COMDAT ??_7?$TQueue@E@@6B@
CONST	SEGMENT
??_7?$TQueue@E@@6B@ DD FLAT:??_E?$TQueue@E@@UAEPAXI@Z	; TQueue<unsigned char>::`vftable'
CONST	ENDS
_DATA	SEGMENT
$SG2589	DB	'NEC765 Floppy disk controller...', 00H
	ORG $+3
$SG2679	DB	'Ok.', 00H
$SG2681	DB	'Failed.', 00H
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
;	COMDAT ??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@
_DATA	SEGMENT
??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ DB 'TCursor<I'
	DB	'temType>::more - Current at 0x', 00H	; `string'
_DATA	ENDS
;	COMDAT ??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@
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
$T3388 = -48
$T3403 = -52
_Item$3412 = -56
$T3421 = -64
_Next$3431 = -60
_Item$3448 = -68
$T3457 = -76
_Next$3467 = -72
_this$ = -80
_iRetry$ = -32
_bEnabled$ = -28
_pDriveUnit$ = -24
_PIC$ = -8
_IDT$ = -20
_Timer$ = -4
_IOManager$ = -16
_DMAManager$ = -12
_DriveUnits$2671 = -44
?create@CFloppyDiskController@@QAE?BKXZ PROC NEAR	; CFloppyDiskController::create

; 87   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 84					; 00000054H
	mov	DWORD PTR _this$[ebp], ecx

; 88   : 	int iRetry;	
; 89   : 	bool bEnabled;
; 90   : 	CDriveUnit* pDriveUnit;
; 91   : 
; 92   : 	// Prolog.
; 93   : 	cout << "NEC765 Floppy disk controller...";

	push	OFFSET FLAT:$SG2589
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 94   : 
; 95   : 	// Get pointers to system objects.
; 96   : 	CPIC& PIC				= Application.getSystem().getPIC();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPIC@CSystem@@QAEAAVCPIC@@XZ		; CSystem::getPIC
	mov	DWORD PTR _PIC$[ebp], eax

; 97   : 	CIDT& IDT				= Application.getSystem().getCPU().getIDT();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getCPU@CSystem@@QAEAAVCCPU@@XZ		; CSystem::getCPU
	mov	ecx, eax
	call	?getIDT@CCPU@@QAEAAVCIDT@@XZ		; CCPU::getIDT
	mov	DWORD PTR _IDT$[ebp], eax

; 98   : 	CTimer& Timer			= Application.getSystem().getTimer();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getTimer@CSystem@@QAEAAVCTimer@@XZ	; CSystem::getTimer
	mov	DWORD PTR _Timer$[ebp], eax

; 99   : 	CIOManager&	IOManager	= Application.getSystem().getIOManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getIOManager@CSystem@@QAEAAVCIOManager@@XZ ; CSystem::getIOManager
	mov	DWORD PTR _IOManager$[ebp], eax

; 100  : 	CDMAManager& DMAManager	= Application.getSystem().getDMAManager();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getDMAManager@CSystem@@QAEAAVCDMAManager@@XZ ; CSystem::getDMAManager
	mov	DWORD PTR _DMAManager$[ebp], eax

; 101  : 
; 102  : 	// Allocate IO communication queue.
; 103  : 	m_pQueue = new TQueue<BYTE>;

	push	12					; 0000000cH
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3388[ebp], eax
	cmp	DWORD PTR $T3388[ebp], 0
	je	SHORT $L3389
	mov	eax, DWORD PTR $T3388[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TQueue@E@@6B@ ; TQueue<unsigned char>::`vftable'
	mov	ecx, DWORD PTR $T3388[ebp]
	mov	DWORD PTR [ecx+4], 0
	mov	edx, DWORD PTR $T3388[ebp]
	mov	DWORD PTR [edx+8], 0
	mov	eax, DWORD PTR $T3388[ebp]
	mov	DWORD PTR -84+[ebp], eax
	jmp	SHORT $L3390
$L3389:
	mov	DWORD PTR -84+[ebp], 0
$L3390:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR -84+[ebp]
	mov	DWORD PTR [ecx+50], edx

; 104  : 
; 105  : 	// Request IO resources.
; 106  : 	m_pDigitalOutputRegister	= IOManager.requestPort( m_iDigitalOutputRegister );

	push	1010					; 000003f2H
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+42], eax

; 107  : 	m_pMainStatusRegister		= IOManager.requestPort( m_iMainStatusRegister );

	push	1012					; 000003f4H
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+46], eax

; 108  : 	m_pDataRegister				= IOManager.requestPort( m_iDataRegister );

	push	1013					; 000003f5H
	mov	ecx, DWORD PTR _IOManager$[ebp]
	call	?requestPort@CIOManager@@QAEPBVCIOPort@@G@Z ; CIOManager::requestPort
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+38], eax

; 109  : 
; 110  : 	// Request DMA resources.
; 111  : 	m_pDMAChannel = DMAManager.requestChannel( m_iDMAChannel );

	push	2
	mov	ecx, DWORD PTR _DMAManager$[ebp]
	call	?requestChannel@CDMAManager@@QAEPAVCDMAChannel@@E@Z ; CDMAManager::requestChannel
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+54], eax

; 112  : 
; 113  : 	// Hook floppy disk interrupt.
; 114  : 	IDT.registerHandler( PIC.irqToInt(IRQ), CFloppyDiskController::diskISR );

	push	OFFSET FLAT:?diskISR@CFloppyDiskController@@SAXXZ ; CFloppyDiskController::diskISR
	push	6
	mov	ecx, DWORD PTR _PIC$[ebp]
	call	?irqToInt@CPIC@@QBE?BEE@Z		; CPIC::irqToInt
	push	eax
	mov	ecx, DWORD PTR _IDT$[ebp]
	call	?registerHandler@CIDT@@QAEXEP6AXXZ@Z	; CIDT::registerHandler

; 115  : 
; 116  : 	// Hook timer interrupt.
; 117  : 	IDT.registerHandler( PIC.irqToInt(Timer.getIRQ()), CFloppyDiskController::timerISR );

	push	OFFSET FLAT:?timerISR@CFloppyDiskController@@SAXXZ ; CFloppyDiskController::timerISR
	mov	ecx, DWORD PTR _Timer$[ebp]
	call	?getIRQ@CTimer@@QBE?BEXZ		; CTimer::getIRQ
	push	eax
	mov	ecx, DWORD PTR _PIC$[ebp]
	call	?irqToInt@CPIC@@QBE?BEE@Z		; CPIC::irqToInt
	push	eax
	mov	ecx, DWORD PTR _IDT$[ebp]
	call	?registerHandler@CIDT@@QAEXEP6AXXZ@Z	; CIDT::registerHandler

; 118  : 
; 119  : 	// "Reset-Enable" controller.
; 120  : 	iRetry = 0;

	mov	DWORD PTR _iRetry$[ebp], 0

; 121  : 	bEnabled = false;

	mov	BYTE PTR _bEnabled$[ebp], 0
$L2644:

; 122  : 	while( iRetry<3 && bEnabled==false )

	cmp	DWORD PTR _iRetry$[ebp], 3
	jge	SHORT $L2645
	mov	eax, DWORD PTR _bEnabled$[ebp]
	and	eax, 255				; 000000ffH
	test	eax, eax
	jne	SHORT $L2645

; 124  : 		// Force controller reset.
; 125  : 		if( reset()==true )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?reset@CFloppyDiskController@@AAE_NXZ	; CFloppyDiskController::reset
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2647

; 127  : 			// Read result of sense interrupt issued by ISR.
; 128  : 			readBytes( 2 );

	push	2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?readBytes@CFloppyDiskController@@AAEJK@Z ; CFloppyDiskController::readBytes

; 129  : 
; 130  : 			// Force enable.
; 131  : 			if( enable()==true )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?enable@CFloppyDiskController@@AAE_NXZ	; CFloppyDiskController::enable
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2647

; 133  : 				// Read result of sense interrupt issued by ISR.
; 134  : 				readBytes( 2 );

	push	2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?readBytes@CFloppyDiskController@@AAEJK@Z ; CFloppyDiskController::readBytes

; 135  : 				bEnabled = true;

	mov	BYTE PTR _bEnabled$[ebp], 1
$L2647:

; 138  : 		
; 139  : 		// Retry reset.
; 140  : 		iRetry++;

	mov	ecx, DWORD PTR _iRetry$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iRetry$[ebp], ecx

; 141  : 	}	

	jmp	SHORT $L2644
$L2645:

; 142  : 
; 143  : 	// Sense interrupt status on all devices if controller is enabled.
; 144  : 	if( bEnabled==true )

	mov	edx, DWORD PTR _bEnabled$[ebp]
	and	edx, 255				; 000000ffH
	cmp	edx, 1
	jne	$L2648

; 146  : 		// Sense interrupt for each drive unit.
; 147  : 		TCursor<CDriveUnit*> DriveUnits(*m_pDriveUnits);

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR $T3403[ebp], ecx
	cmp	DWORD PTR $T3403[ebp], 0
	jne	SHORT $L3399
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3398:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L3399
	jmp	SHORT $L3398
$L3399:
	mov	eax, DWORD PTR $T3403[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3403[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _DriveUnits$2671[ebp], eax
	mov	eax, DWORD PTR $T3403[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3403[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _DriveUnits$2671[ebp+4], eax
	mov	eax, DWORD PTR _DriveUnits$2671[ebp]
	mov	DWORD PTR _DriveUnits$2671[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3400
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3400:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3401
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$2671[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3401:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3396
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$2671[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3396:

; 148  : 		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3413
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3413:
	cmp	DWORD PTR _DriveUnits$2671[ebp], 0
	jne	SHORT $L3414
	mov	DWORD PTR _DriveUnits$2671[ebp+8], 0
	mov	DWORD PTR _Item$3412[ebp], 0
	jmp	SHORT $L3411
$L3414:
	mov	eax, DWORD PTR _DriveUnits$2671[ebp]
	mov	DWORD PTR _DriveUnits$2671[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3416
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3416:
	mov	eax, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$3412[ebp], ecx
$L3411:
	mov	edx, DWORD PTR _Item$3412[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], edx
	jmp	$L2672
$L2673:
	mov	DWORD PTR _Next$3431[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3432
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3432:
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	je	SHORT $L3430
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3421[ebp], eax
	mov	ecx, DWORD PTR $T3421[ebp]
	mov	DWORD PTR _DriveUnits$2671[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3434
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$2671[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3434:
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	je	SHORT $L3430
	mov	ecx, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$3431[ebp], edx
$L3430:
	mov	eax, DWORD PTR _Next$3431[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], eax
$L2672:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3438
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3438:
	xor	eax, eax
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2674

; 150  : 			//pDriveUnit->select();
; 151  : 			if( senseInterruptStatus()==true )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?senseInterruptStatus@CFloppyDiskController@@ABE_NXZ ; CFloppyDiskController::senseInterruptStatus
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2675

; 152  : 				readBytes( 2 );

	push	2
	mov	ecx, DWORD PTR _this$[ebp]
	call	?readBytes@CFloppyDiskController@@AAEJK@Z ; CFloppyDiskController::readBytes
$L2675:

; 153  : 		}

	jmp	$L2673
$L2674:

; 154  : 
; 155  : 		// Turn motor on and sense status for all drive units.
; 156  : 		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3449
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3449:
	cmp	DWORD PTR _DriveUnits$2671[ebp], 0
	jne	SHORT $L3450
	mov	DWORD PTR _DriveUnits$2671[ebp+8], 0
	mov	DWORD PTR _Item$3448[ebp], 0
	jmp	SHORT $L3447
$L3450:
	mov	eax, DWORD PTR _DriveUnits$2671[ebp]
	mov	DWORD PTR _DriveUnits$2671[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3452
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3452:
	mov	eax, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$3448[ebp], ecx
$L3447:
	mov	edx, DWORD PTR _Item$3448[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], edx
	jmp	$L2676
$L2677:
	mov	DWORD PTR _Next$3467[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3468
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3468:
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	je	SHORT $L3466
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3457[ebp], eax
	mov	ecx, DWORD PTR $T3457[ebp]
	mov	DWORD PTR _DriveUnits$2671[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3470
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$2671[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3470:
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	je	SHORT $L3466
	mov	ecx, DWORD PTR _DriveUnits$2671[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$3467[ebp], edx
$L3466:
	mov	eax, DWORD PTR _Next$3467[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], eax
$L2676:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3474
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2671[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3474:
	xor	eax, eax
	cmp	DWORD PTR _DriveUnits$2671[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2678

; 158  : 			pDriveUnit->motorOn();

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?motorOn@CDriveUnit@@QAEXXZ		; CDriveUnit::motorOn

; 159  : 			//m_pQueue->flush();
; 160  : 			//m_pQueue->push( 0 );
; 161  : 			//issueCommand( FDCC_SENSE_DRIVE_STATUS );
; 162  : 			//decodeStatus3( m_pQueue->pop() );
; 163  : 			pDriveUnit->motorOff();

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?motorOff@CDriveUnit@@QAEXXZ		; CDriveUnit::motorOff

; 164  : 		}

	jmp	$L2677
$L2678:

; 165  : 
; 166  : 		// Epilog.
; 167  : 		cout << "Ok." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2679
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 169  : 	else

	jmp	SHORT $L2680
$L2648:

; 171  : 		// Control enable failed.
; 172  : 		cout << "Failed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2681
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2680:

; 174  : 
; 175  : 	// Return enable state of controller.
; 176  : 	return bEnabled;

	mov	eax, DWORD PTR _bEnabled$[ebp]
	and	eax, 255				; 000000ffH

; 177  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?create@CFloppyDiskController@@QAE?BKXZ ENDP		; CFloppyDiskController::create
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
PUBLIC	?decodeStatus3@CFloppyDiskController@@AAEXE@Z	; CFloppyDiskController::decodeStatus3
_DATA	SEGMENT
$SG2686	DB	'(SR3)', 00H
	ORG $+2
$SG2691	DB	'Head 1 seleceted.', 00H
	ORG $+2
$SG2693	DB	'Track zero.', 00H
$SG2695	DB	'Write protect.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iValue$ = 8
_this$ = -4
?decodeStatus3@CFloppyDiskController@@AAEXE@Z PROC NEAR	; CFloppyDiskController::decodeStatus3

; 190  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 191  : 	cout << "(SR3)";

	push	OFFSET FLAT:$SG2686
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<

; 192  : 	if( iValue&0x40 )

	mov	eax, DWORD PTR _iValue$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 64					; 00000040H
	test	eax, eax
	je	SHORT $L2687

; 194  : 		if( iValue&0x10 )

	mov	ecx, DWORD PTR _iValue$[ebp]
	and	ecx, 255				; 000000ffH
	and	ecx, 16					; 00000010H
	test	ecx, ecx
	je	SHORT $L2688

; 196  : 			if( iValue&0x04 )

	mov	edx, DWORD PTR _iValue$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 4
	test	edx, edx
	je	SHORT $L2689

; 200  : 			else

	jmp	SHORT $L2690
$L2689:

; 202  : 				cout << "Head 1 seleceted.";

	push	OFFSET FLAT:$SG2691
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
$L2690:

; 205  : 		else

	jmp	SHORT $L2692
$L2688:

; 207  : 			cout << "Track zero.";

	push	OFFSET FLAT:$SG2693
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
$L2692:

; 210  : 	else

	jmp	SHORT $L2694
$L2687:

; 212  : 		cout << "Write protect.";

	push	OFFSET FLAT:$SG2695
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
$L2694:

; 214  : 	cout << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 215  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?decodeStatus3@CFloppyDiskController@@AAEXE@Z ENDP	; CFloppyDiskController::decodeStatus3
_TEXT	ENDS
PUBLIC	?readByte@CFloppyDiskController@@AAEJXZ		; CFloppyDiskController::readByte
EXTRN	??6ostream@@QAEAAV0@J@Z:NEAR			; ostream::operator<<
EXTRN	?readByte@CIOPort@@QBE?BEXZ:NEAR		; CIOPort::readByte
_DATA	SEGMENT
	ORG $+1
$SG2703	DB	'readByte() - ', 00H
	ORG $+2
$SG2710	DB	'Read byte ', 00H
	ORG $+1
$SG2712	DB	'No data at port', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -32
_iRetry$ = -28
_iByte$ = -20
_iStatus$ = -24
_pFunctionName$ = -16
?readByte@CFloppyDiskController@@AAEJXZ PROC NEAR	; CFloppyDiskController::readByte

; 228  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 32					; 00000020H
	mov	DWORD PTR _this$[ebp], ecx

; 229  : 	long iRetry;
; 230  : 	long iByte;
; 231  : 	unsigned char iStatus;
; 232  : 	const char pFunctionName[] = "readByte() - ";

	mov	eax, DWORD PTR $SG2703
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2703+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2703+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	ax, WORD PTR $SG2703+12
	mov	WORD PTR _pFunctionName$[ebp+12], ax

; 233  : 
; 234  : 	// Wait for port to become ready.
; 235  : 	iRetry = m_iPortRetryAttempts;

	mov	DWORD PTR _iRetry$[ebp], 8192		; 00002000H
$L2704:

; 238  : 		iStatus = m_pMainStatusRegister->readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+46]
	call	?readByte@CIOPort@@QBE?BEXZ		; CIOPort::readByte
	mov	BYTE PTR _iStatus$[ebp], al

; 239  : 		iRetry--;

	mov	edx, DWORD PTR _iRetry$[ebp]
	sub	edx, 1
	mov	DWORD PTR _iRetry$[ebp], edx

; 240  : 	}while( ((iStatus&0xc0)==0x80) && iRetry>0 );

	mov	eax, DWORD PTR _iStatus$[ebp]
	and	eax, 255				; 000000ffH
	and	eax, 192				; 000000c0H
	cmp	eax, 128				; 00000080H
	jne	SHORT $L2707
	cmp	DWORD PTR _iRetry$[ebp], 0
	jg	SHORT $L2704
$L2707:

; 241  : 		
; 242  : 
; 243  : 	// Read data if ready.
; 244  : 	if( iRetry>0 )

	cmp	DWORD PTR _iRetry$[ebp], 0
	jle	SHORT $L2708

; 246  : 		// Port ready.
; 247  : 		iByte = m_pDataRegister->readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+38]
	call	?readByte@CIOPort@@QBE?BEXZ		; CIOPort::readByte
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _iByte$[ebp], eax

; 248  : 		if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "Read byte " << iByte << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2709
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iByte$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2710
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@J@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2709:

; 250  : 	else

	jmp	SHORT $L2711
$L2708:

; 252  : 		cout << m_pClassName << pFunctionName << "No data at port" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2712
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 253  : 		iByte = -1;

	mov	DWORD PTR _iByte$[ebp], -1
$L2711:

; 255  : 
; 256  : 	// Return byte read.
; 257  : 	return iByte;

	mov	eax, DWORD PTR _iByte$[ebp]

; 258  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?readByte@CFloppyDiskController@@AAEJXZ ENDP		; CFloppyDiskController::readByte
_TEXT	ENDS
PUBLIC	??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@		; `string'
PUBLIC	?m_pTemplateName@?$TQueue@E@@0QBDB		; TQueue<unsigned char>::m_pTemplateName
PUBLIC	?m_bDebug@?$TQueue@E@@0_NB			; TQueue<unsigned char>::m_bDebug
PUBLIC	??_C@_07IHEJ@push?$CI0x?$AA@			; `string'
PUBLIC	??_C@_01KMMP@?$CJ?$AA@				; `string'
EXTRN	??6ostream@@QAEAAV0@E@Z:NEAR			; ostream::operator<<
;	COMDAT ?m_pTemplateName@?$TQueue@E@@0QBDB
; File E:\WORKSHOP\os98\ice32\TQueue.h
CONST	SEGMENT
?m_pTemplateName@?$TQueue@E@@0QBDB DB 'Queue<>::', 00H	; TQueue<unsigned char>::m_pTemplateName
CONST	ENDS
;	COMDAT ?m_bDebug@?$TQueue@E@@0_NB
CONST	SEGMENT
?m_bDebug@?$TQueue@E@@0_NB DB 00H			; TQueue<unsigned char>::m_bDebug
CONST	ENDS
_DATA	SEGMENT
$SG2720	DB	'readBytes() - ', 00H
	ORG $+1
$SG2722	DB	'Count = ', 00H
	ORG $+3
$SG2727	DB	'readByte() failed.', 00H
_DATA	ENDS
;	COMDAT ??_C@_07IHEJ@push?$CI0x?$AA@
_DATA	SEGMENT
??_C@_07IHEJ@push?$CI0x?$AA@ DB 'push(0x', 00H		; `string'
_DATA	ENDS
;	COMDAT ??_C@_01KMMP@?$CJ?$AA@
_DATA	SEGMENT
??_C@_01KMMP@?$CJ?$AA@ DB ')', 00H			; `string'
_DATA	ENDS
;	COMDAT ??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@
_DATA	SEGMENT
??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@ DB 'isEmpty()=', 00H ; `string'
_DATA	ENDS
_TEXT	SEGMENT
$T3493 = -32
$T3497 = -36
$T3501 = -40
_pOldest$3523 = -28
$T3527 = -44
$T3538 = -56
$T3542 = -60
$T3544 = -52
_pLink$3554 = -48
$T3557 = -64
_iCount$ = 8
_this$ = -68
_iByte$ = -20
_iBytesRead$ = -24
_pFunctionName$ = -16
?readBytes@CFloppyDiskController@@AAEJK@Z PROC NEAR	; CFloppyDiskController::readBytes

; 272  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 72					; 00000048H
	mov	DWORD PTR _this$[ebp], ecx

; 273  : 	long iByte;
; 274  : 	unsigned long iBytesRead;
; 275  : 	const char pFunctionName[] = "readBytes() - ";

	mov	eax, DWORD PTR $SG2720
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2720+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2720+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	ax, WORD PTR $SG2720+12
	mov	WORD PTR _pFunctionName$[ebp+12], ax
	mov	cl, BYTE PTR $SG2720+14
	mov	BYTE PTR _pFunctionName$[ebp+14], cl

; 276  : 
; 277  : 	if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "Count = " << iCount << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2721
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _iCount$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2722
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
$L2721:

; 278  : 
; 279  : 	// Flush the data queue.
; 280  : 	m_pQueue->flush();

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+50]
	mov	DWORD PTR $T3527[ebp], eax
$L3525:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3512
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR $T3527[ebp]
	xor	eax, eax
	cmp	DWORD PTR [edx+8], 0
	sete	al
	push	eax
	push	OFFSET FLAT:??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3512:
	mov	ecx, DWORD PTR $T3527[ebp]
	xor	edx, edx
	cmp	DWORD PTR [ecx+8], 0
	sete	dl
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L3524
	mov	eax, DWORD PTR $T3527[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _pOldest$3523[ebp], ecx
	mov	edx, DWORD PTR $T3527[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+1]
	mov	DWORD PTR $T3493[ebp], ecx
	mov	edx, DWORD PTR $T3527[ebp]
	mov	eax, DWORD PTR $T3493[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T3527[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3497[ebp], edx
	mov	eax, DWORD PTR $T3497[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR _pOldest$3523[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR $T3501[ebp], dl
	jmp	$L3525
$L3524:

; 281  : 
; 282  : 	// Read bytes from controller.
; 283  : 	iBytesRead = 0; 

	mov	DWORD PTR _iBytesRead$[ebp], 0
$L2724:

; 284  : 	while( iCount>iBytesRead )

	mov	eax, DWORD PTR _iCount$[ebp]
	cmp	eax, DWORD PTR _iBytesRead$[ebp]
	jbe	$L2725

; 286  : 		iByte = readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?readByte@CFloppyDiskController@@AAEJXZ	; CFloppyDiskController::readByte
	mov	DWORD PTR _iByte$[ebp], eax

; 287  : 		if( iByte<0 )

	cmp	DWORD PTR _iByte$[ebp], 0
	jge	SHORT $L2726

; 289  : 			cout << m_pClassName << pFunctionName << "readByte() failed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2727
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 290  : 			iCount = 0;

	mov	DWORD PTR _iCount$[ebp], 0

; 292  : 		else

	jmp	$L2728
$L2726:

; 294  : 			m_pQueue->push( (BYTE)iByte );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+50]
	mov	DWORD PTR $T3557[ebp], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3555
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	dl, BYTE PTR _iByte$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3555:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3544[ebp], eax
	cmp	DWORD PTR $T3544[ebp], 0
	je	SHORT $L3545
	mov	eax, DWORD PTR $T3544[ebp]
	mov	cl, BYTE PTR _iByte$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR $T3544[ebp]
	mov	DWORD PTR [edx+1], 0
	mov	eax, DWORD PTR $T3544[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR $T3544[ebp]
	mov	DWORD PTR -72+[ebp], ecx
	jmp	SHORT $L3546
$L3545:
	mov	DWORD PTR -72+[ebp], 0
$L3546:
	mov	edx, DWORD PTR -72+[ebp]
	mov	DWORD PTR _pLink$3554[ebp], edx
	mov	eax, DWORD PTR $T3557[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3538[ebp], ecx
	mov	edx, DWORD PTR _pLink$3554[ebp]
	mov	eax, DWORD PTR $T3538[ebp]
	mov	DWORD PTR [edx+5], eax
	mov	ecx, DWORD PTR $T3557[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3542[ebp], edx
	mov	eax, DWORD PTR $T3542[ebp]
	mov	ecx, DWORD PTR _pLink$3554[ebp]
	mov	DWORD PTR [eax+1], ecx
	mov	edx, DWORD PTR $T3557[ebp]
	mov	eax, DWORD PTR _pLink$3554[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3557[ebp]
	cmp	DWORD PTR [ecx+8], 0
	jne	SHORT $L3553
	mov	edx, DWORD PTR $T3557[ebp]
	mov	eax, DWORD PTR _pLink$3554[ebp]
	mov	DWORD PTR [edx+8], eax
$L3553:

; 295  : 			iBytesRead++;

	mov	ecx, DWORD PTR _iBytesRead$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iBytesRead$[ebp], ecx
$L2728:

; 297  : 	}

	jmp	$L2724
$L2725:

; 298  : 
; 299  : 	// Return number of bytes actually read.
; 300  : 	return iBytesRead;

	mov	eax, DWORD PTR _iBytesRead$[ebp]

; 301  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?readBytes@CFloppyDiskController@@AAEJK@Z ENDP		; CFloppyDiskController::readBytes
_TEXT	ENDS
PUBLIC	?diskISRHandler@CFloppyDiskController@@AAEXXZ	; CFloppyDiskController::diskISRHandler
PUBLIC	?getInstance@CFloppyDiskController@@CAPBV1@XZ	; CFloppyDiskController::getInstance
_TEXT	SEGMENT
?diskISR@CFloppyDiskController@@SAXXZ PROC NEAR		; CFloppyDiskController::diskISR

; 316  : {

	push	ebp
	mov	ebp, esp

; 317  : 	// Call handler with instance.
; 318  : 	((CFloppyDiskController*)getInstance())->diskISRHandler();

	call	?getInstance@CFloppyDiskController@@CAPBV1@XZ ; CFloppyDiskController::getInstance
	mov	ecx, eax
	call	?diskISRHandler@CFloppyDiskController@@AAEXXZ ; CFloppyDiskController::diskISRHandler

; 319  : }

	pop	ebp
	ret	0
?diskISR@CFloppyDiskController@@SAXXZ ENDP		; CFloppyDiskController::diskISR
_TEXT	ENDS
EXTRN	?endOfInterrupt@CPIC@@QBEXXZ:NEAR		; CPIC::endOfInterrupt
_DATA	SEGMENT
	ORG $+1
$SG2738	DB	'diskISRHandler() - ', 00H
$SG2740	DB	'Unexpected FDC interrupt.', 00H
	ORG $+2
$SG2744	DB	'No results, sence interrupt status.', 00H
_DATA	ENDS
_TEXT	SEGMENT
$T3570 = -36
$T3574 = -40
$T3576 = -32
_pLink$3586 = -28
$T3589 = -44
_this$ = -48
_iByte$ = -24
_pFunctionName$ = -20
?diskISRHandler@CFloppyDiskController@@AAEXXZ PROC NEAR	; CFloppyDiskController::diskISRHandler

; 332  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 52					; 00000034H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 333  : 	long iByte;
; 334  : 	const char pFunctionName[] = "diskISRHandler() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2738
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd

; 335  : 
; 336  : 	// Check that interrupt was expected.
; 337  : 	if( m_bWaitForInterrupt==false )

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+16]
	test	ecx, ecx
	jne	SHORT $L2739

; 338  : 		cout << m_pClassName << pFunctionName << "Unexpected FDC interrupt." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2740
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 339  : 	else

	jmp	$L2747
$L2739:

; 341  : 		// Reset wait flag.
; 342  : 		m_bWaitForInterrupt = false;

	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+16], 0

; 343  : 
; 344  : 		// If no result expected sense interrupt.
; 345  : 		if( m_iResultsPending==0 )

	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+17], 0
	jne	SHORT $L2742

; 347  : 			if( m_bDebugIO ) cout << m_pClassName << pFunctionName << "No results, sence interrupt status." << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2743
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2744
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2743:

; 348  : 			if( senseInterruptStatus()==true )

	mov	ecx, DWORD PTR _this$[ebp]
	call	?senseInterruptStatus@CFloppyDiskController@@ABE_NXZ ; CFloppyDiskController::senseInterruptStatus
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2745

; 349  : 				m_iResultsPending = 2;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], 2
$L2745:

; 351  : 		else

	jmp	$L2747
$L2742:

; 353  : 			// Read first result and put into queue.
; 354  : 			iByte = readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?readByte@CFloppyDiskController@@AAEJXZ	; CFloppyDiskController::readByte
	mov	DWORD PTR _iByte$[ebp], eax

; 355  : 			if( iByte>=0 )

	cmp	DWORD PTR _iByte$[ebp], 0
	jl	$L2747

; 357  : 				m_pQueue->push( (BYTE)iByte );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+50]
	mov	DWORD PTR $T3589[ebp], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3587
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	dl, BYTE PTR _iByte$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3587:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3576[ebp], eax
	cmp	DWORD PTR $T3576[ebp], 0
	je	SHORT $L3577
	mov	eax, DWORD PTR $T3576[ebp]
	mov	cl, BYTE PTR _iByte$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR $T3576[ebp]
	mov	DWORD PTR [edx+1], 0
	mov	eax, DWORD PTR $T3576[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR $T3576[ebp]
	mov	DWORD PTR -52+[ebp], ecx
	jmp	SHORT $L3578
$L3577:
	mov	DWORD PTR -52+[ebp], 0
$L3578:
	mov	edx, DWORD PTR -52+[ebp]
	mov	DWORD PTR _pLink$3586[ebp], edx
	mov	eax, DWORD PTR $T3589[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3570[ebp], ecx
	mov	edx, DWORD PTR _pLink$3586[ebp]
	mov	eax, DWORD PTR $T3570[ebp]
	mov	DWORD PTR [edx+5], eax
	mov	ecx, DWORD PTR $T3589[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3574[ebp], edx
	mov	eax, DWORD PTR $T3574[ebp]
	mov	ecx, DWORD PTR _pLink$3586[ebp]
	mov	DWORD PTR [eax+1], ecx
	mov	edx, DWORD PTR $T3589[ebp]
	mov	eax, DWORD PTR _pLink$3586[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3589[ebp]
	cmp	DWORD PTR [ecx+8], 0
	jne	SHORT $L3585
	mov	edx, DWORD PTR $T3589[ebp]
	mov	eax, DWORD PTR _pLink$3586[ebp]
	mov	DWORD PTR [edx+8], eax
$L3585:

; 358  : 				m_iResultsPending--;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+17]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+17], edx
$L2747:

; 362  : 
; 363  : 	// Send "End Of Interrupt" to PIC.
; 364  : 	Application.getSystem().getPIC().endOfInterrupt();

	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getPIC@CSystem@@QAEAAVCPIC@@XZ		; CSystem::getPIC
	mov	ecx, eax
	call	?endOfInterrupt@CPIC@@QBEXXZ		; CPIC::endOfInterrupt

; 365  : }

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
?diskISRHandler@CFloppyDiskController@@AAEXXZ ENDP	; CFloppyDiskController::diskISRHandler
_TEXT	ENDS
PUBLIC	?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z ; CFloppyDiskController::setWaitForInterruptFlag
PUBLIC	?waitForInterrupt@CFloppyDiskController@@AAE_NXZ ; CFloppyDiskController::waitForInterrupt
EXTRN	?delayExecution@CTimer@@QBEXK@Z:NEAR		; CTimer::delayExecution
EXTRN	?writeByte@CIOPort@@QBEXE@Z:NEAR		; CIOPort::writeByte
_DATA	SEGMENT
$SG2753	DB	'enable()', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?enable@CFloppyDiskController@@AAE_NXZ PROC NEAR	; CFloppyDiskController::enable

; 378  : {		

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 379  : 	if( m_bDebugInit ) cout << m_pClassName << "enable()" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2752
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2753
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2752:

; 380  : 
; 381  : 	// Set interrupt flag.
; 382  : 	setWaitForInterruptFlag( true );

	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z ; CFloppyDiskController::setWaitForInterruptFlag

; 383  : 
; 384  : 	// Enable controller.
; 385  : 	m_iResultsPending = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], 0

; 386  : 	m_iDigitalOutputRegisterState = 0x1c;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+21], 28			; 0000001cH

; 387  : 	m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+21]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+42]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 388  : 
; 389  : 	// Hold "Enable" for at lease 10ms.
; 390  : 	Application.getSystem().getTimer().delayExecution( 10 );

	push	10					; 0000000aH
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getTimer@CSystem@@QAEAAVCTimer@@XZ	; CSystem::getTimer
	mov	ecx, eax
	call	?delayExecution@CTimer@@QBEXK@Z		; CTimer::delayExecution

; 391  : 
; 392  : 	// Return interrupt success.
; 393  : 	return waitForInterrupt();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?waitForInterrupt@CFloppyDiskController@@AAE_NXZ ; CFloppyDiskController::waitForInterrupt

; 394  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?enable@CFloppyDiskController@@AAE_NXZ ENDP		; CFloppyDiskController::enable
_TEXT	ENDS
EXTRN	?getUnitNumber@CDriveUnit@@QBE?BKXZ:NEAR	; CDriveUnit::getUnitNumber
_DATA	SEGMENT
	ORG $+3
$SG2763	DB	'gerBootDevice()', 00H
_DATA	ENDS
_TEXT	SEGMENT
$T3592 = -20
$T3602 = -24
_Item$3611 = -28
$T3620 = -36
_Next$3630 = -32
_this$ = -40
_pDriveUnit$ = -4
_DriveUnits$ = -16
?getBootDevice@CFloppyDiskController@@UAEPAVCBootDevice@@XZ PROC NEAR ; CFloppyDiskController::getBootDevice

; 407  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[ebp], ecx

; 408  : 	CDriveUnit*	pDriveUnit;
; 409  : 
; 410  : 	// Pick drive unit from list.
; 411  : 	TCursor<CDriveUnit*> DriveUnits( *m_pDriveUnits );	

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR $T3602[ebp], ecx
	cmp	DWORD PTR $T3602[ebp], 0
	jne	SHORT $L3598
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3597:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L3598
	jmp	SHORT $L3597
$L3598:
	mov	eax, DWORD PTR $T3602[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3602[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _DriveUnits$[ebp], eax
	mov	eax, DWORD PTR $T3602[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3602[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _DriveUnits$[ebp+4], eax
	mov	eax, DWORD PTR _DriveUnits$[ebp]
	mov	DWORD PTR _DriveUnits$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3599
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3599:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3600
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3600:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3595
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3595:

; 412  : 	for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3612
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3612:
	cmp	DWORD PTR _DriveUnits$[ebp], 0
	jne	SHORT $L3613
	mov	DWORD PTR _DriveUnits$[ebp+8], 0
	mov	DWORD PTR _Item$3611[ebp], 0
	jmp	SHORT $L3610
$L3613:
	mov	eax, DWORD PTR _DriveUnits$[ebp]
	mov	DWORD PTR _DriveUnits$[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3615
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3615:
	mov	eax, DWORD PTR _DriveUnits$[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$3611[ebp], ecx
$L3610:
	mov	edx, DWORD PTR _Item$3611[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], edx
	jmp	$L2759
$L2760:
	mov	DWORD PTR _Next$3630[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3631
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3631:
	cmp	DWORD PTR _DriveUnits$[ebp+8], 0
	je	SHORT $L3629
	mov	edx, DWORD PTR _DriveUnits$[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3620[ebp], eax
	mov	ecx, DWORD PTR $T3620[ebp]
	mov	DWORD PTR _DriveUnits$[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3633
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3633:
	cmp	DWORD PTR _DriveUnits$[ebp+8], 0
	je	SHORT $L3629
	mov	ecx, DWORD PTR _DriveUnits$[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$3630[ebp], edx
$L3629:
	mov	eax, DWORD PTR _Next$3630[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], eax
$L2759:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3637
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3637:
	xor	eax, eax
	cmp	DWORD PTR _DriveUnits$[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2761

; 413  : 		if( pDriveUnit->getUnitNumber()==0 )

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	test	eax, eax
	jne	SHORT $L2762

; 415  : 			cout << m_pClassName << "gerBootDevice()" << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2763
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 416  : 			break;

	jmp	SHORT $L2761
$L2762:

; 418  : 
; 419  : 	// Return boot device.
; 420  : 	return pDriveUnit;

	jmp	$L2760
$L2761:
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	mov	DWORD PTR $T3592[ebp], ecx
	mov	eax, DWORD PTR $T3592[ebp]

; 421  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?getBootDevice@CFloppyDiskController@@UAEPAVCBootDevice@@XZ ENDP ; CFloppyDiskController::getBootDevice
?getInstance@CFloppyDiskController@@CAPBV1@XZ PROC NEAR	; CFloppyDiskController::getInstance

; 434  : {

	push	ebp
	mov	ebp, esp

; 435  : 	// Return a pointer to the singleton instance.
; 436  : 	return m_pSingletonInstance;

	mov	eax, DWORD PTR ?m_pSingletonInstance@CFloppyDiskController@@0PBV1@B ; CFloppyDiskController::m_pSingletonInstance

; 437  : }

	pop	ebp
	ret	0
?getInstance@CFloppyDiskController@@CAPBV1@XZ ENDP	; CFloppyDiskController::getInstance
_TEXT	ENDS
PUBLIC	?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z ; CFloppyDiskController::issueCommand
PUBLIC	?writeByte@CFloppyDiskController@@ABE?B_NE@Z	; CFloppyDiskController::writeByte
_DATA	SEGMENT
$SG2775	DB	'issueCommand() - ', 00H
	ORG $+2
$SG2777	DB	'Command 0x', 00H
	ORG $+1
$SG2783	DB	'Awaiting ', 00H
	ORG $+2
$SG2784	DB	' result bytes.', 00H
_DATA	ENDS
_TEXT	SEGMENT
$T3647 = -36
$T3651 = -40
$T3655 = -44
$T3659 = -48
$T3663 = -52
$T3668 = -60
$T3672 = -64
$T3676 = -68
_pOldest$3685 = -56
$T3686 = -72
$T3697 = -84
$T3701 = -88
$T3703 = -80
_pLink$3713 = -76
$T3716 = -92
_iCommand$ = 8
_this$ = -96
_iByte$ = -28
_pCommand$ = -4
_iParameterCount$ = -32
_pFunctionName$ = -24
?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z PROC NEAR ; CFloppyDiskController::issueCommand

; 450  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 100				; 00000064H
	mov	DWORD PTR _this$[ebp], ecx

; 451  : 	long iByte;
; 452  : 	const CCommand* pCommand;
; 453  : 	int iParameterCount;
; 454  : 	const char pFunctionName[] = "issueCommand() - ";

	mov	eax, DWORD PTR $SG2775
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2775+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2775+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2775+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax
	mov	cx, WORD PTR $SG2775+16
	mov	WORD PTR _pFunctionName$[ebp+16], cx

; 455  : 
; 456  : 	// Reference command structure.
; 457  : 	pCommand = &(m_pCommands[iCommand]);

	mov	edx, DWORD PTR _iCommand$[ebp]
	lea	eax, DWORD PTR ?m_pCommands@CFloppyDiskController@@0QBVCCommand@1@B[edx*4]
	mov	DWORD PTR _pCommand$[ebp], eax

; 458  : 
; 459  : 	// Set interrupt state.
; 460  : 	setWaitForInterruptFlag( pCommand->getInterruptTriggerFlag()==true );

	mov	ecx, DWORD PTR _pCommand$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR $T3647[ebp], dl
	mov	eax, DWORD PTR $T3647[ebp]
	and	eax, 255				; 000000ffH
	sub	eax, 1
	neg	eax
	sbb	eax, eax
	inc	eax
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z ; CFloppyDiskController::setWaitForInterruptFlag

; 461  : 
; 462  : 	// Store number of result codes expected ready for the ISR.
; 463  : 	m_iResultsPending = pCommand->getNumberOfResults();

	mov	ecx, DWORD PTR _pCommand$[ebp]
	mov	dl, BYTE PTR [ecx+3]
	mov	BYTE PTR $T3651[ebp], dl
	mov	eax, DWORD PTR $T3651[ebp]
	and	eax, 255				; 000000ffH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], eax

; 464  : 
; 465  : 	if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Command 0x" << pCommand->getCommandByte() << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2776
	mov	eax, DWORD PTR _pCommand$[ebp]
	mov	cl, BYTE PTR [eax+1]
	mov	BYTE PTR $T3655[ebp], cl
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	dl, BYTE PTR $T3655[ebp]
	push	edx
	push	OFFSET FLAT:$SG2777
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2776:

; 466  : 
; 467  : 	// Send command byte.
; 468  : 	writeByte( pCommand->getCommandByte() );

	mov	ecx, DWORD PTR _pCommand$[ebp]
	mov	dl, BYTE PTR [ecx+1]
	mov	BYTE PTR $T3659[ebp], dl
	mov	al, BYTE PTR $T3659[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?writeByte@CFloppyDiskController@@ABE?B_NE@Z ; CFloppyDiskController::writeByte

; 469  : 
; 470  : 	// Send command parameters.
; 471  : 	iParameterCount = pCommand->getNumberOfParameters();

	mov	ecx, DWORD PTR _pCommand$[ebp]
	mov	dl, BYTE PTR [ecx+2]
	mov	BYTE PTR $T3663[ebp], dl
	mov	eax, DWORD PTR $T3663[ebp]
	and	eax, 255				; 000000ffH
	mov	DWORD PTR _iParameterCount$[ebp], eax
$L2779:

; 472  : 	while( iParameterCount>0 )

	cmp	DWORD PTR _iParameterCount$[ebp], 0
	jle	SHORT $L2780

; 474  : 		writeByte( m_pQueue->pop() );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3686[ebp], edx
	mov	eax, DWORD PTR $T3686[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _pOldest$3685[ebp], ecx
	mov	edx, DWORD PTR $T3686[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+1]
	mov	DWORD PTR $T3668[ebp], ecx
	mov	edx, DWORD PTR $T3686[ebp]
	mov	eax, DWORD PTR $T3668[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR $T3686[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T3672[ebp], edx
	mov	eax, DWORD PTR $T3672[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR _pOldest$3685[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR $T3676[ebp], dl
	mov	al, BYTE PTR $T3676[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	call	?writeByte@CFloppyDiskController@@ABE?B_NE@Z ; CFloppyDiskController::writeByte

; 475  : 		iParameterCount--;

	mov	ecx, DWORD PTR _iParameterCount$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _iParameterCount$[ebp], ecx

; 476  : 	}

	jmp	SHORT $L2779
$L2780:

; 477  : 
; 478  : 	// Wait for interrupt if expecting.
; 479  : 	waitForInterrupt();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?waitForInterrupt@CFloppyDiskController@@AAE_NXZ ; CFloppyDiskController::waitForInterrupt

; 480  : 
; 481  : 	// Read result codes(compensating for interrupt).
; 482  : 	if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Awaiting " << (unsigned char)m_iResultsPending << " result bytes." << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2781
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2784
	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+17]
	push	ecx
	push	OFFSET FLAT:$SG2783
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2781:

; 483  : 	while( m_iResultsPending>0 )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+17], 0
	jle	$L2787

; 485  : 		iByte = readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?readByte@CFloppyDiskController@@AAEJXZ	; CFloppyDiskController::readByte
	mov	DWORD PTR _iByte$[ebp], eax

; 486  : 		if( iByte>=0 )

	cmp	DWORD PTR _iByte$[ebp], 0
	jl	$L2788

; 488  : 			m_pQueue->push( (BYTE)iByte );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3716[ebp], edx
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3714
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	cl, BYTE PTR _iByte$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3714:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3703[ebp], eax
	cmp	DWORD PTR $T3703[ebp], 0
	je	SHORT $L3704
	mov	edx, DWORD PTR $T3703[ebp]
	mov	al, BYTE PTR _iByte$[ebp]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR $T3703[ebp]
	mov	DWORD PTR [ecx+1], 0
	mov	edx, DWORD PTR $T3703[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR $T3703[ebp]
	mov	DWORD PTR -100+[ebp], eax
	jmp	SHORT $L3705
$L3704:
	mov	DWORD PTR -100+[ebp], 0
$L3705:
	mov	ecx, DWORD PTR -100+[ebp]
	mov	DWORD PTR _pLink$3713[ebp], ecx
	mov	edx, DWORD PTR $T3716[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3697[ebp], eax
	mov	ecx, DWORD PTR _pLink$3713[ebp]
	mov	edx, DWORD PTR $T3697[ebp]
	mov	DWORD PTR [ecx+5], edx
	mov	eax, DWORD PTR $T3716[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3701[ebp], ecx
	mov	edx, DWORD PTR $T3701[ebp]
	mov	eax, DWORD PTR _pLink$3713[ebp]
	mov	DWORD PTR [edx+1], eax
	mov	ecx, DWORD PTR $T3716[ebp]
	mov	edx, DWORD PTR _pLink$3713[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T3716[ebp]
	cmp	DWORD PTR [eax+8], 0
	jne	SHORT $L3712
	mov	ecx, DWORD PTR $T3716[ebp]
	mov	edx, DWORD PTR _pLink$3713[ebp]
	mov	DWORD PTR [ecx+8], edx
$L3712:

; 489  : 			m_iResultsPending--;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+17]
	sub	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+17], ecx
$L2788:

; 491  : 	}

	jmp	$L2781
$L2787:

; 492  : 
; 493  : 	// Always return no error.
; 494  : 	return 0;

	xor	eax, eax

; 495  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z ENDP ; CFloppyDiskController::issueCommand
_TEXT	ENDS
PUBLIC	?motorOff@CFloppyDiskController@@AAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::motorOff
_DATA	SEGMENT
	ORG $+1
$SG2795	DB	'motorOff() - ', 00H
	ORG $+2
$SG2798	DB	'Unit ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pDriveUnit$ = 8
_this$ = -20
_pFunctionName$ = -16
?motorOff@CFloppyDiskController@@AAE_NPBVCDriveUnit@@@Z PROC NEAR ; CFloppyDiskController::motorOff

; 508  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 509  : 	const char pFunctionName[] = "motorOff() - ";

	mov	eax, DWORD PTR $SG2795
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2795+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2795+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	ax, WORD PTR $SG2795+12
	mov	WORD PTR _pFunctionName$[ebp+12], ax

; 510  : 	
; 511  : 		// Validate drive unit pointer.
; 512  : 	if( pDriveUnit!=NULL )

	cmp	DWORD PTR _pDriveUnit$[ebp], 0
	je	$L2796

; 514  : 		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Unit " << pDriveUnit->getUnitNumber() << endl;

	xor	ecx, ecx
	test	ecx, ecx
	je	SHORT $L2797
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	push	eax
	push	OFFSET FLAT:$SG2798
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
$L2797:

; 515  : 
; 516  : 		// OR motor bit with DOR state.
; 517  : 		m_iDigitalOutputRegisterState &= ((~(1<<(pDriveUnit->getUnitNumber()+4)))|0x0f);

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	mov	ecx, eax
	add	ecx, 4
	mov	eax, 1
	shl	eax, cl
	not	eax
	or	al, 15					; 0000000fH
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+21]
	and	dl, al
	mov	eax, DWORD PTR _this$[ebp]
	mov	BYTE PTR [eax+21], dl

; 518  : 
; 519  : 		// Write status to "Digital Output Register"
; 520  : 		m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+21]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte
$L2796:

; 522  : 
; 523  : 	// Always returns true.
; 524  : 	return true;

	mov	al, 1

; 525  : }	

	mov	esp, ebp
	pop	ebp
	ret	4
?motorOff@CFloppyDiskController@@AAE_NPBVCDriveUnit@@@Z ENDP ; CFloppyDiskController::motorOff
_TEXT	ENDS
PUBLIC	?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOff
EXTRN	?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z:NEAR ; CDriveUnit::setMotorOffRequestFlag
_DATA	SEGMENT
	ORG $+2
$SG2804	DB	'requestMotorOff() - ', 00H
	ORG $+3
$SG2807	DB	'Unit ', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pDriveUnit$ = 8
_this$ = -28
_pFunctionName$ = -24
?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z PROC NEAR ; CFloppyDiskController::requestMotorOff

; 539  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 28					; 0000001cH
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 540  : 	const char pFunctionName[] = "requestMotorOff() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2804
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd
	movsb

; 541  : 	
; 542  : 	// Validate drive unit pointer.
; 543  : 	if( pDriveUnit!=NULL )

	cmp	DWORD PTR _pDriveUnit$[ebp], 0
	je	SHORT $L2805

; 545  : 		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Unit " << pDriveUnit->getUnitNumber() << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2806
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	push	eax
	push	OFFSET FLAT:$SG2807
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
$L2806:

; 546  : 
; 547  : 		// Flag drive unit as requesting motor off.
; 548  : 		((CDriveUnit*)pDriveUnit)->setMotorOffRequestFlag( true );

	push	1
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z ; CDriveUnit::setMotorOffRequestFlag
$L2805:

; 550  : 
; 551  : 	// Always returns true.
; 552  : 	return true;

	mov	al, 1

; 553  : }	

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ENDP ; CFloppyDiskController::requestMotorOff
_TEXT	ENDS
PUBLIC	?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOn
EXTRN	?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ:NEAR	; CDriveUnit::getTimeToMotorOff
EXTRN	?setTimeToMotorOff@CDriveUnit@@QAEXK@Z:NEAR	; CDriveUnit::setTimeToMotorOff
_DATA	SEGMENT
	ORG $+2
$SG2814	DB	'requestMotorOn() - ', 00H
$SG2817	DB	'Motor ON unit ', 00H
	ORG $+1
$SG2820	DB	'DOR=0x', 00H
_DATA	ENDS
_TEXT	SEGMENT
_pDriveUnit$ = 8
_this$ = -24
_pFunctionName$ = -20
?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z PROC NEAR ; CFloppyDiskController::requestMotorOn

; 566  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	push	esi
	push	edi
	mov	DWORD PTR _this$[ebp], ecx

; 567  : 	const char pFunctionName[] = "requestMotorOn() - ";

	mov	ecx, 5
	mov	esi, OFFSET FLAT:$SG2814
	lea	edi, DWORD PTR _pFunctionName$[ebp]
	rep movsd

; 568  : 
; 569  : 	// Validate drive unit pointer.
; 570  : 	if( pDriveUnit!=NULL )

	cmp	DWORD PTR _pDriveUnit$[ebp], 0
	je	$L2815

; 572  : 		if(m_bDebugCmd) cout << m_pClassName << pFunctionName << "Motor ON unit " << pDriveUnit->getUnitNumber() << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2816
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	push	eax
	push	OFFSET FLAT:$SG2817
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
$L2816:

; 573  : 		
; 574  : 		// Turn motor on if currently off.
; 575  : 		if( pDriveUnit->getTimeToMotorOff()==0 )

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getTimeToMotorOff
	test	eax, eax
	jne	$L2818

; 577  : 			// OR motor bit with DOR state.
; 578  : 			m_iDigitalOutputRegisterState |= (1<<(pDriveUnit->getUnitNumber()+4));

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	mov	ecx, eax
	add	ecx, 4
	mov	edx, 1
	shl	edx, cl
	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+21]
	or	cl, dl
	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+21], cl

; 579  : 			if(m_bDebugIO) cout << m_pClassName << pFunctionName << "DOR=0x" << m_iDigitalOutputRegisterState << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2819
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+21]
	push	edx
	push	OFFSET FLAT:$SG2820
	lea	eax, DWORD PTR _pFunctionName$[ebp]
	push	eax
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2819:

; 580  : 
; 581  : 			// Write status to "Digital Output Register"
; 582  : 			m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	dl, BYTE PTR [ecx+21]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+42]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 583  : 
; 584  : 			// Wait for motor to "spin-up".
; 585  : 			Application.getSystem().getTimer().delayExecution( 16 );

	push	16					; 00000010H
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getTimer@CSystem@@QAEAAVCTimer@@XZ	; CSystem::getTimer
	mov	ecx, eax
	call	?delayExecution@CTimer@@QBEXK@Z		; CTimer::delayExecution
$L2818:

; 587  : 	
; 588  : 		// Initialise motor just turned on status.
; 589  : 		((CDriveUnit*)pDriveUnit)->setMotorOffRequestFlag( false );

	push	0
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?setMotorOffRequestFlag@CDriveUnit@@QAEX_N@Z ; CDriveUnit::setMotorOffRequestFlag

; 590  : 		((CDriveUnit*)pDriveUnit)->setTimeToMotorOff( MOTOR_OFF_DELAY );

	push	3
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?setTimeToMotorOff@CDriveUnit@@QAEXK@Z	; CDriveUnit::setTimeToMotorOff
$L2815:

; 592  : 
; 593  : 	// Always returns true.
; 594  : 	return true;

	mov	al, 1

; 595  : }	

	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ENDP ; CFloppyDiskController::requestMotorOn
_TEXT	ENDS
PUBLIC	??0CLink@?$TQueue@E@@QAE@E@Z			; TQueue<unsigned char>::CLink::CLink
PUBLIC	?pop@?$TQueue@E@@QAEEXZ				; TQueue<unsigned char>::pop
PUBLIC	?push@?$TQueue@E@@QAEXE@Z			; TQueue<unsigned char>::push
PUBLIC	?readBlocks@CFloppyDiskController@@QAEKPAVCDriveUnit@@KKPAX@Z ; CFloppyDiskController::readBlocks
PUBLIC	?setStatusRegister0@CFloppyDiskController@@QAEXE@Z ; CFloppyDiskController::setStatusRegister0
EXTRN	_memcpy:NEAR
EXTRN	?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ:NEAR ; CDMAChannel::getTransferAreaPointer
EXTRN	?setTransferAreaSize@CDMAChannel@@QAEKK@Z:NEAR	; CDMAChannel::setTransferAreaSize
EXTRN	?transfer@CDMAChannel@@QAEXKW4EDMAType@@W4EDMADirection@@@Z:NEAR ; CDMAChannel::transfer
EXTRN	?getBytesPerBlock@CDriveUnit@@QAEKXZ:NEAR	; CDriveUnit::getBytesPerBlock
EXTRN	?getCurrentCylinder@CDriveUnit@@QAEKXZ:NEAR	; CDriveUnit::getCurrentCylinder
EXTRN	?getCylinder@CDriveUnit@@QAEKK@Z:NEAR		; CDriveUnit::getCylinder
EXTRN	?getDataBytesPerSector@CDriveUnit@@QAEKXZ:NEAR	; CDriveUnit::getDataBytesPerSector
EXTRN	?getDataLength@CDriveUnit@@QAEKXZ:NEAR		; CDriveUnit::getDataLength
EXTRN	?getEndOfTrack@CDriveUnit@@QAEKXZ:NEAR		; CDriveUnit::getEndOfTrack
EXTRN	?getGapLength@CDriveUnit@@QAEKXZ:NEAR		; CDriveUnit::getGapLength
EXTRN	?getHead@CDriveUnit@@QAEKK@Z:NEAR		; CDriveUnit::getHead
EXTRN	?getSector@CDriveUnit@@QAEKK@Z:NEAR		; CDriveUnit::getSector
EXTRN	?setCurrentCylinder@CDriveUnit@@QAEXK@Z:NEAR	; CDriveUnit::setCurrentCylinder
_DATA	SEGMENT
	ORG $+1
$SG2836	DB	'readBlocks() - ', 00H
$SG2838	DB	'Reading ', 00H
	ORG $+3
$SG2839	DB	' blocks.', 00H
	ORG $+3
$SG2858	DB	'Copying 0x', 00H
	ORG $+1
$SG2859	DB	' bytes from 0x', 00H
	ORG $+1
$SG2860	DB	' to 0x', 00H
	ORG $+1
$SG2863	DB	'Drive reports cylinder ', 00H
$SG2864	DB	' seeked ', 00H
_DATA	ENDS
_TEXT	SEGMENT
$T3733 = -40
$T3744 = -52
$T3748 = -56
$T3750 = -48
_pLink$3760 = -44
$T3763 = -60
$T3774 = -72
$T3778 = -76
$T3780 = -68
_pLink$3790 = -64
$T3793 = -80
$T3798 = -88
$T3802 = -92
$T3806 = -96
_pOldest$3815 = -84
$T3816 = -100
$T3821 = -108
$T3825 = -112
$T3829 = -116
_pOldest$3838 = -104
$T3839 = -120
_pDriveUnit$ = 8
_iBlockNumber$ = 12
_iBlockCount$ = 16
_pBuffer$ = 20
$T3852 = -124
_this$ = -216
_iHeadUnit$ = -32
_iCylinder$ = -8
_iBlocksRead$ = -36
_iRetries$ = -28
_bDataRead$ = -4
_pFunctionName$ = -24
$T3863 = -136
$T3867 = -140
$T3869 = -132
_pLink$3879 = -128
$T3882 = -144
$T3893 = -156
$T3897 = -160
$T3899 = -152
_pLink$3909 = -148
$T3912 = -164
$T3920 = -176
$T3924 = -180
$T3926 = -172
_pLink$3934 = -168
$T3937 = -184
$T3938 = -188
$T3946 = -200
$T3950 = -204
$T3952 = -196
_pLink$3960 = -192
$T3963 = -208
$T3964 = -212
?readBlocks@CFloppyDiskController@@QAEKPAVCDriveUnit@@KKPAX@Z PROC NEAR ; CFloppyDiskController::readBlocks

; 608  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 240				; 000000f0H
	mov	DWORD PTR _this$[ebp], ecx

; 609  : 	BYTE iHeadUnit;
; 610  : 	BYTE iCylinder;
; 611  : 	DWORD iBlocksRead;
; 612  : 	DWORD iRetries;
; 613  : 	bool bDataRead;
; 614  : 	const char pFunctionName[] = "readBlocks() - ";

	mov	eax, DWORD PTR $SG2836
	mov	DWORD PTR _pFunctionName$[ebp], eax
	mov	ecx, DWORD PTR $SG2836+4
	mov	DWORD PTR _pFunctionName$[ebp+4], ecx
	mov	edx, DWORD PTR $SG2836+8
	mov	DWORD PTR _pFunctionName$[ebp+8], edx
	mov	eax, DWORD PTR $SG2836+12
	mov	DWORD PTR _pFunctionName$[ebp+12], eax

; 615  : 
; 616  : 	// Not block read yet.
; 617  : 	iBlocksRead = 0;

	mov	DWORD PTR _iBlocksRead$[ebp], 0

; 618  : 
; 619  : 	// Request motor on for drive unit.
; 620  : 	requestMotorOn( pDriveUnit );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	push	ecx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?requestMotorOn@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOn

; 621  : 
; 622  : 	// Loop reading each block until complete.
; 623  : 	if(m_bDebug) cout << m_pClassName << pFunctionName << "Reading " << iBlockCount << " blocks." << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2837
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2839
	mov	eax, DWORD PTR _iBlockCount$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2838
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
$L2837:

; 624  : 	while( iBlocksRead<iBlockCount )

	mov	edx, DWORD PTR _iBlocksRead$[ebp]
	cmp	edx, DWORD PTR _iBlockCount$[ebp]
	jae	$L2842

; 626  : 		// Cache common parameters.
; 627  : 		iHeadUnit = (((unsigned char)pDriveUnit->getHead(iBlockNumber))<<2)|(m_iDigitalOutputRegisterState&0x03);

	mov	eax, DWORD PTR _iBlockNumber$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getHead@CDriveUnit@@QAEKK@Z		; CDriveUnit::getHead
	and	eax, 255				; 000000ffH
	shl	eax, 2
	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+21]
	and	edx, 3
	or	eax, edx
	mov	BYTE PTR _iHeadUnit$[ebp], al

; 628  : 		iCylinder = (unsigned char)pDriveUnit->getCylinder(iBlockNumber);

	mov	eax, DWORD PTR _iBlockNumber$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getCylinder@CDriveUnit@@QAEKK@Z	; CDriveUnit::getCylinder
	mov	BYTE PTR _iCylinder$[ebp], al

; 629  : 
; 630  : 		// Initilise retry counter.
; 631  : 		iRetries = 3;

	mov	DWORD PTR _iRetries$[ebp], 3
$L2845:

; 635  : 			// Data not yet read.
; 636  : 			bDataRead = false;

	mov	BYTE PTR _bDataRead$[ebp], 0

; 637  : 
; 638  : 			// Seek drive head to cylinder.
; 639  : 			m_pQueue->flush();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3733[ebp], edx
$L3731:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3727
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR $T3733[ebp]
	xor	edx, edx
	cmp	DWORD PTR [ecx+8], 0
	sete	dl
	push	edx
	push	OFFSET FLAT:??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3727:
	mov	eax, DWORD PTR $T3733[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax+8], 0
	sete	cl
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L3730
	mov	ecx, DWORD PTR $T3733[ebp]
	call	?pop@?$TQueue@E@@QAEEXZ			; TQueue<unsigned char>::pop
	jmp	SHORT $L3731
$L3730:

; 640  : 			m_pQueue->push( iHeadUnit );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+50]
	mov	DWORD PTR $T3763[ebp], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3761
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	dl, BYTE PTR _iHeadUnit$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3761:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3750[ebp], eax
	cmp	DWORD PTR $T3750[ebp], 0
	je	SHORT $L3751
	mov	eax, DWORD PTR $T3750[ebp]
	mov	cl, BYTE PTR _iHeadUnit$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR $T3750[ebp]
	mov	DWORD PTR [edx+1], 0
	mov	eax, DWORD PTR $T3750[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR $T3750[ebp]
	mov	DWORD PTR -220+[ebp], ecx
	jmp	SHORT $L3752
$L3751:
	mov	DWORD PTR -220+[ebp], 0
$L3752:
	mov	edx, DWORD PTR -220+[ebp]
	mov	DWORD PTR _pLink$3760[ebp], edx
	mov	eax, DWORD PTR $T3763[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3744[ebp], ecx
	mov	edx, DWORD PTR _pLink$3760[ebp]
	mov	eax, DWORD PTR $T3744[ebp]
	mov	DWORD PTR [edx+5], eax
	mov	ecx, DWORD PTR $T3763[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3748[ebp], edx
	mov	eax, DWORD PTR $T3748[ebp]
	mov	ecx, DWORD PTR _pLink$3760[ebp]
	mov	DWORD PTR [eax+1], ecx
	mov	edx, DWORD PTR $T3763[ebp]
	mov	eax, DWORD PTR _pLink$3760[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3763[ebp]
	cmp	DWORD PTR [ecx+8], 0
	jne	SHORT $L3759
	mov	edx, DWORD PTR $T3763[ebp]
	mov	eax, DWORD PTR _pLink$3760[ebp]
	mov	DWORD PTR [edx+8], eax
$L3759:

; 641  : 			m_pQueue->push( iCylinder );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3793[ebp], edx
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3791
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	cl, BYTE PTR _iCylinder$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3791:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3780[ebp], eax
	cmp	DWORD PTR $T3780[ebp], 0
	je	SHORT $L3781
	mov	edx, DWORD PTR $T3780[ebp]
	mov	al, BYTE PTR _iCylinder$[ebp]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR $T3780[ebp]
	mov	DWORD PTR [ecx+1], 0
	mov	edx, DWORD PTR $T3780[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR $T3780[ebp]
	mov	DWORD PTR -224+[ebp], eax
	jmp	SHORT $L3782
$L3781:
	mov	DWORD PTR -224+[ebp], 0
$L3782:
	mov	ecx, DWORD PTR -224+[ebp]
	mov	DWORD PTR _pLink$3790[ebp], ecx
	mov	edx, DWORD PTR $T3793[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3774[ebp], eax
	mov	ecx, DWORD PTR _pLink$3790[ebp]
	mov	edx, DWORD PTR $T3774[ebp]
	mov	DWORD PTR [ecx+5], edx
	mov	eax, DWORD PTR $T3793[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3778[ebp], ecx
	mov	edx, DWORD PTR $T3778[ebp]
	mov	eax, DWORD PTR _pLink$3790[ebp]
	mov	DWORD PTR [edx+1], eax
	mov	ecx, DWORD PTR $T3793[ebp]
	mov	edx, DWORD PTR _pLink$3790[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T3793[ebp]
	cmp	DWORD PTR [eax+8], 0
	jne	SHORT $L3789
	mov	ecx, DWORD PTR $T3793[ebp]
	mov	edx, DWORD PTR _pLink$3790[ebp]
	mov	DWORD PTR [ecx+8], edx
$L3789:

; 642  : 			issueCommand( FDCC_SEEK );

	push	3
	mov	ecx, DWORD PTR _this$[ebp]
	call	?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z ; CFloppyDiskController::issueCommand

; 643  : 
; 644  : 			// Check result of seek using sense interrupt status issued by the ISR.
; 645  : 			setStatusRegister0( m_pQueue->pop() );		

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	mov	DWORD PTR $T3816[ebp], ecx
	mov	edx, DWORD PTR $T3816[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pOldest$3815[ebp], eax
	mov	ecx, DWORD PTR $T3816[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+1]
	mov	DWORD PTR $T3798[ebp], eax
	mov	ecx, DWORD PTR $T3816[ebp]
	mov	edx, DWORD PTR $T3798[ebp]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR $T3816[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3802[ebp], ecx
	mov	edx, DWORD PTR $T3802[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR _pOldest$3815[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR $T3806[ebp], cl
	mov	dl, BYTE PTR $T3806[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setStatusRegister0@CFloppyDiskController@@QAEXE@Z ; CFloppyDiskController::setStatusRegister0

; 646  : 			pDriveUnit->setCurrentCylinder( m_pQueue->pop() );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	mov	DWORD PTR $T3839[ebp], ecx
	mov	edx, DWORD PTR $T3839[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pOldest$3838[ebp], eax
	mov	ecx, DWORD PTR $T3839[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	eax, DWORD PTR [edx+1]
	mov	DWORD PTR $T3821[ebp], eax
	mov	ecx, DWORD PTR $T3839[ebp]
	mov	edx, DWORD PTR $T3821[ebp]
	mov	DWORD PTR [ecx+8], edx
	mov	eax, DWORD PTR $T3839[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T3825[ebp], ecx
	mov	edx, DWORD PTR $T3825[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR _pOldest$3838[ebp]
	mov	cl, BYTE PTR [eax]
	mov	BYTE PTR $T3829[ebp], cl
	mov	edx, DWORD PTR $T3829[ebp]
	and	edx, 255				; 000000ffH
	push	edx
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?setCurrentCylinder@CDriveUnit@@QAEXK@Z	; CDriveUnit::setCurrentCylinder

; 647  : 			if( pDriveUnit->getCurrentCylinder()==iCylinder )

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getCurrentCylinder@CDriveUnit@@QAEKXZ	; CDriveUnit::getCurrentCylinder
	mov	ecx, DWORD PTR _iCylinder$[ebp]
	and	ecx, 255				; 000000ffH
	cmp	eax, ecx
	jne	$L2848

; 649  : 				// Prepare DMA transfer for disk read.
; 650  : 				m_pDMAChannel->setTransferAreaSize( pDriveUnit->getBytesPerBlock() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	push	eax
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+54]
	call	?setTransferAreaSize@CDMAChannel@@QAEKK@Z ; CDMAChannel::setTransferAreaSize

; 651  : 				m_pDMAChannel->transfer( pDriveUnit->getBytesPerBlock()-1, DT_IO2RAM, DD_INC );

	push	1
	push	1
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	sub	eax, 1
	push	eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+54]
	call	?transfer@CDMAChannel@@QAEXKW4EDMAType@@W4EDMADirection@@@Z ; CDMAChannel::transfer

; 652  : 
; 653  : 				// Place read command parameter in queue.
; 654  : 				m_pQueue->flush();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3852[ebp], edx
$L3850:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3846
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR $T3852[ebp]
	xor	edx, edx
	cmp	DWORD PTR [ecx+8], 0
	sete	dl
	push	edx
	push	OFFSET FLAT:??_C@_0L@BCOG@isEmpty?$CI?$CJ?$DN?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3846:
	mov	eax, DWORD PTR $T3852[ebp]
	xor	ecx, ecx
	cmp	DWORD PTR [eax+8], 0
	sete	cl
	and	ecx, 255				; 000000ffH
	test	ecx, ecx
	jne	SHORT $L3849
	mov	ecx, DWORD PTR $T3852[ebp]
	call	?pop@?$TQueue@E@@QAEEXZ			; TQueue<unsigned char>::pop
	jmp	SHORT $L3850
$L3849:

; 655  : 				m_pQueue->push( iHeadUnit );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+50]
	mov	DWORD PTR $T3882[ebp], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3880
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	dl, BYTE PTR _iHeadUnit$[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3880:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3869[ebp], eax
	cmp	DWORD PTR $T3869[ebp], 0
	je	SHORT $L3870
	mov	eax, DWORD PTR $T3869[ebp]
	mov	cl, BYTE PTR _iHeadUnit$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR $T3869[ebp]
	mov	DWORD PTR [edx+1], 0
	mov	eax, DWORD PTR $T3869[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	ecx, DWORD PTR $T3869[ebp]
	mov	DWORD PTR -228+[ebp], ecx
	jmp	SHORT $L3871
$L3870:
	mov	DWORD PTR -228+[ebp], 0
$L3871:
	mov	edx, DWORD PTR -228+[ebp]
	mov	DWORD PTR _pLink$3879[ebp], edx
	mov	eax, DWORD PTR $T3882[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3863[ebp], ecx
	mov	edx, DWORD PTR _pLink$3879[ebp]
	mov	eax, DWORD PTR $T3863[ebp]
	mov	DWORD PTR [edx+5], eax
	mov	ecx, DWORD PTR $T3882[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3867[ebp], edx
	mov	eax, DWORD PTR $T3867[ebp]
	mov	ecx, DWORD PTR _pLink$3879[ebp]
	mov	DWORD PTR [eax+1], ecx
	mov	edx, DWORD PTR $T3882[ebp]
	mov	eax, DWORD PTR _pLink$3879[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3882[ebp]
	cmp	DWORD PTR [ecx+8], 0
	jne	SHORT $L3878
	mov	edx, DWORD PTR $T3882[ebp]
	mov	eax, DWORD PTR _pLink$3879[ebp]
	mov	DWORD PTR [edx+8], eax
$L3878:

; 656  : 				m_pQueue->push( iCylinder );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3912[ebp], edx
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3910
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	cl, BYTE PTR _iCylinder$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3910:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3899[ebp], eax
	cmp	DWORD PTR $T3899[ebp], 0
	je	SHORT $L3900
	mov	edx, DWORD PTR $T3899[ebp]
	mov	al, BYTE PTR _iCylinder$[ebp]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR $T3899[ebp]
	mov	DWORD PTR [ecx+1], 0
	mov	edx, DWORD PTR $T3899[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR $T3899[ebp]
	mov	DWORD PTR -232+[ebp], eax
	jmp	SHORT $L3901
$L3900:
	mov	DWORD PTR -232+[ebp], 0
$L3901:
	mov	ecx, DWORD PTR -232+[ebp]
	mov	DWORD PTR _pLink$3909[ebp], ecx
	mov	edx, DWORD PTR $T3912[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3893[ebp], eax
	mov	ecx, DWORD PTR _pLink$3909[ebp]
	mov	edx, DWORD PTR $T3893[ebp]
	mov	DWORD PTR [ecx+5], edx
	mov	eax, DWORD PTR $T3912[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3897[ebp], ecx
	mov	edx, DWORD PTR $T3897[ebp]
	mov	eax, DWORD PTR _pLink$3909[ebp]
	mov	DWORD PTR [edx+1], eax
	mov	ecx, DWORD PTR $T3912[ebp]
	mov	edx, DWORD PTR _pLink$3909[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR $T3912[ebp]
	cmp	DWORD PTR [eax+8], 0
	jne	SHORT $L3908
	mov	ecx, DWORD PTR $T3912[ebp]
	mov	edx, DWORD PTR _pLink$3909[ebp]
	mov	DWORD PTR [ecx+8], edx
$L3908:

; 657  : 				m_pQueue->push( (unsigned char)pDriveUnit->getHead(iBlockNumber) );

	mov	eax, DWORD PTR _iBlockNumber$[ebp]
	push	eax
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getHead@CDriveUnit@@QAEKK@Z		; CDriveUnit::getHead
	mov	BYTE PTR $T3938[ebp], al
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+50]
	mov	DWORD PTR $T3937[ebp], edx
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L3935
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	cl, BYTE PTR $T3938[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3935:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3926[ebp], eax
	cmp	DWORD PTR $T3926[ebp], 0
	je	SHORT $L3927
	mov	dl, BYTE PTR $T3938[ebp]
	push	edx
	mov	ecx, DWORD PTR $T3926[ebp]
	call	??0CLink@?$TQueue@E@@QAE@E@Z		; TQueue<unsigned char>::CLink::CLink
	mov	DWORD PTR -236+[ebp], eax
	jmp	SHORT $L3928
$L3927:
	mov	DWORD PTR -236+[ebp], 0
$L3928:
	mov	eax, DWORD PTR -236+[ebp]
	mov	DWORD PTR _pLink$3934[ebp], eax
	mov	ecx, DWORD PTR $T3937[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3920[ebp], edx
	mov	eax, DWORD PTR _pLink$3934[ebp]
	mov	ecx, DWORD PTR $T3920[ebp]
	mov	DWORD PTR [eax+5], ecx
	mov	edx, DWORD PTR $T3937[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3924[ebp], eax
	mov	ecx, DWORD PTR $T3924[ebp]
	mov	edx, DWORD PTR _pLink$3934[ebp]
	mov	DWORD PTR [ecx+1], edx
	mov	eax, DWORD PTR $T3937[ebp]
	mov	ecx, DWORD PTR _pLink$3934[ebp]
	mov	DWORD PTR [eax+4], ecx
	mov	edx, DWORD PTR $T3937[ebp]
	cmp	DWORD PTR [edx+8], 0
	jne	SHORT $L3933
	mov	eax, DWORD PTR $T3937[ebp]
	mov	ecx, DWORD PTR _pLink$3934[ebp]
	mov	DWORD PTR [eax+8], ecx
$L3933:

; 658  : 				m_pQueue->push( (unsigned char)pDriveUnit->getSector(iBlockNumber) );

	mov	edx, DWORD PTR _iBlockNumber$[ebp]
	push	edx
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getSector@CDriveUnit@@QAEKK@Z		; CDriveUnit::getSector
	mov	BYTE PTR $T3964[ebp], al
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	mov	DWORD PTR $T3963[ebp], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	edx, edx
	je	SHORT $L3961
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	al, BYTE PTR $T3964[ebp]
	push	eax
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L3961:
	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T3952[ebp], eax
	cmp	DWORD PTR $T3952[ebp], 0
	je	SHORT $L3953
	mov	cl, BYTE PTR $T3964[ebp]
	push	ecx
	mov	ecx, DWORD PTR $T3952[ebp]
	call	??0CLink@?$TQueue@E@@QAE@E@Z		; TQueue<unsigned char>::CLink::CLink
	mov	DWORD PTR -240+[ebp], eax
	jmp	SHORT $L3954
$L3953:
	mov	DWORD PTR -240+[ebp], 0
$L3954:
	mov	edx, DWORD PTR -240+[ebp]
	mov	DWORD PTR _pLink$3960[ebp], edx
	mov	eax, DWORD PTR $T3963[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T3946[ebp], ecx
	mov	edx, DWORD PTR _pLink$3960[ebp]
	mov	eax, DWORD PTR $T3946[ebp]
	mov	DWORD PTR [edx+5], eax
	mov	ecx, DWORD PTR $T3963[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR $T3950[ebp], edx
	mov	eax, DWORD PTR $T3950[ebp]
	mov	ecx, DWORD PTR _pLink$3960[ebp]
	mov	DWORD PTR [eax+1], ecx
	mov	edx, DWORD PTR $T3963[ebp]
	mov	eax, DWORD PTR _pLink$3960[ebp]
	mov	DWORD PTR [edx+4], eax
	mov	ecx, DWORD PTR $T3963[ebp]
	cmp	DWORD PTR [ecx+8], 0
	jne	SHORT $L3959
	mov	edx, DWORD PTR $T3963[ebp]
	mov	eax, DWORD PTR _pLink$3960[ebp]
	mov	DWORD PTR [edx+8], eax
$L3959:

; 659  : 				m_pQueue->push( (unsigned char)pDriveUnit->getDataBytesPerSector() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getDataBytesPerSector@CDriveUnit@@QAEKXZ ; CDriveUnit::getDataBytesPerSector
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+50]
	call	?push@?$TQueue@E@@QAEXE@Z		; TQueue<unsigned char>::push

; 660  : 				m_pQueue->push( (unsigned char)pDriveUnit->getEndOfTrack() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getEndOfTrack@CDriveUnit@@QAEKXZ	; CDriveUnit::getEndOfTrack
	push	eax
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+50]
	call	?push@?$TQueue@E@@QAEXE@Z		; TQueue<unsigned char>::push

; 661  : 				m_pQueue->push( (unsigned char)pDriveUnit->getGapLength() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getGapLength@CDriveUnit@@QAEKXZ	; CDriveUnit::getGapLength
	push	eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	call	?push@?$TQueue@E@@QAEXE@Z		; TQueue<unsigned char>::push

; 662  : 				m_pQueue->push( (unsigned char)pDriveUnit->getDataLength() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getDataLength@CDriveUnit@@QAEKXZ	; CDriveUnit::getDataLength
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+50]
	call	?push@?$TQueue@E@@QAEXE@Z		; TQueue<unsigned char>::push

; 663  : 				issueCommand( FDCC_READ_DATA );

	push	5
	mov	ecx, DWORD PTR _this$[ebp]
	call	?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z ; CFloppyDiskController::issueCommand

; 664  : 
; 665  : 				// Copy data from DMA transfer area to application buffer.
; 666  : 				if(m_bDebug) cout << m_pClassName << pFunctionName << "Copying 0x" << pDriveUnit->getBytesPerBlock() << " bytes from 0x" << (DWORD)(m_pDMAChannel->getTransferAreaPointer()) << " to 0x" << (DWORD)pBuffer << endl;

	xor	edx, edx
	test	edx, edx
	je	SHORT $L2855
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _pBuffer$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2860
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+54]
	call	?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ ; CDMAChannel::getTransferAreaPointer
	push	eax
	push	OFFSET FLAT:$SG2859
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	push	eax
	push	OFFSET FLAT:$SG2858
	lea	edx, DWORD PTR _pFunctionName$[ebp]
	push	edx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2855:

; 667  : 				memcpy( pBuffer, m_pDMAChannel->getTransferAreaPointer(), pDriveUnit->getBytesPerBlock() );

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	push	eax
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+54]
	call	?getTransferAreaPointer@CDMAChannel@@QBEPAXXZ ; CDMAChannel::getTransferAreaPointer
	push	eax
	mov	ecx, DWORD PTR _pBuffer$[ebp]
	push	ecx
	call	_memcpy
	add	esp, 12					; 0000000cH

; 668  : 				pBuffer = (BYTE*)pBuffer + pDriveUnit->getBytesPerBlock();

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getBytesPerBlock@CDriveUnit@@QAEKXZ	; CDriveUnit::getBytesPerBlock
	mov	edx, DWORD PTR _pBuffer$[ebp]
	add	edx, eax
	mov	DWORD PTR _pBuffer$[ebp], edx

; 669  : 				
; 670  : 				// Block has been read.
; 671  : 				bDataRead = true;

	mov	BYTE PTR _bDataRead$[ebp], 1

; 673  : 			else

	jmp	$L2862
$L2848:

; 675  : 				// Current cylinder different to cyclinder seeked.
; 676  : 				cout << m_pClassName << pFunctionName << "Drive reports cylinder " << pDriveUnit->getCurrentCylinder() << " seeked " << iCylinder << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	al, BYTE PTR _iCylinder$[ebp]
	push	eax
	push	OFFSET FLAT:$SG2864
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getCurrentCylinder@CDriveUnit@@QAEKXZ	; CDriveUnit::getCurrentCylinder
	push	eax
	push	OFFSET FLAT:$SG2863
	lea	ecx, DWORD PTR _pFunctionName$[ebp]
	push	ecx
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
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
	call	??6ostream@@QAEAAV0@E@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<

; 677  : 
; 678  : 				// Recalibrate drive.
; 679  : 				m_pQueue->push( iHeadUnit );

	mov	dl, BYTE PTR _iHeadUnit$[ebp]
	push	edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+50]
	call	?push@?$TQueue@E@@QAEXE@Z		; TQueue<unsigned char>::push

; 680  : 				issueCommand( FDCC_RECALIBRATE );

	push	4
	mov	ecx, DWORD PTR _this$[ebp]
	call	?issueCommand@CFloppyDiskController@@AAE?BKW4EFDCCommand@@@Z ; CFloppyDiskController::issueCommand

; 681  : 
; 682  : 				// Decrement retry counter.
; 683  : 				iRetries--;

	mov	ecx, DWORD PTR _iRetries$[ebp]
	sub	ecx, 1
	mov	DWORD PTR _iRetries$[ebp], ecx
$L2862:

; 685  : 		} while( bDataRead==false && iRetries>0 );

	mov	edx, DWORD PTR _bDataRead$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L2865
	cmp	DWORD PTR _iRetries$[ebp], 0
	ja	$L2845
$L2865:

; 686  : 
; 687  : 		// Increment block number.
; 688  : 		iBlockNumber++;

	mov	eax, DWORD PTR _iBlockNumber$[ebp]
	add	eax, 1
	mov	DWORD PTR _iBlockNumber$[ebp], eax

; 689  : 
; 690  : 		// Increment number of blocks read.
; 691  : 		iBlocksRead++;

	mov	ecx, DWORD PTR _iBlocksRead$[ebp]
	add	ecx, 1
	mov	DWORD PTR _iBlocksRead$[ebp], ecx

; 692  : 	}

	jmp	$L2837
$L2842:

; 693  : 
; 694  : 	// Request motor off for drive unit.
; 695  : 	requestMotorOff( pDriveUnit );

	mov	edx, DWORD PTR _pDriveUnit$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?requestMotorOff@CFloppyDiskController@@QAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::requestMotorOff

; 696  : 
; 697  : 	// Return number of blocks read.
; 698  : 	return iBlocksRead;

	mov	eax, DWORD PTR _iBlocksRead$[ebp]

; 699  : }

	mov	esp, ebp
	pop	ebp
	ret	16					; 00000010H
?readBlocks@CFloppyDiskController@@QAEKPAVCDriveUnit@@KKPAX@Z ENDP ; CFloppyDiskController::readBlocks
_TEXT	ENDS
_DATA	SEGMENT
	ORG $+3
$SG2870	DB	'reset()', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?reset@CFloppyDiskController@@AAE_NXZ PROC NEAR		; CFloppyDiskController::reset

; 711  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 712  : 	if( m_bDebugInit ) cout << m_pClassName << "reset()" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2869
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2870
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2869:

; 713  : 
; 714  : 	// Set interrupt flag.
; 715  : 	setWaitForInterruptFlag( true );

	push	1
	mov	ecx, DWORD PTR _this$[ebp]
	call	?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z ; CFloppyDiskController::setWaitForInterruptFlag

; 716  : 
; 717  : 	// Reset controller.
; 718  : 	m_iResultsPending = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+17], 0

; 719  : 	m_iDigitalOutputRegisterState = 0x00;

	mov	edx, DWORD PTR _this$[ebp]
	mov	BYTE PTR [edx+21], 0

; 720  : 	m_pDigitalOutputRegister->writeByte( m_iDigitalOutputRegisterState );

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR [eax+21]
	push	ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+42]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 721  : 
; 722  : 	// Hold "Reset" for at lease 10ms.
; 723  : 	Application.getSystem().getTimer().delayExecution( 10 );

	push	10					; 0000000aH
	mov	ecx, OFFSET FLAT:?Application@@3VCApplication@@A
	call	?getSystem@CApplication@@QAEAAVCSystem@@XZ ; CApplication::getSystem
	mov	ecx, eax
	call	?getTimer@CSystem@@QAEAAVCTimer@@XZ	; CSystem::getTimer
	mov	ecx, eax
	call	?delayExecution@CTimer@@QBEXK@Z		; CTimer::delayExecution

; 724  : 
; 725  : 	// Return interrupt success.
; 726  : 	return waitForInterrupt();

	mov	ecx, DWORD PTR _this$[ebp]
	call	?waitForInterrupt@CFloppyDiskController@@AAE_NXZ ; CFloppyDiskController::waitForInterrupt

; 727  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?reset@CFloppyDiskController@@AAE_NXZ ENDP		; CFloppyDiskController::reset
_TEXT	ENDS
PUBLIC	?select@CFloppyDiskController@@QAEXPBVCDriveUnit@@@Z ; CFloppyDiskController::select
_TEXT	SEGMENT
_pDriveUnit$ = 8
_this$ = -4
?select@CFloppyDiskController@@QAEXPBVCDriveUnit@@@Z PROC NEAR ; CFloppyDiskController::select

; 740  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	DWORD PTR _this$[ebp], ecx

; 741  : 	// Write drive selection byte to digital output register.
; 742  : 	m_pDigitalOutputRegister->writeByte( (m_iDigitalOutputRegisterState&0xfc)|(unsigned char)(pDriveUnit->getUnitNumber()) );

	mov	eax, DWORD PTR _this$[ebp]
	xor	ecx, ecx
	mov	cl, BYTE PTR [eax+21]
	mov	esi, ecx
	and	esi, 252				; 000000fcH
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getUnitNumber@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getUnitNumber
	and	eax, 255				; 000000ffH
	or	esi, eax
	push	esi
	mov	edx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [edx+42]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 743  : }

	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	4
?select@CFloppyDiskController@@QAEXPBVCDriveUnit@@@Z ENDP ; CFloppyDiskController::select
_TEXT	ENDS
_DATA	SEGMENT
$SG2880	DB	'senseInterruptStatus()', 00H
_DATA	ENDS
_TEXT	SEGMENT
_this$ = -4
?senseInterruptStatus@CFloppyDiskController@@ABE_NXZ PROC NEAR ; CFloppyDiskController::senseInterruptStatus

; 757  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 758  : 	if(m_bDebugIO) cout << m_pClassName << "senseInterruptStatus()" << endl;

	xor	eax, eax
	test	eax, eax
	je	SHORT $L2879
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2880
	push	OFFSET FLAT:?m_pClassName@CFloppyDiskController@@0QBDB ; CFloppyDiskController::m_pClassName
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2879:

; 759  : 
; 760  : 	// Send "Sense Interrupt Status" command.
; 761  : 	return writeByte( 0x08 );

	push	8
	mov	ecx, DWORD PTR _this$[ebp]
	call	?writeByte@CFloppyDiskController@@ABE?B_NE@Z ; CFloppyDiskController::writeByte

; 762  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?senseInterruptStatus@CFloppyDiskController@@ABE_NXZ ENDP ; CFloppyDiskController::senseInterruptStatus
_iValue$ = 8
_this$ = -4
?setStatusRegister0@CFloppyDiskController@@QAEXE@Z PROC NEAR ; CFloppyDiskController::setStatusRegister0

; 777  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 778  : 	// Store register value.
; 779  : 	m_iStatusRegister0 = iValue;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _iValue$[ebp]
	mov	BYTE PTR [eax+58], cl

; 780  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setStatusRegister0@CFloppyDiskController@@QAEXE@Z ENDP	; CFloppyDiskController::setStatusRegister0
_bWaitForInterrupt$ = 8
_this$ = -4
?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z PROC NEAR ; CFloppyDiskController::setWaitForInterruptFlag

; 793  : {

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx

; 794  : 	// Set flag.
; 795  : 	m_bWaitForInterrupt = bWaitForInterrupt;

	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _bWaitForInterrupt$[ebp]
	mov	BYTE PTR [eax+16], cl

; 796  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?setWaitForInterruptFlag@CFloppyDiskController@@AAEX_N@Z ENDP ; CFloppyDiskController::setWaitForInterruptFlag
_TEXT	ENDS
PUBLIC	?timerISRHandler@CFloppyDiskController@@AAEXXZ	; CFloppyDiskController::timerISRHandler
_TEXT	SEGMENT
?timerISR@CFloppyDiskController@@SAXXZ PROC NEAR	; CFloppyDiskController::timerISR

; 810  : {

	push	ebp
	mov	ebp, esp

; 811  : 	// Call handler with instance.
; 812  : 	((CFloppyDiskController*)getInstance())->timerISRHandler();

	call	?getInstance@CFloppyDiskController@@CAPBV1@XZ ; CFloppyDiskController::getInstance
	mov	ecx, eax
	call	?timerISRHandler@CFloppyDiskController@@AAEXXZ ; CFloppyDiskController::timerISRHandler

; 813  : }

	pop	ebp
	ret	0
?timerISR@CFloppyDiskController@@SAXXZ ENDP		; CFloppyDiskController::timerISR
_TEXT	ENDS
EXTRN	?getMotorOffRequestFlag@CDriveUnit@@QBE?B_NXZ:NEAR ; CDriveUnit::getMotorOffRequestFlag
_TEXT	SEGMENT
_this$ = -40
_iTimeToMotorOff$ = -4
_pDriveUnit$ = -8
_DriveUnits$2898 = -20
$T3981 = -24
_Item$3990 = -28
$T3999 = -36
_Next$4009 = -32
?timerISRHandler@CFloppyDiskController@@AAEXXZ PROC NEAR ; CFloppyDiskController::timerISRHandler

; 826  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 40					; 00000028H
	mov	DWORD PTR _this$[ebp], ecx

; 827  : 	unsigned long iTimeToMotorOff;
; 828  : 	CDriveUnit* pDriveUnit;
; 829  :  
; 830  : 	// Only handle on every sixteen interrupts.
; 831  : 	if( m_iCallsToTimerHandle--==0 )

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	sub	eax, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+12], eax
	test	ecx, ecx
	jne	$L4020

; 833  : 		// Reset interrupt processing counter.
; 834  : 		m_iCallsToTimerHandle = 16;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+12], 16			; 00000010H

; 835  : 
; 836  : 		// Clear statistics.
; 837  : 		m_iBytesRead = 0;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx+4], 0

; 838  : 		m_iBytesWritten = 0;

	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+8], 0

; 839  : 
; 840  : 		// Scan drive units for a motor off request.
; 841  : 		TCursor<CDriveUnit*> DriveUnits( *m_pDriveUnits );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+34]
	mov	DWORD PTR $T3981[ebp], ecx
	cmp	DWORD PTR $T3981[ebp], 0
	jne	SHORT $L3977
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_0CA@HLMD@TCursor?5created?5on?5NULL?5?9?5Halt?4?$AA@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3976:
	mov	edx, 1
	test	edx, edx
	je	SHORT $L3977
	jmp	SHORT $L3976
$L3977:
	mov	eax, DWORD PTR $T3981[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3981[ebp]
	call	DWORD PTR [edx+8]
	mov	DWORD PTR _DriveUnits$2898[ebp], eax
	mov	eax, DWORD PTR $T3981[ebp]
	mov	edx, DWORD PTR [eax]
	mov	ecx, DWORD PTR $T3981[ebp]
	call	DWORD PTR [edx+12]
	mov	DWORD PTR _DriveUnits$2898[ebp+4], eax
	mov	eax, DWORD PTR _DriveUnits$2898[ebp]
	mov	DWORD PTR _DriveUnits$2898[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3978
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2898[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@GEAJ@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Fir@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3978:
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L3979
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$2898[ebp+4]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@EMJK@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Las@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3979:
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L3974
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$2898[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CL@DFCL@TCursor?$DMItemType?$DO?3?3TCursor?5?9?5Cur@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3974:

; 842  : 		for( pDriveUnit=DriveUnits.first() ; DriveUnits.more() ; pDriveUnit=DriveUnits.next() )

	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3991
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2898[ebp]
	push	edx
	push	OFFSET FLAT:??_C@_0CH@NOOL@TCursor?$DMItemType?$DO?3?3first?5?9?5First@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3991:
	cmp	DWORD PTR _DriveUnits$2898[ebp], 0
	jne	SHORT $L3992
	mov	DWORD PTR _DriveUnits$2898[ebp+8], 0
	mov	DWORD PTR _Item$3990[ebp], 0
	jmp	SHORT $L3989
$L3992:
	mov	eax, DWORD PTR _DriveUnits$2898[ebp]
	mov	DWORD PTR _DriveUnits$2898[ebp+8], eax
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L3994
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2898[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CJ@CIEN@TCursor?$DMItemType?$DO?3?3first?5?9?5Curre@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L3994:
	mov	eax, DWORD PTR _DriveUnits$2898[ebp+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Item$3990[ebp], ecx
$L3989:
	mov	edx, DWORD PTR _Item$3990[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], edx
	jmp	$L2899
$L2900:
	mov	DWORD PTR _Next$4009[ebp], 0
	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	eax, eax
	je	SHORT $L4010
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	ecx, DWORD PTR _DriveUnits$2898[ebp+8]
	push	ecx
	push	OFFSET FLAT:??_C@_0CI@JNKO@TCursor?$DMItemType?$DO?3?3next?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L4010:
	cmp	DWORD PTR _DriveUnits$2898[ebp+8], 0
	je	SHORT $L4008
	mov	edx, DWORD PTR _DriveUnits$2898[ebp+8]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T3999[ebp], eax
	mov	ecx, DWORD PTR $T3999[ebp]
	mov	DWORD PTR _DriveUnits$2898[ebp+8], ecx
	xor	edx, edx
	mov	dl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	edx, edx
	je	SHORT $L4012
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	eax, DWORD PTR _DriveUnits$2898[ebp+8]
	push	eax
	push	OFFSET FLAT:??_C@_0CF@PELF@TCursor?$DMItemType?$DO?3?3next?5?9?5Next?5a@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L4012:
	cmp	DWORD PTR _DriveUnits$2898[ebp+8], 0
	je	SHORT $L4008
	mov	ecx, DWORD PTR _DriveUnits$2898[ebp+8]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _Next$4009[ebp], edx
$L4008:
	mov	eax, DWORD PTR _Next$4009[ebp]
	mov	DWORD PTR _pDriveUnit$[ebp], eax
$L2899:
	xor	ecx, ecx
	mov	cl, BYTE PTR ?m_bDebug@?$TCursor@PAVCDriveUnit@@@@0_NB ; TCursor<CDriveUnit *>::m_bDebug
	test	ecx, ecx
	je	SHORT $L4016
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	mov	edx, DWORD PTR _DriveUnits$2898[ebp+8]
	push	edx
	push	OFFSET FLAT:??_C@_0CI@GHFM@TCursor?$DMItemType?$DO?3?3more?5?9?5Curren@ ; `string'
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@K@Z			; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L4016:
	xor	eax, eax
	cmp	DWORD PTR _DriveUnits$2898[ebp+8], 0
	setne	al
	and	eax, 255				; 000000ffH
	test	eax, eax
	je	SHORT $L2901

; 844  : 			// Check need to turn units motor off.
; 845  : 			if( pDriveUnit->getMotorOffRequestFlag()==true )

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getMotorOffRequestFlag@CDriveUnit@@QBE?B_NXZ ; CDriveUnit::getMotorOffRequestFlag
	and	eax, 255				; 000000ffH
	cmp	eax, 1
	jne	SHORT $L2904

; 847  : 				// Check time to motor off.
; 848  : 				iTimeToMotorOff = pDriveUnit->getTimeToMotorOff();

	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?getTimeToMotorOff@CDriveUnit@@QBE?BKXZ	; CDriveUnit::getTimeToMotorOff
	mov	DWORD PTR _iTimeToMotorOff$[ebp], eax

; 849  : 				if( iTimeToMotorOff>0 )

	cmp	DWORD PTR _iTimeToMotorOff$[ebp], 0
	jbe	SHORT $L2904

; 851  : 					// Decrement time to motor off.
; 852  : 					pDriveUnit->setTimeToMotorOff( iTimeToMotorOff-1 );

	mov	ecx, DWORD PTR _iTimeToMotorOff$[ebp]
	sub	ecx, 1
	push	ecx
	mov	ecx, DWORD PTR _pDriveUnit$[ebp]
	call	?setTimeToMotorOff@CDriveUnit@@QAEXK@Z	; CDriveUnit::setTimeToMotorOff

; 853  : 
; 854  : 					// Force motor off if just gone to zero.
; 855  : 					if( iTimeToMotorOff==1 )

	cmp	DWORD PTR _iTimeToMotorOff$[ebp], 1
	jne	SHORT $L2904

; 856  : 						motorOff( pDriveUnit );

	mov	edx, DWORD PTR _pDriveUnit$[ebp]
	push	edx
	mov	ecx, DWORD PTR _this$[ebp]
	call	?motorOff@CFloppyDiskController@@AAE_NPBVCDriveUnit@@@Z ; CFloppyDiskController::motorOff
$L2904:

; 859  : 		}

	jmp	$L2900
$L2901:

; 860  : 
; 861  : 		// Decrement watchdog timer.
; 862  : 		m_iInterruptTimeOut--;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+26]
	sub	ecx, 1
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+26], ecx

; 863  : 	}

$L4020:

; 864  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?timerISRHandler@CFloppyDiskController@@AAEXXZ ENDP	; CFloppyDiskController::timerISRHandler
_this$ = -8
_bSuccess$ = -4
?waitForInterrupt@CFloppyDiskController@@AAE_NXZ PROC NEAR ; CFloppyDiskController::waitForInterrupt

; 877  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 8
	mov	DWORD PTR _this$[ebp], ecx

; 878  : 	bool bSuccess;	
; 879  : 
; 880  : 	// Setup watchdog timer.
; 881  : 	m_iInterruptTimeOut = 3;

	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+26], 3
$L2910:

; 882  : 
; 883  : 	// Look for interrupt.
; 884  : 	while( m_bWaitForInterrupt==true && m_iInterruptTimeOut>0 );

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+16]
	cmp	edx, 1
	jne	SHORT $L2911
	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+26], 0
	jle	SHORT $L2911
	jmp	SHORT $L2910
$L2911:

; 885  : 
; 886  : 	// Return success(true if WFI flag is now false).
; 887  : 	bSuccess = !m_bWaitForInterrupt;

	mov	ecx, DWORD PTR _this$[ebp]
	xor	edx, edx
	mov	dl, BYTE PTR [ecx+16]
	neg	edx
	sbb	edx, edx
	inc	edx
	mov	BYTE PTR _bSuccess$[ebp], dl

; 888  : 	//cout << "Wait for interrupt returned " << (long)bSuccess << endl;
; 889  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 890  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?waitForInterrupt@CFloppyDiskController@@AAE_NXZ ENDP	; CFloppyDiskController::waitForInterrupt
_TEXT	ENDS
_DATA	SEGMENT
	ORG $+1
$SG2924	DB	'CFloppyDiskController::writeByte(1) Failed.', 00H
_DATA	ENDS
_TEXT	SEGMENT
_iByte$ = 8
_this$ = -16
_iRetry$ = -12
_bSuccess$ = -4
_iStatus$ = -8
?writeByte@CFloppyDiskController@@ABE?B_NE@Z PROC NEAR	; CFloppyDiskController::writeByte

; 903  : {

	push	ebp
	mov	ebp, esp
	sub	esp, 16					; 00000010H
	mov	DWORD PTR _this$[ebp], ecx

; 904  : 	int iRetry;
; 905  : 	bool bSuccess;
; 906  : 	unsigned char iStatus;
; 907  : 
; 908  : 	// Assume failure.
; 909  : 	bSuccess = false;

	mov	BYTE PTR _bSuccess$[ebp], 0

; 910  : 
; 911  : 	// Retry while FDC is busy.
; 912  : 	for( iRetry=m_iPortRetryAttempts ; iRetry>0 ; iRetry-- )

	mov	DWORD PTR _iRetry$[ebp], 8192		; 00002000H
	jmp	SHORT $L2919
$L2920:
	mov	eax, DWORD PTR _iRetry$[ebp]
	sub	eax, 1
	mov	DWORD PTR _iRetry$[ebp], eax
$L2919:
	cmp	DWORD PTR _iRetry$[ebp], 0
	jle	SHORT $L2921

; 914  : 		// Check ready status of the FDC.
; 915  : 		iStatus = m_pMainStatusRegister->readByte();

	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+46]
	call	?readByte@CIOPort@@QBE?BEXZ		; CIOPort::readByte
	mov	BYTE PTR _iStatus$[ebp], al

; 916  : 		if( (iStatus&0xc0)==0x80 )

	mov	edx, DWORD PTR _iStatus$[ebp]
	and	edx, 255				; 000000ffH
	and	edx, 192				; 000000c0H
	cmp	edx, 128				; 00000080H
	jne	SHORT $L2922

; 918  : 			// Write byte to port.
; 919  : 			m_pDataRegister->writeByte( iByte );

	mov	al, BYTE PTR _iByte$[ebp]
	push	eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [ecx+38]
	call	?writeByte@CIOPort@@QBEXE@Z		; CIOPort::writeByte

; 920  : 			bSuccess = true;

	mov	BYTE PTR _bSuccess$[ebp], 1

; 921  : 			break;

	jmp	SHORT $L2921
$L2922:

; 923  : 	}

	jmp	SHORT $L2920
$L2921:

; 924  : 
; 925  : 	// Signal failure.
; 926  : 	if( bSuccess==false )

	mov	edx, DWORD PTR _bSuccess$[ebp]
	and	edx, 255				; 000000ffH
	test	edx, edx
	jne	SHORT $L2923

; 927  : 		cout << "CFloppyDiskController::writeByte(1) Failed." << endl;

	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:$SG2924
	mov	ecx, OFFSET FLAT:?cout@@3Vostream_withassign@@A
	call	??6ostream@@QAEAAV0@PBD@Z		; ostream::operator<<
	mov	ecx, eax
	call	??6ostream@@QAEAAV0@P6AAAV0@AAV0@@Z@Z	; ostream::operator<<
$L2923:

; 928  : 
; 929  : 	// Return success status.
; 930  : 	return bSuccess;

	mov	al, BYTE PTR _bSuccess$[ebp]

; 931  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?writeByte@CFloppyDiskController@@ABE?B_NE@Z ENDP	; CFloppyDiskController::writeByte
_TEXT	ENDS
;	COMDAT ?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ
_TEXT	SEGMENT
_this$ = -4
?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ PROC NEAR	; TList<CDriveUnit *>::count, COMDAT

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
?count@?$TList@PAVCDriveUnit@@@@UBE?BKXZ ENDP		; TList<CDriveUnit *>::count
_TEXT	ENDS
;	COMDAT ?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ PROC NEAR ; TList<CDriveUnit *>::first, COMDAT

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
?first@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ ENDP ; TList<CDriveUnit *>::first
_TEXT	ENDS
;	COMDAT ?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ
_TEXT	SEGMENT
_this$ = -4
?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ PROC NEAR ; TList<CDriveUnit *>::last, COMDAT

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
?last@?$TList@PAVCDriveUnit@@@@UBEPBVCNode@?$TCollection@PAVCDriveUnit@@@@XZ ENDP ; TList<CDriveUnit *>::last
_TEXT	ENDS
;	COMDAT ?pop@?$TQueue@E@@QAEEXZ
_TEXT	SEGMENT
_this$ = -20
_pOldest$ = -4
$T4030 = -8
$T4034 = -12
$T4038 = -16
?pop@?$TQueue@E@@QAEEXZ PROC NEAR			; TQueue<unsigned char>::pop, COMDAT

; 76   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 20					; 00000014H
	mov	DWORD PTR _this$[ebp], ecx

; 77   : 	CLink* pOldest;
; 78   : 
; 79   : 	pOldest = (CLink*)m_pOldest;

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR _pOldest$[ebp], ecx

; 80   : 	m_pOldest = (CLink*)(m_pOldest->getNewer());

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax+1]
	mov	DWORD PTR $T4030[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR $T4030[ebp]
	mov	DWORD PTR [edx+8], eax

; 81   : 	((CLink*)m_pOldest)->setOlder( NULL );

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T4034[ebp], edx
	mov	eax, DWORD PTR $T4034[ebp]
	mov	DWORD PTR [eax+5], 0

; 82   : 
; 83   : 	return pOldest->getItem();

	mov	ecx, DWORD PTR _pOldest$[ebp]
	mov	dl, BYTE PTR [ecx]
	mov	BYTE PTR $T4038[ebp], dl
	mov	al, BYTE PTR $T4038[ebp]

; 84   : }

	mov	esp, ebp
	pop	ebp
	ret	0
?pop@?$TQueue@E@@QAEEXZ ENDP				; TQueue<unsigned char>::pop
_TEXT	ENDS
;	COMDAT ?push@?$TQueue@E@@QAEXE@Z
_TEXT	SEGMENT
_DataItem$ = 8
_this$ = -20
_pLink$ = -4
$T4040 = -8
$T4049 = -12
$T4053 = -16
?push@?$TQueue@E@@QAEXE@Z PROC NEAR			; TQueue<unsigned char>::push, COMDAT

; 98   : {

	push	ebp
	mov	ebp, esp
	sub	esp, 24					; 00000018H
	mov	DWORD PTR _this$[ebp], ecx

; 99   : 	CLink* pLink;
; 100  : 
; 101  : 	if( m_bDebug ) cout << m_pTemplateName << "push(0x" << DataItem << ")" << endl;

	xor	eax, eax
	mov	al, BYTE PTR ?m_bDebug@?$TQueue@E@@0_NB	; TQueue<unsigned char>::m_bDebug
	test	eax, eax
	je	SHORT $L2989
	push	OFFSET FLAT:?endl@@YAAAVostream@@AAV1@@Z ; endl
	push	OFFSET FLAT:??_C@_01KMMP@?$CJ?$AA@	; `string'
	mov	cl, BYTE PTR _DataItem$[ebp]
	push	ecx
	push	OFFSET FLAT:??_C@_07IHEJ@push?$CI0x?$AA@ ; `string'
	push	OFFSET FLAT:?m_pTemplateName@?$TQueue@E@@0QBDB ; TQueue<unsigned char>::m_pTemplateName
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
$L2989:

; 102  : 
; 103  : 	// Allocate a new link.
; 104  : 	pLink = new CLink( DataItem );

	push	9
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T4040[ebp], eax
	cmp	DWORD PTR $T4040[ebp], 0
	je	SHORT $L4041
	mov	edx, DWORD PTR $T4040[ebp]
	mov	al, BYTE PTR _DataItem$[ebp]
	mov	BYTE PTR [edx], al
	mov	ecx, DWORD PTR $T4040[ebp]
	mov	DWORD PTR [ecx+1], 0
	mov	edx, DWORD PTR $T4040[ebp]
	mov	DWORD PTR [edx+5], 0
	mov	eax, DWORD PTR $T4040[ebp]
	mov	DWORD PTR -24+[ebp], eax
	jmp	SHORT $L4042
$L4041:
	mov	DWORD PTR -24+[ebp], 0
$L4042:
	mov	ecx, DWORD PTR -24+[ebp]
	mov	DWORD PTR _pLink$[ebp], ecx

; 105  : 
; 106  : 	// Initialise new link.
; 107  : 	pLink->setOlder( m_pNewest );

	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+4]
	mov	DWORD PTR $T4049[ebp], eax
	mov	ecx, DWORD PTR _pLink$[ebp]
	mov	edx, DWORD PTR $T4049[ebp]
	mov	DWORD PTR [ecx+5], edx

; 108  : 	((CLink*)m_pNewest)->setNewer( pLink );

	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR $T4053[ebp], ecx
	mov	edx, DWORD PTR $T4053[ebp]
	mov	eax, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [edx+1], eax

; 109  : 
; 110  : 	// Set new link as newest.
; 111  : 	m_pNewest = pLink;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [ecx+4], edx

; 112  : 	
; 113  : 	// Set oldest if this is the first addition.
; 114  : 	if( m_pOldest==NULL )

	mov	eax, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [eax+8], 0
	jne	SHORT $L2995

; 115  : 		m_pOldest = pLink;

	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR _pLink$[ebp]
	mov	DWORD PTR [ecx+8], edx
$L2995:

; 116  : }

	mov	esp, ebp
	pop	ebp
	ret	4
?push@?$TQueue@E@@QAEXE@Z ENDP				; TQueue<unsigned char>::push
_TEXT	ENDS
;	COMDAT ??_G?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z PROC NEAR	; TCollection<CDriveUnit *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TCollection@PAVCDriveUnit@@@@6B@ ; TCollection<CDriveUnit *>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3052
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3052:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TCollection@PAVCDriveUnit@@@@UAEPAXI@Z ENDP	; TCollection<CDriveUnit *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TList@PAVCDriveUnit@@@@UAEPAXI@Z
_TEXT	SEGMENT
$T4096 = -36
_pNode$4149 = -8
_pNext$4150 = -12
$T4157 = -16
$T4158 = -20
$T4063 = -4
$T4072 = -24
___flags$ = 8
_this$ = -40
$T4082 = -28
$T4089 = -32
??_G?$TList@PAVCDriveUnit@@@@UAEPAXI@Z PROC NEAR	; TList<CDriveUnit *>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	sub	esp, 44					; 0000002cH
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TList@PAVCDriveUnit@@@@6B@ ; TList<CDriveUnit *>::`vftable'
$L4180:
	mov	ecx, DWORD PTR _this$[ebp]
	cmp	DWORD PTR [ecx+8], 0
	je	$L4179
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR $T4063[ebp], ecx
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR _pNode$4149[ebp], eax
$L4151:
	cmp	DWORD PTR _pNode$4149[ebp], 0
	je	SHORT $L4152
	mov	ecx, DWORD PTR _pNode$4149[ebp]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR $T4072[ebp], edx
	mov	eax, DWORD PTR $T4072[ebp]
	cmp	eax, DWORD PTR $T4063[ebp]
	je	SHORT $L4152
	mov	ecx, DWORD PTR _pNode$4149[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR _pNode$4149[ebp], edx
	jmp	SHORT $L4151
$L4152:
	cmp	DWORD PTR _pNode$4149[ebp], 0
	je	$L4148
	mov	eax, DWORD PTR _pNode$4149[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _pNext$4150[ebp], ecx
	mov	edx, DWORD PTR _pNode$4149[ebp]
	mov	eax, DWORD PTR [edx+8]
	mov	DWORD PTR $T4082[ebp], eax
	mov	ecx, DWORD PTR $T4082[ebp]
	mov	edx, DWORD PTR _pNext$4150[ebp]
	mov	DWORD PTR [ecx+4], edx
	mov	eax, DWORD PTR _pNode$4149[ebp]
	mov	ecx, DWORD PTR [eax+8]
	mov	DWORD PTR $T4089[ebp], ecx
	mov	edx, DWORD PTR _pNext$4150[ebp]
	mov	eax, DWORD PTR $T4089[ebp]
	mov	DWORD PTR [edx+8], eax
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+8]
	cmp	edx, DWORD PTR _pNode$4149[ebp]
	jne	SHORT $L4154
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR _pNext$4150[ebp]
	mov	DWORD PTR [eax+8], ecx
$L4154:
	mov	edx, DWORD PTR _this$[ebp]
	mov	eax, DWORD PTR [edx+12]
	cmp	eax, DWORD PTR _pNode$4149[ebp]
	jne	SHORT $L4155
	mov	ecx, DWORD PTR _pNode$4149[ebp]
	mov	edx, DWORD PTR [ecx+8]
	mov	DWORD PTR $T4096[ebp], edx
	mov	eax, DWORD PTR _this$[ebp]
	mov	ecx, DWORD PTR $T4096[ebp]
	mov	DWORD PTR [eax+12], ecx
$L4155:
	mov	edx, DWORD PTR _pNode$4149[ebp]
	mov	DWORD PTR $T4158[ebp], edx
	mov	eax, DWORD PTR $T4158[ebp]
	mov	DWORD PTR $T4157[ebp], eax
	cmp	DWORD PTR $T4157[ebp], 0
	je	SHORT $L4159
	mov	ecx, 1
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L4146
	mov	edx, DWORD PTR $T4157[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L4146:
	mov	eax, DWORD PTR $T4157[ebp]
	mov	DWORD PTR -44+[ebp], eax
	jmp	SHORT $L4160
$L4159:
	mov	DWORD PTR -44+[ebp], 0
$L4160:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	sub	edx, 1
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+4], edx
$L4148:
	jmp	$L4180
$L4179:
	mov	ecx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [ecx], OFFSET FLAT:??_7?$TCollection@PAVCDriveUnit@@@@6B@ ; TCollection<CDriveUnit *>::`vftable'
	mov	edx, DWORD PTR ___flags$[ebp]
	and	edx, 1
	test	edx, edx
	je	SHORT $L3055
	mov	eax, DWORD PTR _this$[ebp]
	push	eax
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3055:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TList@PAVCDriveUnit@@@@UAEPAXI@Z ENDP		; TList<CDriveUnit *>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??_G?$TQueue@E@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8
_this$ = -4
??_G?$TQueue@E@@UAEPAXI@Z PROC NEAR			; TQueue<unsigned char>::`scalar deleting destructor', COMDAT
	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax], OFFSET FLAT:??_7?$TQueue@E@@6B@ ; TQueue<unsigned char>::`vftable'
	mov	ecx, DWORD PTR ___flags$[ebp]
	and	ecx, 1
	test	ecx, ecx
	je	SHORT $L3058
	mov	edx, DWORD PTR _this$[ebp]
	push	edx
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
$L3058:
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??_G?$TQueue@E@@UAEPAXI@Z ENDP				; TQueue<unsigned char>::`scalar deleting destructor'
_TEXT	ENDS
;	COMDAT ??0CLink@?$TQueue@E@@QAE@E@Z
_TEXT	SEGMENT
_Item$ = 8
_this$ = -4
??0CLink@?$TQueue@E@@QAE@E@Z PROC NEAR			; TQueue<unsigned char>::CLink::CLink, COMDAT

; 28   : 		CLink( DataType Item ) { m_Item = Item; m_pNewer = NULL; m_pOlder = NULL; };

	push	ebp
	mov	ebp, esp
	push	ecx
	mov	DWORD PTR _this$[ebp], ecx
	mov	eax, DWORD PTR _this$[ebp]
	mov	cl, BYTE PTR _Item$[ebp]
	mov	BYTE PTR [eax], cl
	mov	edx, DWORD PTR _this$[ebp]
	mov	DWORD PTR [edx+1], 0
	mov	eax, DWORD PTR _this$[ebp]
	mov	DWORD PTR [eax+5], 0
	mov	eax, DWORD PTR _this$[ebp]
	mov	esp, ebp
	pop	ebp
	ret	4
??0CLink@?$TQueue@E@@QAE@E@Z ENDP			; TQueue<unsigned char>::CLink::CLink
_TEXT	ENDS
END
