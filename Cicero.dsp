# Microsoft Developer Studio Project File - Name="Cicero" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 5.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=Cicero - Win32 Release
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "Cicero.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "Cicero.mak" CFG="Cicero - Win32 Release"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Cicero - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Cicero - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "Cicero - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir ".\Release"
# PROP BASE Intermediate_Dir ".\Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir ".\Release"
# PROP Intermediate_Dir ".\Release"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MD /W3 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W4 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x415 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x415 /d "NDEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 winmm.lib /nologo /subsystem:windows /machine:I386

!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir ".\Debug"
# PROP BASE Intermediate_Dir ".\Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir ".\Debug"
# PROP Intermediate_Dir ".\Debug"
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x415 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x415 /d "_DEBUG" /d "_AFXDLL"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 winmm.lib /nologo /subsystem:windows /debug /machine:I386

!ENDIF 

# Begin Target

# Name "Cicero - Win32 Release"
# Name "Cicero - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;hpj;bat;for;f90"
# Begin Source File

SOURCE=.\Cicero.cpp
# End Source File
# Begin Source File

SOURCE=.\Cicero.rc
# End Source File
# Begin Source File

SOURCE=.\CiceroView.cpp
# End Source File
# Begin Source File

SOURCE=.\df.cpp
# End Source File
# Begin Source File

SOURCE=.\ds.cpp
# End Source File
# Begin Source File

SOURCE=.\MainFrm.cpp
# End Source File
# Begin Source File

SOURCE=.\mowa.cpp
# End Source File
# Begin Source File

SOURCE=.\ReadMe.txt
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl;fi;fd"
# Begin Source File

SOURCE=.\Cicero.h
# End Source File
# Begin Source File

SOURCE=.\CiceroView.h
# End Source File
# Begin Source File

SOURCE=.\df.h
# End Source File
# Begin Source File

SOURCE=.\ds.h
# End Source File
# Begin Source File

SOURCE=.\fonem.h
# End Source File
# Begin Source File

SOURCE=.\MainFrm.h
# End Source File
# Begin Source File

SOURCE=.\mowa.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\1.wav
# End Source File
# Begin Source File

SOURCE=.\res\10.wav
# End Source File
# Begin Source File

SOURCE=.\res\11.wav
# End Source File
# Begin Source File

SOURCE=.\res\12.wav
# End Source File
# Begin Source File

SOURCE=.\res\13.wav
# End Source File
# Begin Source File

SOURCE=.\res\14.wav
# End Source File
# Begin Source File

SOURCE=.\res\15.wav
# End Source File
# Begin Source File

SOURCE=.\res\16.wav
# End Source File
# Begin Source File

SOURCE=.\res\17.wav
# End Source File
# Begin Source File

SOURCE=.\res\18.wav
# End Source File
# Begin Source File

SOURCE=.\res\19.wav
# End Source File
# Begin Source File

SOURCE=.\res\2.wav
# End Source File
# Begin Source File

SOURCE=.\res\20.wav
# End Source File
# Begin Source File

SOURCE=.\res\21.wav
# End Source File
# Begin Source File

SOURCE=.\res\22.wav
# End Source File
# Begin Source File

SOURCE=.\res\23.wav
# End Source File
# Begin Source File

SOURCE=.\res\24.wav
# End Source File
# Begin Source File

SOURCE=.\res\25.wav
# End Source File
# Begin Source File

SOURCE=.\res\26.wav
# End Source File
# Begin Source File

SOURCE=.\res\27.wav
# End Source File
# Begin Source File

SOURCE=.\res\28.wav
# End Source File
# Begin Source File

SOURCE=.\res\29.wav
# End Source File
# Begin Source File

SOURCE=.\res\3.wav
# End Source File
# Begin Source File

SOURCE=.\res\30.wav
# End Source File
# Begin Source File

SOURCE=.\res\31.wav
# End Source File
# Begin Source File

SOURCE=.\res\32.wav
# End Source File
# Begin Source File

SOURCE=.\res\33.wav
# End Source File
# Begin Source File

SOURCE=.\res\34.wav
# End Source File
# Begin Source File

SOURCE=.\res\35.wav
# End Source File
# Begin Source File

SOURCE=.\res\36.wav
# End Source File
# Begin Source File

SOURCE=.\res\37.wav
# End Source File
# Begin Source File

SOURCE=.\res\38.wav
# End Source File
# Begin Source File

SOURCE=.\res\39.wav
# End Source File
# Begin Source File

SOURCE=.\res\4.wav
# End Source File
# Begin Source File

SOURCE=.\res\40.wav
# End Source File
# Begin Source File

SOURCE=.\res\41.wav
# End Source File
# Begin Source File

SOURCE=.\res\42.wav
# End Source File
# Begin Source File

SOURCE=.\res\43.wav
# End Source File
# Begin Source File

SOURCE=.\res\44.wav
# End Source File
# Begin Source File

SOURCE=.\res\45.wav
# End Source File
# Begin Source File

SOURCE=.\res\46.wav
# End Source File
# Begin Source File

SOURCE=.\res\47.wav
# End Source File
# Begin Source File

SOURCE=.\res\48.wav
# End Source File
# Begin Source File

SOURCE=.\res\49.wav
# End Source File
# Begin Source File

SOURCE=.\res\5.wav
# End Source File
# Begin Source File

SOURCE=.\res\6.wav
# End Source File
# Begin Source File

SOURCE=.\res\7.wav
# End Source File
# Begin Source File

SOURCE=.\res\8.wav
# End Source File
# Begin Source File

SOURCE=.\res\9.wav
# End Source File
# Begin Source File

SOURCE=.\autor.BMP
# End Source File
# Begin Source File

SOURCE=.\res\Cicero.rc2
# End Source File
# End Group
# End Target
# End Project
