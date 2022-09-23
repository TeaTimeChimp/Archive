# Microsoft Developer Studio Project File - Name="libc" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Static Library" 0x0104

CFG=LIBC - WIN32 RELEASE
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "libc.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "libc.mak" CFG="LIBC - WIN32 RELEASE"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "libc - Win32 Release" (based on "Win32 (x86) Static Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe
# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /YX /FD /c
# ADD CPP /nologo /G5 /Zp1 /W3 /ZI /Od /I ".\\" /FAs /FR /FD /c
# SUBTRACT CPP /X /YX
# ADD BASE RSC /l 0x809
# ADD RSC /l 0x809
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LIB32=link.exe -lib
# ADD BASE LIB32 /nologo
# ADD LIB32 /nologo
# Begin Target

# Name "libc - Win32 Release"
# Begin Group "Header Files"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\conio.h
# End Source File
# Begin Source File

SOURCE=.\crt0.h
# End Source File
# Begin Source File

SOURCE=.\Heap.h
# End Source File
# Begin Source File

SOURCE=.\malloc.h
# End Source File
# Begin Source File

SOURCE=.\memory.h
# End Source File
# Begin Source File

SOURCE=.\null.h
# End Source File
# Begin Source File

SOURCE=.\stddef.h
# End Source File
# Begin Source File

SOURCE=.\stdio.h
# End Source File
# Begin Source File

SOURCE=.\strings.h
# End Source File
# End Group
# Begin Group "Source Files"

# PROP Default_Filter "*.cpp"
# Begin Source File

SOURCE=.\crt0.cpp
# End Source File
# Begin Source File

SOURCE=.\Heap.cpp
# End Source File
# Begin Source File

SOURCE=.\malloc.cpp
# End Source File
# End Group
# Begin Group "Object Files"

# PROP Default_Filter "obj"
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\CRT\SRC\Intel\Mt_lib\STRNCMP.OBJ"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\CRT\SRC\Intel\Mt_lib\MEMCPY.OBJ"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\CRT\SRC\Intel\Mt_lib\MEMSET.OBJ"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\CRT\SRC\Intel\Mt_lib\STRLEN.OBJ"
# End Source File
# Begin Source File

SOURCE="F:\Program Files\Microsoft Visual Studio\VC98\CRT\SRC\Intel\Mt_lib\MEMCMP.OBJ"
# End Source File
# End Group
# End Target
# End Project
