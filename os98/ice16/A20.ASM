	proc KbdSync
		push	eax
	AS_repeat:
		in      al, INTEL8042_STATUS
		and     al, 2
		loopnz  AS_repeat
		pop		eax
		ret
	endp KbdSync



		INTEL8042_COMMAND	= 64h
		INTEL8042_DATA      = 60h
		INTEL8042_OUTPUT	= 60h
		INTEL8042_STATUS    = 64h

		; Enable A20 line through keyboard controller.
;		call    KbdSync
;		mov     al, 0d1h
;		out		INTEL8042_COMMAND, al
;		call    KbdSync
;		mov     al, 0dfh
;		out     INTEL8042_OUTPUT, al
;		call    KbdSync
;		mov     al, 0ffh
;		out     INTEL8042_COMMAND, al
;		call    KbdSync

		; Establish state of A20 by manipulating byte 0.
;		mov		edi, 0000b8000h
;		mov		esi, 000000000h
;		mov		al, [esi]
;		mov		[edi+160], al
;		mov		esi, 000100000h
;		mov		al, [esi]
;		mov		[edi+162], al
;		cmp		[edi], al
