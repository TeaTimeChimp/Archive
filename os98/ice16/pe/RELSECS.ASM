
	;-----------------------------------------------------
	;
	; Purpose	: Relocates all sections of the given
	;		  	  portable executable image.
	;
	; Date		: 19/01/98
	;
	; Inputs	: ebx = Image base address.
	;		 	  ecx = PE header.
	;		  	  ds  = Global segment.
	;		  	  es  = Global segment.
	;
	; Outputs	: Carry clear on success.
	;
	;-----------------------------------------------------
	proc PE_RelocateSections
		push	eax
		push	ecx
		push	edx

		;Relocate sections.
		movzx	eax, word ptr [ecx+PEH_NUMBER_OF_SECTIONS]

		;Point to first section.
		mov		edx, ecx
		add		edx, SIZEOF_PORTABLE_EXECUTABLE_HEADER+SIZEOF_OPTIONAL_HEADER

		;Point to optional header.
		add		ecx, SIZEOF_PORTABLE_EXECUTABLE_HEADER

	PRSS_next_section:
		;Check for no more sections.
		cmp		eax, 0
		jz		PRSS_success

		;Relocate this section.
		call	PE_RelocateSection
		jc		PRSS_failed

		;Move to next section.
		dec		eax
		add		edx, SIZEOF_SECTION_HEADER
		jmp		PRSS_next_section

	PRSS_success:
		;Return in success state.
		clc
		jmp		PRSS_done

	PRSS_failed:
		;Return in fail state.
		stc

	PRSS_done:
		pop		edx
		pop		ecx
		pop		eax
		ret
	endp PE_RelocateSections

