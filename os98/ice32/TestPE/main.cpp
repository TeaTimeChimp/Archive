#include <io.h>
#include <fcntl.h>
#include <sys\stat.h>
#include <malloc.h>
#include <string.h>

#include "..\PortableExecutable.h"

void main()
{
	int iHandle;
	int iFileSize;
	void* pBuffer;
	CPortableExecutable* pImage;

	iHandle = _open( "..\\release\\ice32.exe", O_BINARY );
	if( iHandle!=-1 )
	{
		iFileSize = _filelength( iHandle );
		pBuffer = malloc( iFileSize );
		if( _read( iHandle, pBuffer, iFileSize )==iFileSize )
		{
			_close( iHandle );

			pImage = new CPortableExecutable();
			pImage->initialise( (CMZHeader*)pBuffer );
		}
		else
			_close( iHandle );
	}

}
