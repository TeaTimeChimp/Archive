// Descriptor.cpp: implementation of the CDescriptor class.
//
//////////////////////////////////////////////////////////////////////

#include "libcpp\ostream.h"

#include "Application.h"
#include "Descriptor.h"


const char CDescriptor::m_pClassName[]	= "Descriptor::";
const bool CDescriptor::m_bDebug		= false;


//////////////////////////////////////////////////////////////////////
// Construction/Destruction
//////////////////////////////////////////////////////////////////////

CDescriptor::CDescriptor()
{
	// Initialise state.
	setDPL( DPL0 );
	setPresent( false );
}


// Purpose	: Destructor.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/06/99
//
// Modification History
// Date		Initials	Reason
//
CDescriptor::~CDescriptor()
{
}


// Purpose	: Returns a pointer to the base address described by the descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 26/07/99
//
// Modification History
// Date		Initials	Reason
//
void* CDescriptor::getBase()
{
	void* pBase;

	// Check that the call is appropriate.
	switch( getType() )
	{
	case DT_LDT:
		{
			pBase = (void*)((m_Attributes.m_Base_24_31<<24)+(m_Base_16_23<<16)+m_Base_0_15);
			break;
		}
	default:
		{
			cout << "Type = " << (WORD)getType() << endl;
			Application.halt( "void* CDescriptor::getBase() - Inappropriate type." );
			break;
		}
	}

	// Return base pointer.
	return pBase;
}


// Purpose	: Returns the descriptor type.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
EDType CDescriptor::getDType()
{
	EDType eDType;

	// Swictch on descriptor type attribute.
	switch( m_Attributes.m_D )
	{
	case 0:
		{
			// Descriptor is a memory descriptor.
			eDType = DT_SYSTEM;
			break;
		}
	case 1:
		{
			// Descriptor is a system descriptor.
			eDType = DT_MEMORY;
			break;
		}
	default:
		{
			// Invalid type.
			Application.halt( "CDescriptor::getDType - Invalid type." );
			break;
		}
	}

	// Return descriptor type.
	return eDType;
}


// Purpose	: Populates a descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::set( EPriviledgeLevel DPL, void* pBase, DWORD Limit )
{
	// Set common fields.
	m_DPL 	  = DPL;
	m_Present = 1;

	// Populate memory segment.
	setMemoryDescriptor( pBase, Limit );
}


// Purpose	: Dumps the descriptor contents to the output stream.
//
// Author	: Daniel J Hawkins
//
// Date		: 20/08/99
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::dump()
{
	BYTE* pThis;
	const char pFunctionName[] = "dump - ";

	// Dump raw descriptor.
	pThis = (BYTE*)this;
	cout << m_pClassName << pFunctionName << pThis[7] << " " << pThis[6] << " " << pThis[5] << " " << pThis[4] << " " << pThis[3] << " " << pThis[2] << " " << pThis[1] << " " << pThis[0] << endl;

	// Decode descriptor by it's type.
	switch( getType() )
	{
	case DT_READ_ONLY:
		{
			cout << m_pClassName << pFunctionName << "Read-only." << endl;
			break;
		}
	case DT_EXECUTE_ONLY_ACCESSED:
		{
			cout << m_pClassName << pFunctionName << "Execute-only, accessed." << endl;
			break;
		}
	case DT_EXECUTE_READ:
		{
			cout << m_pClassName << pFunctionName << "Execute read." << endl;
			break;
		}
	case DT_UNDEFINED_0:
		{
			cout << m_pClassName << pFunctionName << "Undefined." << endl;
			break;
		}
	case DT_AVAILABLE_386_TSS:
		{
			// Avilable 32bit TSS.
			cout << m_pClassName << pFunctionName << "Available 32bit TSS." << endl;
			cout << m_pClassName << pFunctionName << "TSS at " << m_iSelector << ":" << (OFFSET)((m_Offset_16_31<<16)+m_Offset_0_15) << endl;
			break;
		}
	default:
		{
			// System type not supported.
			cout << m_pClassName << pFunctionName << "Invalid type " << (WORD)getType() << endl;
			Application.halt( "CDescriptor::dump - Halted." );
			break;
		}
	}
}


// Purpose	: Accessor for availability bit.
//
// Author	: Daniel J Hawkins
//
// Date		: 13/02/98
//
// Modification History
// Date		Initials	Reason
//
bool CDescriptor::getAvailable()
{
	// Return true if bit clear.
	return (m_Attributes.m_Available==0);
}


// Purpose	: Returns the type of the descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 22/07/99
//
// Modification History
// Date		Initials	Reason
//
EDescriptorType CDescriptor::getType()
{
	EDescriptorType eType;
	const char pFunctionName[] = "getType - ";

	// Set appropriate field value.
	switch( getDType() )
	{
		case DT_MEMORY:
		{
			// Memory descriptor.
			switch( m_iType )
			{
				case 0x00:	eType = DT_READ_ONLY;				break;
				case 0x02:	eType = DT_READ_WRITE;				break;	
				case 0x09:	eType = DT_EXECUTE_ONLY_ACCESSED;	break;
				case 0x0a:	eType = DT_EXECUTE_READ;			break;
				case 0x0e:	eType = DT_386_INTERRUPT_GATE;		break;
				default:
				{
					cout << "Descriptor::getType - Invalid memory type " << m_iType << "." << endl;
					Application.halt( "Descriptor::getType - Halted." );
					break;
				}
			}
			break;
		}
		case DT_SYSTEM:
		{
			switch( m_iType )
			{
				case 0x00:	eType = DT_UNDEFINED_0;			break;
				case 0x02:	eType = DT_LDT;					break;
				case 0x09:	eType = DT_AVAILABLE_386_TSS;	break;
				case 0x0b:	eType = DT_BUSY_386_TSS;		break;
				default:
				{
					Application.halt( "DescriptorType::getType - Invalid system type." );
					break;
				}
			}
			break;
		}
		default:
		{
			Application.halt( "DescriptorType::getType - Invalid 'D' type." );
			break;
		}
	}
	cout << m_pClassName << pFunctionName << "Type is " << (WORD)eType << endl;

	// Return descriptor type.
	return eType;
}


