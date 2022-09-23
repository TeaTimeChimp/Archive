// ostream.h: interface for the ostream class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_OSTREAM_H__D7B642E0_9C26_11D1_B53F_000000000000__INCLUDED_)
#define AFX_OSTREAM_H__D7B642E0_9C26_11D1_B53F_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

class ostream  
{
	// Private virtual output methods overriden by specialist ostreams.
	virtual ostream& Output( const char );
	virtual ostream& Output( const unsigned char );
	virtual ostream& Output( const unsigned short );	
	virtual ostream& Output( const unsigned long );	
	virtual ostream& Output( const char* );

public:
	ostream();
	virtual ~ostream();

	// Public member functions.
	virtual ostream& flush();

	// Public output operators.
	ostream& operator<< ( ostream&(__cdecl*)(ostream&) );
	ostream& operator<< ( const char );
	ostream& operator<< ( const long );
	ostream& operator<< ( const unsigned char );
	ostream& operator<< ( const unsigned short );
	ostream& operator<< ( const unsigned long );
	ostream& operator<< ( const char* );
};

#include "ostream_withassign.h"

inline ostream& __cdecl flush(ostream& _outs) { return _outs.flush(); }
inline ostream& __cdecl endl(ostream& _outs) { return _outs << '\n' << flush; }
inline ostream& __cdecl ends(ostream& _outs) { return _outs << char('\0'); }

#endif // !defined(AFX_OSTREAM_H__D7B642E0_9C26_11D1_B53F_000000000000__INCLUDED_)
