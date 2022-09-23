// Descriptor.h: interface for the CDescriptor class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_DESCRIPTOR_H__6CB49A75_A4A4_11D1_B553_000000000000__INCLUDED_)
#define AFX_DESCRIPTOR_H__6CB49A75_A4A4_11D1_B553_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "CPUTypes.h"


class CDescriptor  
{
	static const char m_pClassName[];
	static const bool m_bDebug;
	union
	{
		WORD m_Limit_0_15;			// Memory/system.
		WORD m_Offset_0_15;			// Gate.
	};

	union
	{
		WORD m_Base_0_15;			// Memory/system.
		SELECTOR m_iSelector;		// Gate.
	};

	union
	{
		BYTE m_Base_16_23;			// Memory/system.
		struct						// Gate.
		{
			BYTE m_DWordCount:5;
			BYTE m_Zero:3;
		};
	};

	// Memory/System/Gate.
	BYTE m_iType	:4;
	BYTE m_DType	:1;
	BYTE m_DPL		:2;
	BYTE m_Present	:1;

	union
	{
		struct						// Memory/system.
		{
			BYTE m_Limit_16_19	:4;
			BYTE m_Available	:1;
			BYTE m_Zero			:1;
			BYTE m_D			:1;
			BYTE m_Granularity	:1;
			BYTE m_Base_24_31;
		} m_Attributes;
		WORD m_Offset_16_31;			// Gate.
	};

	// Private member functions.
	void			setDType( EDType );

public:
	// Constructors and destructor.
					CDescriptor();
					~CDescriptor();

	// Public member functions.
	void			dump();
	bool			getAvailable();
	void*			getBase();
	EDType			getDType();
	EDescriptorType	getType();
	void			set( EPriviledgeLevel, void*, DWORD );
	void			setAvailable( bool );
	void			setBase( void* );
	void			setDPL( EPriviledgeLevel );
	void			setDWordCount( BYTE );
	void			setLimit( DWORD );
	void			setMemoryDescriptor( void*, DWORD );
	void			setPointer( SELECTOR, void* );
	void			setPresent( bool );	
	void			setType( EDescriptorType );
};

#endif // !defined(AFX_DESCRIPTOR_H__6CB49A75_A4A4_11D1_B553_000000000000__INCLUDED_)
