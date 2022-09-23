#include "CPUTypes.h"
#include "Process.h"

class CMZHeader
{
	WORD	m_iMagic;							// 00
	WORD	m_iBYTES_IN_LAST_PAGE;				// 02
	WORD	m_iPAGE_COUNT;						// 04
	WORD	m_iRELOCATION_COUNT;				// 06
	WORD	m_iPARAGRAPHS_IN_HEADER;			// 08
	WORD	m_iEXTRA_PARAGRAPHS_MINIMUM;		// 10
	WORD	m_iEXTRA_PARAGRAPHS_MAXIMUM;		// 12
	WORD	m_iINITIAL_SS;						// 14
	WORD	m_iINITIAL_SP;						// 16
	WORD	m_iCHECKSUM;						// 18
	WORD	m_iINITIAL_IP;						// 20
	WORD	m_iINITIAL_CS;						// 22
	WORD	m_iRELOCATION_TABLE;				// 24
	WORD	m_iOVERLAY_NUMBER;					// 26
	WORD	m_iReserved1[4];					// 28
	WORD	m_iOEM_ID;							// 36
	WORD	m_iOEM_INFO;						// 38
	WORD	m_iReserved2[10];					// 40
	DWORD	m_iFANew;							// 60

public:
	// Public member functions.
	WORD	getSignature() const { return m_iMagic; };
	DWORD	getPEHeaderOffset() const { return m_iFANew; };
};

class CPortableExecutable
{
	// Static constant data members.
	static const char	m_pClassName[];
	static const bool	m_bDebug;
	static const WORD	m_iSignatureMZ;
	static const DWORD	m_iSignatureNT;

	// Private class declarations.
	class CPEHeader
	{
		WORD	PEH_MACHINE;						// 00
		WORD	m_iNumberOfSections;				// 02
		DWORD	PEH_TIME_DATE_STAMP;				// 04
		DWORD	PEH_POINTER_TO_SYMBOL_TABLE;		// 08
		DWORD	PEH_NUMBER_OF_SYMBOLS;				// 12
		WORD	PEH_SIZE_OF_OPTIONAL_HEADER;		// 16
		WORD	PEH_CHARACTERISTICS;				// 18
		
	public:
		// Public member function.
		DWORD	getSignature() { return *((DWORD*)((DWORD)this-sizeof(DWORD))); };
		WORD	getNumberOfSections() { return m_iNumberOfSections; };
	};

	class COptionalHeader
	{
		WORD	OH_MAGIC;							// 00
		BYTE	OH_MAJOR_LINKER_VERSION;			// 02
		BYTE	OH_MINOR_LINKER_VERSION;			// 03
		DWORD	OH_SIZE_OF_CODE;					// 04
		DWORD	OH_SIZE_OF_INITIALISED_DATA;		// 08
		DWORD	OH_SIZE_OF_UNINITIALISED_DATA;		// 12
		DWORD	m_iAddressOfEntryPoint;				// 16
		DWORD	OH_BASE_OF_CODE;					// 20
		DWORD	OH_BASE_OF_DATA;					// 24
		DWORD	m_iImageBase;						// 28
		DWORD	OH_SECTION_ALIGNMENT;				// 32
		DWORD	OH_FILE_ALIGNMENT;					// 36
		WORD	OH_MAJOR_OPERATING_SYSTEM_VERSION;	// 40
		WORD	OH_MINOR_OPERATING_SYSTEM_VERSION;	// 42
		WORD	OH_MAJOR_IMAGE_VERSION;				// 44
		WORD	OH_MINOR_IMAGE_VERSION;				// 46
		WORD	OH_MAJOR_SUBSYSTEM_VERSION;			// 48
		WORD	OH_MINOR_SUBSYSTEM_VERSION;			// 50
		DWORD	OH_RESERVED_1;						// 52
		DWORD	OH_SIZE_OF_IMAGE;					// 56
		DWORD	OH_SIZE_OF_HEADERS;					// 60
		DWORD	OH_CHECKSUM;						// 64
		WORD	OH_SUBSYSTEM;						// 68
		WORD	OH_DLL_CHARACTERISTICS;				// 70
		DWORD	OH_SIZE_OF_STACK_RESERVE;			// 72
		DWORD	OH_SIZE_OF_STACK_COMMIT;			// 76
		DWORD	OH_SIZE_OF_HEAP_RESERVE;			// 80
		DWORD	OH_SIZE_OF_HEAP_COMMIT;				// 84
		DWORD	OH_LOADER_FLAGS;					// 88
		DWORD	OH_NUMBER_OF_RVA_AND_SIZES;			// 92
		QWORD	OH_DATA_DIRECTORY[16];				// 96

	public:
		void*	getEntryPoint() const { return (void*)(m_iAddressOfEntryPoint+m_iImageBase); };
		void*	getImageBase() const { return (void*)m_iImageBase; };
	};

	class CSectionHeader
	{
		static const char	m_pClassName[];
		char	m_pName[8];							// 00
		DWORD	SH_VIRTUAL_SIZE;					// 08
		DWORD	m_iVirtualAddress;					// 12
		DWORD	m_iSizeOfRawData;					// 16
		DWORD	m_iPointerToRawData;				// 20
		DWORD	SH_POINTER_TO_RELOCATIONS;			// 24
		DWORD	SH_POINTER_TO_LINE_NUMBERS;			// 28
		WORD	SH_NUMBER_OF_RELOCATIONS;			// 32
		WORD	SH_NUMBER_OF_LINE_NUMBERS;			// 34
		DWORD	SH_CHARACTERISTICS;					// 36

	public:
		// Public member functions.
		const char*	getName() const	{ return &m_pName[0]; };
		void*		getVirtualAddress() const { return (void*)m_iVirtualAddress; };
		bool		relocate( CProcess*, CMZHeader*, COptionalHeader*, bool );
	};	

	// Private data members.
	CMZHeader*				m_pMZHeader;
	CPEHeader*				m_pPEHeader;
	COptionalHeader*		m_pOptionalHeader;
	CSectionHeader*			m_pSectionHeaders;

	// Private member functions.
	void*					mapImage( CProcess* );
	CSectionHeader*			getFirstSectionHeader();
	void*					getRelocationTable( CSectionHeader* ) const;
	CSectionHeader*			getNextSectionHeader( CSectionHeader* );
	CSectionHeader*			getSectionHeader( const char* );
	bool					relocateSections( CProcess* );

public:
	// Public member functions.
	bool					initialise( CProcess*, void* );
	void*					getEntryPoint();
};
