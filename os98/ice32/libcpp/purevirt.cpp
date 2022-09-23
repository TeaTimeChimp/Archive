#include <ostream_withassign.h>


// Purpose	: Traps pure virtual function calls.
//
// Author	: Daniel J Hawkins
//
// Date		: 15/12/98
//
// Modification History
// Date		Initials	Reason
//
extern "C" int _purecall( void )
{
	// Display message and never return.
	cout << "\nPure virtual function called.";
	while(1);

	// Never returns.
	return 0;
}