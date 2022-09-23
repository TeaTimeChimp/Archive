#include ".\libcpp\ostream.h"

#include "Application.h"

// Purpose	: Entry point(all segments are flag 4Gb).
//
// Author	: Daniel J Hawkins.
//
// Date		: 16/01/98
//
// Modification History
// Date		Initials	Reason
// 
void main()
{
	cout << "ICE32 Version 3.00.015" << endl;

	// Run application object.
	Application.run();

	// Kernel cannot quit!
	Application.halt("main()");
}