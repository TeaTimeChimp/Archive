#ifndef GLOBAL_DESCRIPTOR_TABLE
#define GLOBAL_DESCRIPTOR_TABLE

#include "dt.h"

class CGDT: public CDescriptorTable
{
public:
	SELECTOR AddSegment( SEGTYPE, RING, ADDRESS, DWORD );
};

#endif