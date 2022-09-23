;-----------------------------------------------------------------------------
;			|
; LOCATION	| \workshop\os\new\ice16\putch.asm
;			|
; PURPOSE	| To provide debug output for 32-bit startup routines.
;			|
; AUTHOR	| Daniel J Hawkins
;			|
; Date		| 20/04/96
;			|
;-----------------------------------------------------------------------------
; MODIFICATION HISTORY
; DATE	    INITIALS	REASON
; 11/02/98	DJH			Ripped from ICE32 Version 2 for version 3.
;
;-----------------------------------------------------------------------------

;-----------------------------------------------------------------------------
; Includes.
;-----------------------------------------------------------------------------
include debug.i


P386


segment _DATA public use32 'DATA'

	Video_dX	dd	?
	Video_dY	dd	?

ends _DATA


;-----------------------------------------------------------------------------
; Code.
;-----------------------------------------------------------------------------
segment _TEXT public use32 'CODE'
assume cs:_TEXT, ds:_DATA


	proc Debug_initialise
		mov		dword ptr Video_dX, 0
		mov		dword ptr Video_dY, 0
		ret
	endp Debug_initialise


	;-------------------------------------------------------------------------
	;
	; scrollTextUp
	;
	;	Purpose	: Scrolls the entire text screen up.
	;
	;	Inputs 	: None.
	;
	;	Outputs	: None.
	;
	;-------------------------------------------------------------------------
	PROC Debug_scrollTextUp
		push	eax
		push	ecx
		push	edx
		push	edi
		push	esi

;		dec		Video_dY

		;Destination pointer is first line.
		mov		edi, 0b8000h

		mov		eax, 160 	               ;Point source to
		mov		esi, eax                        ;

		mov		ecx, 25
		dec		ecx
		mul		ecx
		mov		ecx, eax
		shr		ecx, 2

		add		esi, 0b8000h
		cld
		rep		movsd

		;Blank bottom row.
		mov		ecx, 80
		mov		eax, 07000700h
		rep		stosd

		pop	esi
		pop	edi
		pop	edx
		pop	ecx
		pop	eax
		ret
	ENDP Debug_scrollTextUp


	;----------------------------------------------------------------------------
	;
	; writeCharacter
	;
	;	Purpose	: Writes a single one byte character to the video
	;			  display, at the current cursor position.
	;
	;	Inputs 	: bl = Character to output.
	;
	;	Outputs	: None.
	;
	;----------------------------------------------------------------------------
	PROC Debug_writeCharacter
		push	eax
		push	ecx
		push	edx
		push	edi

		;Calculate screen offset.
		mov		eax, 160
		mul		Video_dY
		mov		edi, Video_dX
		shl		edi, 1
		add		edi, eax

		;Output charater to video buffer.
		mov		[edi+0b8000h], bl

		;Increment horizontal position.
		inc     Video_dX

		;If horizontal position is width then move down a line.
		cmp		dword ptr Video_dX, 80
		jnz		PC_set_cursor_pos

		;Reset horizontal and ncerement vertical position.
		mov		dword ptr Video_dX, 0
		inc		Video_dY

		;If vertical position is height scroll up one line.
		cmp		dword ptr Video_dY, 25
		jnz		PC_set_cursor_pos
		dec		dword ptr Video_dY
		call	Debug_scrollTextUp

	PC_set_cursor_pos:
		pop		edi
		pop		edx
		pop		ecx
		pop		eax
		ret
	ENDP Debug_writeCharacter



	;----------------------------------------------------------------------------
	;
	; writeString
	;
	;	Outputs a NULL terminated string of characters.
	;
	;	Inputs - ds:ebx => NULL terminated string to output.
	;
	;	Outputs- None.
	;
	;----------------------------------------------------------------------------
	proc Debug_writeString
		push	ebx
		push	esi

		;Set character pointer to string.
		mov		esi, ebx

	KWS_next_char:

		;Get character from string.
		mov		bl, [esi]

		;Stop if character is NULL.
		cmp		bl, 0
		jz		KWS_done

		;Write character in bl.
		call	Debug_writeCharacter

		;Next character in string.
		inc		esi
		jmp		KWS_next_char

	KWS_done:
		pop		esi
		pop		ebx
		ret
	endp Debug_writeString

ends _TEXT
end