// Purpose	: Sets the 'available to software' bit of the descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setAvailable( bool Available )
{
	if( Available==true )
		m_Attributes.m_Available = 0;
	else
		m_Attributes.m_Available = 1;
}


// Purpose	: Populates a memory segment descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/01/98
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setMemoryDescriptor( void* pBase, DWORD iLimit )
{
	// Set descriptor members.
	setBase( pBase );
	setLimit( iLimit );
	m_DType		 				= 1;
	m_Attributes.m_Zero	 		= 0;
	m_Attributes.m_D	 		= 1;
	m_Attributes.m_Granularity	= 1;
}


void CDescriptor::setDPL( EPriviledgeLevel DPL )
{
	m_DPL = DPL;
}


void CDescriptor::setDWordCount( BYTE Count )
{
	m_DWordCount = Count;
}


// Purpose	: Sets the limit for a memory descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setLimit( DWORD iLimit )
{
	// Validate descriptor type.
	if( getDType()==DT_MEMORY )
	{
		m_Limit_0_15  				= (WORD)((iLimit>>12)&0x0000ffffL);
		m_Attributes.m_Limit_16_19	= (BYTE)((iLimit&0x000f0000L)>>16);
	}
	else
	{
		// Cannot set base on this type descriptors.
		Application.halt( "CDescriptor::setLimit - Wrong type." );
	}
}


// Purpose	: Sets the 48-bit pointer of a system descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: xx/xx/98
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setPointer( SELECTOR iSelector, void* pPointer )
{
	OFFSET iOffset;

	// Copy handler address to offset.
	iOffset = (OFFSET)pPointer;

	// Set 48-bit pointer.
	//cout << m_pClassName << "setPointer(0x" << iSelector << ",0x" << iOffset << ")" << endl;
	m_Offset_0_15	= (WORD)(iOffset&0x0000ffff);
	m_Offset_16_31	= (WORD)(iOffset>>16);
	m_iSelector		= iSelector;
}


void CDescriptor::setPresent( bool Present )
{
	if( Present==true )
		m_Present = 1;
	else
		m_Present = 0;
}

void CDescriptor::setDType( EDType DType )
{
	switch( DType )
	{
	case DT_SYSTEM:	m_DType = 0; break;
	case DT_MEMORY: m_DType = 1; break;
	default:
		{
			Application.halt( "Descriptor::setDType - Invalid type" );
			break;
		}
	}
	//cout << m_pClassName << "setDType(" << m_DType << ")" << endl;
}


// Purpose	: Sets the base pointer for a memory descriptor.
//
// Author	: Daniel J Hawkins
//
// Date		: 18/08/99
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setBase( void* pBase )
{
	OFFSET iBase;

	// Validate descriptor type.
	switch( getType() )
	{
	case DT_EXECUTE_READ:
	case DT_READ_WRITE:
	case DT_UNDEFINED_0:
		{
			// Cast base pointer to integer.
			iBase = (OFFSET)pBase;
	
			// Split base into descriptor fields.
			m_Base_0_15					= (WORD)(iBase&0x0000ffffL);
			m_Base_16_23				= (BYTE)((iBase&0x00ff0000L)>>16);
			m_Attributes.m_Base_24_31	= (BYTE)((iBase&0xff000000L)>>24);
		}
	default:
		{
			// Cannot set base on this type descriptors.
			dump();
			Application.halt( "CDescriptor::setBase - Wrong type." );
		}
	}
}


// Purpose	: Sets the descriptors type field.
//
// Author	: Daniel J Hawkins
//
// Date		: 16/02/98
//
// Modification History
// Date		Initials	Reason
//
void CDescriptor::setType( EDescriptorType eType )
{
	// Set appropriate field value.
	if(m_bDebug) cout << m_pClassName << "setType(" << (WORD)eType << ")" << endl;
	switch( eType )
	{
	case DT_READ_ONLY:			m_iType = 0x00; setDType(DT_MEMORY); break;
	case DT_READ_WRITE:			m_iType = 0x02; setDType(DT_MEMORY); break;
	case DT_EXECUTE_READ:		m_iType = 0x0a; setDType(DT_MEMORY); break;
	case DT_LDT:				m_iType = 0x02; setDType(DT_MEMORY); break;
	case DT_AVAILABLE_386_TSS:
		{
			dump();
			m_iType = 0x09; 
			setDType(DT_SYSTEM); 
			dump();
			break;
		}
	case DT_BUSY_386_TSS:		m_iType = 0x0b; setDType(DT_SYSTEM); break;
	case DT_386_INTERRUPT_GATE:	m_iType = 0x0e; setDType(DT_SYSTEM); break;

	default:
		{
			Application.halt( "CDescriptor::setType - Invalid type." );
			break;
		}
	}
	if(m_bDebug) cout << m_pClassName << "setType - Type set to " << m_iType << endl;
}


