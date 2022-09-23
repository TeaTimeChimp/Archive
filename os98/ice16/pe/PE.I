	;--------------------------------------------------------
	; Header signatures.
	;--------------------------------------------------------
	SIGNATURE_MZ						= 05a4dh
	SIGNATURE_NT						= 000004550h

	;--------------------------------------------------------
	; MZ Header.
	;--------------------------------------------------------
	MZH_MAGIC							= 00	;(word)
	MZH_BYTES_IN_LAST_PAGE				= 02	;(word)
	MZH_PAGE_COUNT						= 04	;(word)
	MZH_RELOCATION_COUNT				= 06	;(word)
	MZH_PARAGRAPHS_IN_HEADER			= 08	;(word)
	MZH_EXTRA_PARAGRAPHS_MINIMUM		= 10	;(word)
	MZH_EXTRA_PARAGRAPHS_MAXIMUM		= 12	;(word)
	MZH_INITIAL_SS						= 14	;(word)
	MZH_INITIAL_SP						= 16	;(word)
	MZH_CHECKSUM						= 18	;(word)
	MZH_INITIAL_IP						= 20	;(word)
	MZH_INITIAL_CS						= 22	;(word)
	MZH_RELOCATION_TABLE				= 24	;(word)
	MZH_OVERLAY_NUMBER					= 26	;(word)
	MZH_RESERVED						= 28	;(word*4)
	MZH_OEM_ID							= 36	;(word)
	MZH_OEM_INFO						= 38	;(word)
	MZH_RESERVED						= 40	;(word*10)
	MZH_FANEW							= 60	;(dword);

	;--------------------------------------------------------
	; Portable Exectuable Header.
	;--------------------------------------------------------
	SIZEOF_PORTABLE_EXECUTABLE_HEADER	= 20
	PEH_MACHINE							= 00	;(word)
	PEH_NUMBER_OF_SECTIONS				= 02	;(word)
	PEH_TIME_DATE_STAMP					= 04	;(dword)
	PEH_POINTER_TO_SYMBOL_TABLE 		= 08	;(dword)
	PEH_NUMBER_OF_SYMBOLS				= 12	;(dword)
	PEH_SIZE_OF_OPTIONAL_HEADER			= 16	;(word)
	PEH_CHARACTERISTICS					= 18	;(word)


	;--------------------------------------------------------
	; Optional Header.
	;--------------------------------------------------------
	SIZEOF_OPTIONAL_HEADER				= 224
	OH_MAGIC							= 00	;(word)
	OH_MAJOR_LINKER_VERSION				= 02	;(byte)
	OH_MINOR_LINKER_VERSION				= 03	;(byte)
	OH_SIZE_OF_CODE						= 04	;(dword)
	OH_SIZE_OF_INITIALISED_DATA			= 08	;(dword)
	OH_SIZE_OF_UNINITIALISED_DATA		= 12	;(dword)
	OH_ADDRESS_OF_ENTRY_POINT			= 16	;(dword)
	OH_BASE_OF_CODE						= 20	;(dword)
	OH_BASE_OF_DATA						= 24	;(dword)
	OH_IMAGE_BASE						= 28	;(dword)
	OH_SECTION_ALIGNMENT				= 32	;(dword)
	OH_FILE_ALIGNMENT					= 36	;(dword)
	OH_MAJOR_OPERATING_SYSTEM_VERSION	= 40	;(word)
	OH_MINOR_OPERATING_SYSTEM_VERSION	= 42	;(word)
	OH_MAJOR_IMAGE_VERSION				= 44	;(word)
	OH_MINOR_IMAGE_VERSION				= 46	;(word)
	OH_MAJOR_SUBSYSTEM_VERSION			= 48	;(word)
	OH_MINOR_SUBSYSTEM_VERSION			= 50	;(word)
	OH_RESERVED_1						= 52	;(dword)
	OH_SIZE_OF_IMAGE					= 56	;(dword)
	OH_SIZE_OF_HEADERS					= 60	;(dword)
	OH_CHECKSUM							= 64	;(dword)
	OH_SUBSYSTEM						= 68	;(word)
	OH_DLL_CHARACTERISTICS				= 70	;(word)
	OH_SIZE_OF_STACK_RESERVE			= 72	;(dword)
	OH_SIZE_OF_STACK_COMMIT				= 76	;(dword)
	OH_SIZE_OF_HEAP_RESERVE				= 80	;(dword)
	OH_SIZE_OF_HEAP_COMMIT				= 84	;(dword)
	OH_LOADER_FLAGS						= 88	;(dword)
	OH_NUMBER_OF_RVA_AND_SIZES			= 92	;(dword)
	OH_DATA_DIRECTORY					= 96	;(qword*16)


	;-------------------------------------------------------
	; Section header.
	;-------------------------------------------------------
	SIZEOF_SECTION_HEADER				= 40
	SH_NAME								= 00	;(byte*8)
	SH_PHYSICAL_ADDRESS					= 08	;(dword)
	SH_VIRTUAL_SIZE						= 08	;(dword)
	SH_VIRTUAL_ADDRESS					= 12	;(dword)
	SH_SIZE_OF_RAW_DATA					= 16	;(dword)
	SH_POINTER_TO_RAW_DATA				= 20	;(dword)
	SH_POINTER_TO_RELOCATIONS			= 24	;(dword)
	SH_POINTER_TO_LINE_NUMBERS			= 28	;(dword)
	SH_NUMBER_OF_RELOCATIONS			= 32	;(word)
	SH_NUMBER_OF_LINE_NUMBERS			= 34	;(word)
	SH_CHARACTERISTICS					= 36	;(dword)


	;-------------------------------------------------------
	; Portable executable procedures.
	;-------------------------------------------------------
	global PE_MapImage:near
	global PE_Initialise:near