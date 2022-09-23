.386p

include debug.i
include pe\pe.i

segment _TEXT public use32 'CODE'
assume cs:_TEXT

include pe\getseca.asm
include pe\init.asm
include pe\relsec.asm
include pe\relsecs.asm

	;-----------------------------------------------------
	;
	; Purpose	: Remaps the portable exectutable
	;		  image to memory.
	;
	; Date		: 19/01/98
	;
	; Inputs	: ebx = Raw file image.
	;			  ds  = Global data segment.
	;			  es  = Global data segment.
	;
	; Outputs	: Carry clear on success.
	;
	;-----------------------------------------------------
	proc PE_MapImage
		push	ecx

		;Store address of image in ebx.
		mov		ecx, ebx

		;Check MSDOS header signature.
		cmp		word ptr [ecx+MZH_MAGIC], SIGNATURE_MZ
		jnz		PMI_failed

		;Check NT header signature.
		add		ecx, [ecx+MZH_FANEW]
		cmp		dword ptr [ecx], SIGNATURE_NT
		jnz		PMI_failed

		;Reference PE header with ecx.
		add		ecx, 4

		;Relocate PE sections.
		call	PE_RelocateSections
		jc		PMI_failed

	PMI_success:
		;Return in success state.
		add		ecx, SIZEOF_PORTABLE_EXECUTABLE_HEADER
		mov		eax, [ecx+OH_IMAGE_BASE]
		add		eax, [ecx+OH_ADDRESS_OF_ENTRY_POINT]
		clc
		jmp		PMI_done

	PMI_failed:
		;Return in fail state.
		stc

	PMI_done:
		pop		ecx
		ret
	endp PE_MapImage

ends _TEXT

end
