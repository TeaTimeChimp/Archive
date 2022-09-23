# Microsoft Developer Studio Project File - Name="ICE32" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=ICE32 - WIN32 RELEASE
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "ICE32.MAK".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "ICE32.MAK" CFG="ICE32 - WIN32 RELEASE"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "ICE32 - Win32 Release" (based on "Win32 (x86) Console Application")
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
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /c
# ADD CPP /nologo /G5 /Zp1 /MT /W3 /Od /Ob1 /X /I ".\\" /FAs /FR /FD
# SUBTRACT CPP /Gy /u /YX
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /x /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 .\libcpp\release\libcpp.lib .\libc\release\libc.lib /nologo /base:"0x00200000" /entry:"NtProcessStartup" /pdb:none /map /machine:I386 /nodefaultlib /subsystem:native /DRIVER
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=e:\workshop\bochs\update.bat
# End Special Build Tool
# Begin Target

# Name "ICE32 - Win32 Release"
# Begin Group "Source Files"

# PROP Default_Filter "cpp"
# Begin Source File

SOURCE=.\Application.cpp
# End Source File
# Begin Source File

SOURCE=.\BootController.cpp
# End Source File
# Begin Source File

SOURCE=.\BootDevice.cpp
# End Source File
# Begin Source File

SOURCE=.\BootManager.cpp
# End Source File
# Begin Source File

SOURCE=.\CPU.cpp
# End Source File
# Begin Source File

SOURCE=.\Descriptor.cpp
# End Source File
# Begin Source File

SOURCE=.\DescriptorTable.cpp
# End Source File
# Begin Source File

SOURCE=.\DMAChannel.cpp
# End Source File
# Begin Source File

SOURCE=.\DMAController.cpp
# End Source File
# Begin Source File

SOURCE=.\DMAManager.cpp
# End Source File
# Begin Source File

SOURCE=.\DriveUnit.cpp
# End Source File
# Begin Source File

SOURCE=.\FloppyDiskController.cpp
# End Source File
# Begin Source File

SOURCE=.\GDT.cpp
# End Source File
# Begin Source File

SOURCE=.\IDT.cpp
# End Source File
# Begin Source File

SOURCE=.\IOManager.cpp
# End Source File
# Begin Source File

SOURCE=.\IOPort.cpp
# End Source File
# Begin Source File

SOURCE=.\ldt.cpp
# End Source File
# Begin Source File

SOURCE=.\main.cpp
# End Source File
# Begin Source File

SOURCE=.\PageDirectoryEntry.cpp
# End Source File
# Begin Source File

SOURCE=.\PageTableEntry.cpp
# End Source File
# Begin Source File

SOURCE=.\PhysicalMemoryManager.cpp
# End Source File
# Begin Source File

SOURCE=.\PIC.cpp
# End Source File
# Begin Source File

SOURCE=.\PortableExecutable.cpp
# End Source File
# Begin Source File

SOURCE=.\Process.cpp
# End Source File
# Begin Source File

SOURCE=.\ProcessManager.cpp
# End Source File
# Begin Source File

SOURCE=.\Selector.cpp
# End Source File
# Begin Source File

SOURCE=.\System.cpp
# End Source File
# Begin Source File

SOURCE=.\TaskStateSegment.cpp
# End Source File
# Begin Source File

SOURCE=.\TCollection.cpp
# End Source File
# Begin Source File

SOURCE=.\TCursor.cpp
# End Source File
# Begin Source File

SOURCE=.\Thread.cpp
# End Source File
# Begin Source File

SOURCE=.\ThreadManager.cpp
# End Source File
# Begin Source File

SOURCE=.\Timer.cpp
# End Source File
# Begin Source File

SOURCE=.\TList.cpp
# End Source File
# Begin Source File

SOURCE=.\TQueue.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h"
# Begin Source File

SOURCE=.\Application.h
# End Source File
# Begin Source File

SOURCE=.\BootController.h
# End Source File
# Begin Source File

SOURCE=.\BootDevice.h
# End Source File
# Begin Source File

SOURCE=.\BootManager.h
# End Source File
# Begin Source File

SOURCE=.\CPU.h
# End Source File
# Begin Source File

SOURCE=.\CPUTypes.h
# End Source File
# Begin Source File

SOURCE=.\Descriptor.h
# End Source File
# Begin Source File

SOURCE=.\DescriptorTable.h
# End Source File
# Begin Source File

SOURCE=.\DMAChannel.h
# End Source File
# Begin Source File

SOURCE=.\DMAController.h
# End Source File
# Begin Source File

SOURCE=.\DMAManager.h
# End Source File
# Begin Source File

SOURCE=.\DriveUnit.h
# End Source File
# Begin Source File

SOURCE=.\errors.h
# End Source File
# Begin Source File

SOURCE=.\FloppyDiskController.h
# End Source File
# Begin Source File

SOURCE=.\GDT.h
# End Source File
# Begin Source File

SOURCE=.\IDT.h
# End Source File
# Begin Source File

SOURCE=.\IOManager.h
# End Source File
# Begin Source File

SOURCE=.\IOPort.h
# End Source File
# Begin Source File

SOURCE=.\LDT.H
# End Source File
# Begin Source File

SOURCE=.\main.h
# End Source File
# Begin Source File

SOURCE=.\MemoryManager.h
# End Source File
# Begin Source File

SOURCE=.\PageDirectoryEntry.h
# End Source File
# Begin Source File

SOURCE=.\PageTableEntry.h
# End Source File
# Begin Source File

SOURCE=.\PhysicalMemoryManager.h
# End Source File
# Begin Source File

SOURCE=.\PIC.h
# End Source File
# Begin Source File

SOURCE=.\PortableExecutable.h
# End Source File
# Begin Source File

SOURCE=.\Process.h
# End Source File
# Begin Source File

SOURCE=.\ProcessManager.h
# End Source File
# Begin Source File

SOURCE=.\Selector.h
# End Source File
# Begin Source File

SOURCE=.\System.h
# End Source File
# Begin Source File

SOURCE=.\TaskStateSegment.h
# End Source File
# Begin Source File

SOURCE=.\TCollection.h
# End Source File
# Begin Source File

SOURCE=.\TCursor.h
# End Source File
# Begin Source File

SOURCE=.\Thread.h
# End Source File
# Begin Source File

SOURCE=.\ThreadManager.h
# End Source File
# Begin Source File

SOURCE=.\Timer.h
# End Source File
# Begin Source File

SOURCE=.\TList.h
# End Source File
# Begin Source File

SOURCE=.\TQueue.h
# End Source File
# End Group
# Begin Group "Object Files"

# PROP Default_Filter "obj"
# End Group
# Begin Group "Logfiles"

# PROP Default_Filter "out"
# Begin Source File

SOURCE=..\..\Bochs\bochs.out
# End Source File
# End Group
# End Target
# End Project
