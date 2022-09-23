
	;----------------------------------------------------------
	;
	; Purpose	: Initialises high-level language objects.
	;
	; Date		: 09/02/98
	;
	; Inputs	: ebx = Image base address.
	;	  	  	  ds  = Global segment.
	;	  	  	  es  = Global segment.
	;
	; Outputs	: Carry clear on success.
	;	
	;---------------------------------------------------------
	pSectionName	= ss:[ebp-08]

	proc PE_Initialise
		enter	8, 0
		push	eax
		push	ebx
		push	ecx
		push	esi

		; Look for '.CRT' section.
		mov		byte ptr pSectionName[00], '.'
		mov		byte ptr pSectionName[01], 'C'
		mov		byte ptr pSectionName[02], 'R'
		mov		byte ptr pSectionName[03], 'T'
		mov		byte ptr pSectionName[04], 0
		mov		ecx, ebx
		lea		ebx, pSectionName
		call	PE_GetSectionAddress
		jnc		PEI_found_crt

		; Look for 'CRT' section.
		mov		byte ptr pSectionName[00], 'C'
		mov		byte ptr pSectionName[01], 'R'
		mov		byte ptr pSectionName[02], 'T'
		mov		byte ptr pSectionName[03], 0
		lea		ebx, pSectionName
		call	PE_GetSectionAddress
		jnc		PEI_found_crt

		; No identifiable CRT section.
		jmp		PEI_failed

	PEI_found_crt:
		; Execute initialisers in section.
		mov		esi, eax
	PEI_next_initialiser:
		cmp		dword ptr [esi], 0
		jz		PEI_success
		push	esi
		call	dword ptr [esi]
		pop		esi
		add		esi, 4
		jmp		PEI_next_initialiser

	PEI_success:
		; Return with success.
		clc
		jmp		PEI_done

	PEI_failed:
		; Return in fail state.
		stc

	PEI_done:
		pop		esi
		pop		ecx
		pop		ebx
		pop		eax
		leave
		ret
	endp PE_Initialise
