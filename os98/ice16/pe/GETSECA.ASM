

	;----------------------------------------------------------
	;
	; Purpose	: Returns the relocated address of a 
	;		  given section.
	;
	; Date		: 09/02/98
	;
	; Inputs	: ebx = Name of section.
	;		  	  ecx = File address.
	;	  	  	  ds  = Global segment.
	;	  	  	  es  = Global segment.
	;
	; Outputs	: Carry clear on success.
	;	
	;---------------------------------------------------------
	proc PE_GetSectionAddress
		push	ecx
		push	edx
		push	edi
		push	esi

		; Reference PE header.
		add		ecx, [ecx+MZH_FANEW]
		add		ecx, 4

		; Relocate sections.
		movzx	eax, word ptr [ecx+PEH_NUMBER_OF_SECTIONS]

		; Point to first section.
		mov		edx, ecx
		add		edx, SIZEOF_PORTABLE_EXECUTABLE_HEADER+SIZEOF_OPTIONAL_HEADER

		; Point to optional header.
		add		ecx, SIZEOF_PORTABLE_EXECUTABLE_HEADER

	PEGSA_next_section:
		; Check for no more sections.
		cmp		eax, 0
		jz		PEGSA_failed

		; Compare section name.
		push	eax
		push	edi
		push	esi
		mov		edi, edx
		mov		esi, ebx
	PEGSA_next_char:
		mov		al, [edi]
		cmp		[esi], al
		jnz		PEGSA_no_match
		cmp		al, 0
		jz		PEGSA_match
		inc		edi
		inc		esi
		jmp		PEGSA_next_char

	PEGSA_match:
		pop		esi
		pop		edi
		pop		eax

		; Set destination pointer to relocation address.
		mov		eax, [ecx+OH_IMAGE_BASE]
		add		eax, [edx+SH_VIRTUAL_ADDRESS]
		jmp	PEGSA_success

	PEGSA_no_match:
		pop	esi
		pop	edi
		pop	eax

		; Move to next section.
		dec		eax
		add		edx, SIZEOF_SECTION_HEADER
		jmp		PEGSA_next_section

	PEGSA_success:
		; Return in success state.
		clc
		jmp	PEGSA_done

	PEGSA_failed:
		; Return in fail state.
		stc

	PEGSA_done:
		pop		esi
		pop		edi
		pop		edx
		pop		ecx
		ret
	endp PE_GetSectionAddress
