// IDT.h: interface for the CIDT class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_IDT_H__7FE0C192_A52A_11D1_B554_000000000000__INCLUDED_)
#define AFX_IDT_H__7FE0C192_A52A_11D1_B554_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "DescriptorTable.h"
#include "Errors.h"

struct SRegisteredISR
{
	void (*m_pHandler)();
	SRegisteredISR* m_pNext;
};


class CIDT : public CDescriptorTable  
{
	// Array of pointers to ISR handler chains.
	static SRegisteredISR* m_pRegisteredISRs[0xff];
	
	// Static member functions.
	static void defaultHandler( BYTE );
	static void callHandlerChain( BYTE );

	// Private member functions.
	void initialiseHandler( CDescriptor*, void(*)() );

	// First stop interrupt handlers.
	static void interruptServiceRequest00(){defaultHandler(0x00);}
	static void interruptServiceRequest01(){defaultHandler(0x01);}
	static void interruptServiceRequest02(){defaultHandler(0x02);}
	static void interruptServiceRequest03(){defaultHandler(0x03);}
	static void interruptServiceRequest04(){defaultHandler(0x04);}
	static void interruptServiceRequest05(){defaultHandler(0x05);}
	static void interruptServiceRequest06(){defaultHandler(0x06);}
	static void interruptServiceRequest07(){defaultHandler(0x07);}
	static void interruptServiceRequest08(){defaultHandler(0x08);}
	static void interruptServiceRequest09(){defaultHandler(0x09);}
	static void interruptServiceRequest0A(){defaultHandler(0x0A);}
	static void interruptServiceRequest0B(){defaultHandler(0x0B);}
	static void interruptServiceRequest0C(){defaultHandler(0x0C);}
	static void interruptServiceRequest0D(){defaultHandler(0x0D);}
	static void interruptServiceRequest0E(){defaultHandler(0x0E);}
	static void interruptServiceRequest0F(){defaultHandler(0x0F);}
	static void interruptServiceRequest10(){defaultHandler(0x10);}
	static void interruptServiceRequest11(){defaultHandler(0x11);}
	static void interruptServiceRequest12(){defaultHandler(0x12);}
	static void interruptServiceRequest13(){defaultHandler(0x13);}
	static void interruptServiceRequest14(){defaultHandler(0x14);}
	static void interruptServiceRequest15(){defaultHandler(0x15);}
	static void interruptServiceRequest16(){defaultHandler(0x16);}
	static void interruptServiceRequest17(){defaultHandler(0x17);}
	static void interruptServiceRequest18(){defaultHandler(0x18);}
	static void interruptServiceRequest19(){defaultHandler(0x19);}
	static void interruptServiceRequest1A(){defaultHandler(0x1A);}
	static void interruptServiceRequest1B(){defaultHandler(0x1B);}
	static void interruptServiceRequest1C(){defaultHandler(0x1C);}
	static void interruptServiceRequest1D(){defaultHandler(0x1D);}
	static void interruptServiceRequest1E(){defaultHandler(0x1E);}
	static void interruptServiceRequest1F(){defaultHandler(0x1F);}
	static void interruptServiceRequest20(){defaultHandler(0x20);}
	static void interruptServiceRequest21(){defaultHandler(0x21);}
	static void interruptServiceRequest22(){defaultHandler(0x22);}
	static void interruptServiceRequest23(){defaultHandler(0x23);}
	static void interruptServiceRequest24(){defaultHandler(0x24);}
	static void interruptServiceRequest25(){defaultHandler(0x25);}
	static void interruptServiceRequest26(){defaultHandler(0x26);}
	static void interruptServiceRequest27(){defaultHandler(0x27);}
	static void CIDT::interruptServiceRequest28(){defaultHandler(0x28);}
	static void CIDT::interruptServiceRequest29(){defaultHandler(0x29);}
	static void CIDT::interruptServiceRequest2A(){defaultHandler(0x2A);}
	static void CIDT::interruptServiceRequest2B(){defaultHandler(0x2B);}
	static void CIDT::interruptServiceRequest2C(){defaultHandler(0x2C);}
	static void CIDT::interruptServiceRequest2D(){defaultHandler(0x2D);}
	static void CIDT::interruptServiceRequest2E(){defaultHandler(0x2E);}
	static void CIDT::interruptServiceRequest2F(){defaultHandler(0x2F);}
	static void CIDT::interruptServiceRequest30(){defaultHandler(0x30);}
	static void CIDT::interruptServiceRequest31(){defaultHandler(0x31);}
	static void CIDT::interruptServiceRequest32(){defaultHandler(0x32);}
	static void CIDT::interruptServiceRequest33(){defaultHandler(0x33);}
	static void CIDT::interruptServiceRequest34(){defaultHandler(0x34);}
	static void CIDT::interruptServiceRequest35(){defaultHandler(0x35);}
	static void CIDT::interruptServiceRequest36(){defaultHandler(0x36);}
	static void CIDT::interruptServiceRequest37(){defaultHandler(0x37);}
	static void CIDT::interruptServiceRequest38(){defaultHandler(0x38);}
	static void CIDT::interruptServiceRequest39(){defaultHandler(0x39);}
	static void CIDT::interruptServiceRequest3A(){defaultHandler(0x3A);}
	static void CIDT::interruptServiceRequest3B(){defaultHandler(0x3B);}
	static void CIDT::interruptServiceRequest3C(){defaultHandler(0x3C);}
	static void CIDT::interruptServiceRequest3D(){defaultHandler(0x3D);}
	static void CIDT::interruptServiceRequest3E(){defaultHandler(0x3E);}
	static void CIDT::interruptServiceRequest3F(){defaultHandler(0x3F);}
	static void CIDT::interruptServiceRequest40(){defaultHandler(0x40);}
	static void CIDT::interruptServiceRequest41(){defaultHandler(0x41);}
	static void CIDT::interruptServiceRequest42(){defaultHandler(0x42);}
	static void CIDT::interruptServiceRequest43(){defaultHandler(0x43);}
	static void CIDT::interruptServiceRequest44(){defaultHandler(0x44);}
	static void CIDT::interruptServiceRequest45(){defaultHandler(0x45);}
	static void CIDT::interruptServiceRequest46(){defaultHandler(0x46);}
	static void CIDT::interruptServiceRequest47(){defaultHandler(0x47);}
	static void CIDT::interruptServiceRequest48(){defaultHandler(0x48);}
	static void CIDT::interruptServiceRequest49(){defaultHandler(0x49);}
	static void CIDT::interruptServiceRequest4A(){defaultHandler(0x4A);}
	static void CIDT::interruptServiceRequest4B(){defaultHandler(0x4B);}
	static void CIDT::interruptServiceRequest4C(){defaultHandler(0x4C);}
	static void CIDT::interruptServiceRequest4D(){defaultHandler(0x4D);}
	static void CIDT::interruptServiceRequest4E(){defaultHandler(0x4E);}
	static void CIDT::interruptServiceRequest4F(){defaultHandler(0x4F);}
	static void CIDT::interruptServiceRequest50(){defaultHandler(0x50);}
	static void CIDT::interruptServiceRequest51(){defaultHandler(0x51);}
	static void CIDT::interruptServiceRequest52(){defaultHandler(0x52);}
	static void CIDT::interruptServiceRequest53(){defaultHandler(0x53);}
	static void CIDT::interruptServiceRequest54(){defaultHandler(0x54);}
	static void CIDT::interruptServiceRequest55(){defaultHandler(0x55);}
	static void CIDT::interruptServiceRequest56(){defaultHandler(0x56);}
	static void CIDT::interruptServiceRequest57(){defaultHandler(0x57);}
	static void CIDT::interruptServiceRequest58(){defaultHandler(0x58);}
	static void CIDT::interruptServiceRequest59(){defaultHandler(0x59);}
	static void CIDT::interruptServiceRequest5A(){defaultHandler(0x5A);}
	static void CIDT::interruptServiceRequest5B(){defaultHandler(0x5B);}
	static void CIDT::interruptServiceRequest5C(){defaultHandler(0x5C);}
	static void CIDT::interruptServiceRequest5D(){defaultHandler(0x5D);}
	static void CIDT::interruptServiceRequest5E(){defaultHandler(0x5E);}
	static void CIDT::interruptServiceRequest5F(){defaultHandler(0x5F);}
	static void CIDT::interruptServiceRequest60(){defaultHandler(0x60);}
	static void CIDT::interruptServiceRequest61(){defaultHandler(0x61);}
	static void CIDT::interruptServiceRequest62(){defaultHandler(0x62);}
	static void CIDT::interruptServiceRequest63(){defaultHandler(0x63);}
	static void CIDT::interruptServiceRequest64(){defaultHandler(0x64);}
	static void CIDT::interruptServiceRequest65(){defaultHandler(0x65);}
	static void CIDT::interruptServiceRequest66(){defaultHandler(0x66);}
	static void CIDT::interruptServiceRequest67(){defaultHandler(0x67);}
	static void CIDT::interruptServiceRequest68(){defaultHandler(0x68);}
	static void CIDT::interruptServiceRequest69(){defaultHandler(0x69);}
	static void CIDT::interruptServiceRequest6A(){defaultHandler(0x6A);}
	static void CIDT::interruptServiceRequest6B(){defaultHandler(0x6B);}
	static void CIDT::interruptServiceRequest6C(){defaultHandler(0x6C);}
	static void CIDT::interruptServiceRequest6D(){defaultHandler(0x6D);}
	static void CIDT::interruptServiceRequest6E(){defaultHandler(0x6E);}
	static void CIDT::interruptServiceRequest6F(){defaultHandler(0x6F);}
	static void CIDT::interruptServiceRequest70(){defaultHandler(0x70);}
	static void CIDT::interruptServiceRequest71(){defaultHandler(0x71);}
	static void CIDT::interruptServiceRequest72(){defaultHandler(0x72);}
	static void CIDT::interruptServiceRequest73(){defaultHandler(0x73);}
	static void CIDT::interruptServiceRequest74(){defaultHandler(0x74);}
	static void CIDT::interruptServiceRequest75(){defaultHandler(0x75);}
	static void CIDT::interruptServiceRequest76(){defaultHandler(0x76);}
	static void CIDT::interruptServiceRequest77(){defaultHandler(0x77);}
	static void CIDT::interruptServiceRequest78(){defaultHandler(0x78);}
	static void CIDT::interruptServiceRequest79(){defaultHandler(0x79);}
	static void CIDT::interruptServiceRequest7A(){defaultHandler(0x7A);}
	static void CIDT::interruptServiceRequest7B(){defaultHandler(0x7B);}
	static void CIDT::interruptServiceRequest7C(){defaultHandler(0x7C);}
	static void CIDT::interruptServiceRequest7D(){defaultHandler(0x7D);}
	static void CIDT::interruptServiceRequest7E(){defaultHandler(0x7E);}
	static void CIDT::interruptServiceRequest7F(){defaultHandler(0x7F);}	
	static void CIDT::interruptServiceRequest80(){defaultHandler(0x80);}
	static void CIDT::interruptServiceRequest81(){defaultHandler(0x81);}
	static void CIDT::interruptServiceRequest82(){defaultHandler(0x82);}
	static void CIDT::interruptServiceRequest83(){defaultHandler(0x83);}
	static void CIDT::interruptServiceRequest84(){defaultHandler(0x84);}
	static void CIDT::interruptServiceRequest85(){defaultHandler(0x85);}
	static void CIDT::interruptServiceRequest86(){defaultHandler(0x86);}
	static void CIDT::interruptServiceRequest87(){defaultHandler(0x87);}
	static void CIDT::interruptServiceRequest88(){defaultHandler(0x88);}
	static void CIDT::interruptServiceRequest89(){defaultHandler(0x89);}
	static void CIDT::interruptServiceRequest8A(){defaultHandler(0x8A);}
	static void CIDT::interruptServiceRequest8B(){defaultHandler(0x8B);}
	static void CIDT::interruptServiceRequest8C(){defaultHandler(0x8C);}
	static void CIDT::interruptServiceRequest8D(){defaultHandler(0x8D);}
	static void CIDT::interruptServiceRequest8E(){defaultHandler(0x8E);}
	static void CIDT::interruptServiceRequest8F(){defaultHandler(0x8F);}
	static void CIDT::interruptServiceRequest90(){defaultHandler(0x90);}
	static void CIDT::interruptServiceRequest91(){defaultHandler(0x91);}
	static void CIDT::interruptServiceRequest92(){defaultHandler(0x92);}
	static void CIDT::interruptServiceRequest93(){defaultHandler(0x93);}
	static void CIDT::interruptServiceRequest94(){defaultHandler(0x94);}
	static void CIDT::interruptServiceRequest95(){defaultHandler(0x95);}
	static void CIDT::interruptServiceRequest96(){defaultHandler(0x96);}
	static void CIDT::interruptServiceRequest97(){defaultHandler(0x97);}
	static void CIDT::interruptServiceRequest98(){defaultHandler(0x98);}
	static void CIDT::interruptServiceRequest99(){defaultHandler(0x99);}
	static void CIDT::interruptServiceRequest9A(){defaultHandler(0x9A);}
	static void CIDT::interruptServiceRequest9B(){defaultHandler(0x9B);}
	static void CIDT::interruptServiceRequest9C(){defaultHandler(0x9C);}
	static void CIDT::interruptServiceRequest9D(){defaultHandler(0x9D);}
	static void CIDT::interruptServiceRequest9E(){defaultHandler(0x9E);}
	static void CIDT::interruptServiceRequest9F(){defaultHandler(0x9F);}
	static void CIDT::interruptServiceRequestA0(){defaultHandler(0xA0);}
	static void CIDT::interruptServiceRequestA1(){defaultHandler(0xA1);}
	static void CIDT::interruptServiceRequestA2(){defaultHandler(0xA2);}
	static void CIDT::interruptServiceRequestA3(){defaultHandler(0xA3);}
	static void CIDT::interruptServiceRequestA4(){defaultHandler(0xA4);}
	static void CIDT::interruptServiceRequestA5(){defaultHandler(0xA5);}
	static void CIDT::interruptServiceRequestA6(){defaultHandler(0xA6);}
	static void CIDT::interruptServiceRequestA7(){defaultHandler(0xA7);}
	static void CIDT::interruptServiceRequestA8(){defaultHandler(0xA8);}
	static void CIDT::interruptServiceRequestA9(){defaultHandler(0xA9);}
	static void CIDT::interruptServiceRequestAA(){defaultHandler(0xAA);}
	static void CIDT::interruptServiceRequestAB(){defaultHandler(0xAB);}
	static void CIDT::interruptServiceRequestAC(){defaultHandler(0xAC);}
	static void CIDT::interruptServiceRequestAD(){defaultHandler(0xAD);}
	static void CIDT::interruptServiceRequestAE(){defaultHandler(0xAE);}
	static void CIDT::interruptServiceRequestAF(){defaultHandler(0xAF);}
	static void CIDT::interruptServiceRequestB0(){defaultHandler(0xB0);}
	static void CIDT::interruptServiceRequestB1(){defaultHandler(0xB1);}
	static void CIDT::interruptServiceRequestB2(){defaultHandler(0xB2);}
	static void CIDT::interruptServiceRequestB3(){defaultHandler(0xB3);}
	static void CIDT::interruptServiceRequestB4(){defaultHandler(0xB4);}
	static void CIDT::interruptServiceRequestB5(){defaultHandler(0xB5);}
	static void CIDT::interruptServiceRequestB6(){defaultHandler(0xB6);}
	static void CIDT::interruptServiceRequestB7(){defaultHandler(0xB7);}
	static void CIDT::interruptServiceRequestB8(){defaultHandler(0xB8);}
	static void CIDT::interruptServiceRequestB9(){defaultHandler(0xB9);}
	static void CIDT::interruptServiceRequestBA(){defaultHandler(0xBA);}
	static void CIDT::interruptServiceRequestBB(){defaultHandler(0xBB);}
	static void CIDT::interruptServiceRequestBC(){defaultHandler(0xBC);}
	static void CIDT::interruptServiceRequestBD(){defaultHandler(0xBD);}
	static void CIDT::interruptServiceRequestBE(){defaultHandler(0xBE);}
	static void CIDT::interruptServiceRequestBF(){defaultHandler(0xBF);}
	static void CIDT::interruptServiceRequestC0(){defaultHandler(0xC0);}
	static void CIDT::interruptServiceRequestC1(){defaultHandler(0xC1);}
	static void CIDT::interruptServiceRequestC2(){defaultHandler(0xC2);}
	static void CIDT::interruptServiceRequestC3(){defaultHandler(0xC3);}
	static void CIDT::interruptServiceRequestC4(){defaultHandler(0xC4);}
	static void CIDT::interruptServiceRequestC5(){defaultHandler(0xC5);}
	static void CIDT::interruptServiceRequestC6(){defaultHandler(0xC6);}
	static void CIDT::interruptServiceRequestC7(){defaultHandler(0xC7);}
	static void CIDT::interruptServiceRequestC8(){defaultHandler(0xC8);}
	static void CIDT::interruptServiceRequestC9(){defaultHandler(0xC9);}
	static void CIDT::interruptServiceRequestCA(){defaultHandler(0xCA);}
	static void CIDT::interruptServiceRequestCB(){defaultHandler(0xCB);}
	static void CIDT::interruptServiceRequestCC(){defaultHandler(0xCC);}
	static void CIDT::interruptServiceRequestCD(){defaultHandler(0xCD);}
	static void CIDT::interruptServiceRequestCE(){defaultHandler(0xCE);}
	static void CIDT::interruptServiceRequestCF(){defaultHandler(0xCF);}
	static void CIDT::interruptServiceRequestD0(){defaultHandler(0xD0);}
	static void CIDT::interruptServiceRequestD1(){defaultHandler(0xD1);}
	static void CIDT::interruptServiceRequestD2(){defaultHandler(0xD2);}
	static void CIDT::interruptServiceRequestD3(){defaultHandler(0xD3);}
	static void CIDT::interruptServiceRequestD4(){defaultHandler(0xD4);}
	static void CIDT::interruptServiceRequestD5(){defaultHandler(0xD5);}
	static void CIDT::interruptServiceRequestD6(){defaultHandler(0xD6);}
	static void CIDT::interruptServiceRequestD7(){defaultHandler(0xD7);}
	static void CIDT::interruptServiceRequestD8(){defaultHandler(0xD8);}
	static void CIDT::interruptServiceRequestD9(){defaultHandler(0xD9);}
	static void CIDT::interruptServiceRequestDA(){defaultHandler(0xDA);}
	static void CIDT::interruptServiceRequestDB(){defaultHandler(0xDB);}
	static void CIDT::interruptServiceRequestDC(){defaultHandler(0xDC);}
	static void CIDT::interruptServiceRequestDD(){defaultHandler(0xDD);}
	static void CIDT::interruptServiceRequestDE(){defaultHandler(0xDE);}
	static void CIDT::interruptServiceRequestDF(){defaultHandler(0xDF);}
	static void CIDT::interruptServiceRequestE0(){defaultHandler(0xE0);}
	static void CIDT::interruptServiceRequestE1(){defaultHandler(0xE1);}
	static void CIDT::interruptServiceRequestE2(){defaultHandler(0xE2);}
	static void CIDT::interruptServiceRequestE3(){defaultHandler(0xE3);}
	static void CIDT::interruptServiceRequestE4(){defaultHandler(0xE4);}
	static void CIDT::interruptServiceRequestE5(){defaultHandler(0xE5);}
	static void CIDT::interruptServiceRequestE6(){defaultHandler(0xE6);}
	static void CIDT::interruptServiceRequestE7(){defaultHandler(0xE7);}
	static void CIDT::interruptServiceRequestE8(){defaultHandler(0xE8);}
	static void CIDT::interruptServiceRequestE9(){defaultHandler(0xE9);}
	static void CIDT::interruptServiceRequestEA(){defaultHandler(0xEA);}
	static void CIDT::interruptServiceRequestEB(){defaultHandler(0xEB);}
	static void CIDT::interruptServiceRequestEC(){defaultHandler(0xEC);}
	static void CIDT::interruptServiceRequestED(){defaultHandler(0xED);}
	static void CIDT::interruptServiceRequestEE(){defaultHandler(0xEE);}
	static void CIDT::interruptServiceRequestEF(){defaultHandler(0xEF);}
	static void CIDT::interruptServiceRequestF0(){defaultHandler(0xF0);}
	static void CIDT::interruptServiceRequestF1(){defaultHandler(0xF1);}
	static void CIDT::interruptServiceRequestF2(){defaultHandler(0xF2);}
	static void CIDT::interruptServiceRequestF3(){defaultHandler(0xF3);}
	static void CIDT::interruptServiceRequestF4(){defaultHandler(0xF4);}
	static void CIDT::interruptServiceRequestF5(){defaultHandler(0xF5);}
	static void CIDT::interruptServiceRequestF6(){defaultHandler(0xF6);}
	static void CIDT::interruptServiceRequestF7(){defaultHandler(0xF7);}
	static void CIDT::interruptServiceRequestF8(){defaultHandler(0xF8);}
	static void CIDT::interruptServiceRequestF9(){defaultHandler(0xF9);}
	static void CIDT::interruptServiceRequestFA(){defaultHandler(0xFA);}
	static void CIDT::interruptServiceRequestFB(){defaultHandler(0xFB);}
	static void CIDT::interruptServiceRequestFC(){defaultHandler(0xFC);}
	static void CIDT::interruptServiceRequestFD(){defaultHandler(0xFD);}
	static void CIDT::interruptServiceRequestFE(){defaultHandler(0xFE);}
	static void CIDT::interruptServiceRequestFF(){defaultHandler(0xFF);}
public:

			CIDT( void*, WORD );
			~CIDT();

	// Public member functions.
	ERRORCODE	create();
	void		registerHandler( const BYTE, void(*)() );
};

#endif // !defined(AFX_IDT_H__7FE0C192_A52A_11D1_B554_000000000000__INCLUDED_)
