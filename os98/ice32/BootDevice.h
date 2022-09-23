// BootDevice.h: interface for the CBootDevice class.
//
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_BOOTDEVICE_H__1CD3FA35_AF1F_11D2_B631_000000000000__INCLUDED_)
#define AFX_BOOTDEVICE_H__1CD3FA35_AF1F_11D2_B631_000000000000__INCLUDED_

#if _MSC_VER >= 1000
#pragma once
#endif // _MSC_VER >= 1000

class CBootDevice  
{
public:
	CBootDevice();
	virtual ~CBootDevice();

	// Public member functions.
	virtual char*			getName() = 0;
	//virtual void*			getImageBase() = 0;
	virtual unsigned long	getImageSize() = 0;
	virtual unsigned long	readBootImage( void* ) = 0;
};

#endif // !defined(AFX_BOOTDEVICE_H__1CD3FA35_AF1F_11D2_B631_000000000000__INCLUDED_)
