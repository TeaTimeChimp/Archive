#ifndef APPLICATION
#define APPLICATION

#include "cpu.h"

class CApplication
{

	// Abstract CPU object.
	CCPU m_CPU;

	// A20 line object.
//	CA20 m_A20;

public:
	CApplication();

	ADDRESS CodeBase();
	ADDRESS CodeLimit();
	CCPU& CPU();
	ADDRESS DataBase();
	ADDRESS DataLimit();
	OFFSET16 entryPoint();
	int Run();
};


#endif