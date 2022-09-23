
	proc wend
		push	eax
		mov		eax, 1000
	PERA_pause:
		dec		eax
		jnz		PERA_pause
		pop		eax
		ret
	endp wend


	;-----------------------------------------------------
	;
	; Purpose	: Relocates a the specified section.
	;
	; Date		: 19/01/98
	;
	; Inputs	: ebx = Image base address.
	;		  	  ecx = Optional header.
	;		  	  edx = Section header.
	;		  	  ds  = Global segment.
	;		  	  es  = Global segment.
	;
	; Outputs	: Carry clear on success.
	;	
	;-----------------------------------------------------
	proc PE_RelocateSection
		push	eax
		push	ecx
		push	edi
		push	esi

		mov		edi, 0b8000h
		mov		al, [edx+00]
		mov		[edi+00], al
		call	wend
		mov		al, [edx+01]
		mov		[edi+02], al
		call	wend
		mov		al, [edx+02]
		mov		[edi+04], al
		call	wend
		mov		al, [edx+03]
		mov		[edi+06], al
		call	wend
		mov		al, [edx+04]
		mov		[edi+08], al
		call	wend
		mov		al, [edx+05]
		mov		[edi+10], al
		call	wend

		;Set source pointer to section data.
		mov		esi, ebx
		add		esi, [edx+SH_POINTER_TO_RAW_DATA]

		;Set destination pointer to relocation address.
		mov		edi, [ecx+OH_IMAGE_BASE]
		add		edi, [edx+SH_VIRTUAL_ADDRESS]

		;Get length of section.
		mov		ecx, [edx+SH_SIZE_OF_RAW_DATA]

		;Relocate section.
		cld
		rep		movsb

	PRS_success:
		clc
		jmp	PRS_done

	PRS_failed:
		stc

	PRS_done:
		pop		esi
		pop		edi
		pop		ecx
		pop		eax
		ret
	endp PE_RelocateSection
