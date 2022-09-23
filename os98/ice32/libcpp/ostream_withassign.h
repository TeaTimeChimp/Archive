// cout.h: interface for the cout class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_COUT_H__46A76523_9CD8_11D1_B540_000000000000__INCLUDED_)
#define AFX_COUT_H__46A76523_9CD8_11D1_B540_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

#include "..\libcpp\ostream.h"

class ostream_withassign: public ostream
{
	int m_iX;
	int m_iY;
	int m_iWidth;
	int m_iHeight;
	int m_iBytesPerScanline;

	// Private member functions.
	ostream&	Output( const char );
	ostream&	Output( const unsigned char );
	ostream&	Output( const unsigned short );	
	ostream&	Output( const unsigned long );	
	ostream&	Output( const char* );
	void		PrintChar( const char );

public:
	ostream_withassign();
	virtual ~ostream_withassign();

	// Public member functions.
	ostream&	flush();
};

extern ostream_withassign cout;

#endif // !defined(AFX_COUT_H__46A76523_9CD8_11D1_B540_000000000000__INCLUDED_)
