# Microsoft Developer Studio Generated NMAKE File, Format Version 4.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

!IF "$(CFG)" == ""
CFG=Cicero - Win32 Debug
!MESSAGE No configuration specified.  Defaulting to Cicero - Win32 Debug.
!ENDIF 

!IF "$(CFG)" != "Cicero - Win32 Release" && "$(CFG)" != "Cicero - Win32 Debug"
!MESSAGE Invalid configuration "$(CFG)" specified.
!MESSAGE You can specify a configuration when running NMAKE on this makefile
!MESSAGE by defining the macro CFG on the command line.  For example:
!MESSAGE 
!MESSAGE NMAKE /f "Cicero.mak" CFG="Cicero - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "Cicero - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "Cicero - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE 
!ERROR An invalid configuration is specified.
!ENDIF 

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE 
NULL=nul
!ENDIF 
################################################################################
# Begin Project
# PROP Target_Last_Scanned "Cicero - Win32 Debug"
RSC=rc.exe
CPP=cl.exe
MTL=mktyplib.exe

!IF  "$(CFG)" == "Cicero - Win32 Release"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Target_Dir ""
OUTDIR=.\Release
INTDIR=.\Release

ALL : "$(OUTDIR)\Cicero.exe"

CLEAN : 
	-@erase ".\Release\Cicero.exe"
	-@erase ".\Release\CiceroView.obj"
	-@erase ".\Release\Cicero.pch"
	-@erase ".\Release\df.obj"
	-@erase ".\Release\ds.obj"
	-@erase ".\Release\MainFrm.obj"
	-@erase ".\Release\StdAfx.obj"
	-@erase ".\Release\mowa.obj"
	-@erase ".\Release\Cicero.obj"
	-@erase ".\Release\Cicero.res"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MD /W3 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MD /W4 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MD /W4 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL"\
 /D "_MBCS" /Fp"$(INTDIR)/Cicero.pch" /Yu"stdafx.h" /Fo"$(INTDIR)/" /c 
CPP_OBJS=.\Release/
CPP_SBRS=
# ADD BASE MTL /nologo /D "NDEBUG" /win32
# ADD MTL /nologo /D "NDEBUG" /win32
MTL_PROJ=/nologo /D "NDEBUG" /win32 
# ADD BASE RSC /l 0x415 /d "NDEBUG" /d "_AFXDLL"
# ADD RSC /l 0x415 /d "NDEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x415 /fo"$(INTDIR)/Cicero.res" /d "NDEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Cicero.bsc" 
BSC32_SBRS=
LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /machine:I386
# ADD LINK32 winmm.lib /nologo /subsystem:windows /machine:I386
LINK32_FLAGS=winmm.lib /nologo /subsystem:windows /incremental:no\
 /pdb:"$(OUTDIR)/Cicero.pdb" /machine:I386 /out:"$(OUTDIR)/Cicero.exe" 
LINK32_OBJS= \
	"$(INTDIR)/CiceroView.obj" \
	"$(INTDIR)/df.obj" \
	"$(INTDIR)/ds.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/mowa.obj" \
	"$(INTDIR)/Cicero.obj" \
	"$(INTDIR)/Cicero.res"

"$(OUTDIR)\Cicero.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

# PROP BASE Use_MFC 6
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 6
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Target_Dir ""
OUTDIR=.\Debug
INTDIR=.\Debug

ALL : "$(OUTDIR)\Cicero.exe" "$(OUTDIR)\Cicero.bsc"

CLEAN : 
	-@erase ".\Debug\vc40.pdb"
	-@erase ".\Debug\Cicero.pch"
	-@erase ".\Debug\vc40.idb"
	-@erase ".\Debug\Cicero.bsc"
	-@erase ".\Debug\StdAfx.sbr"
	-@erase ".\Debug\CiceroView.sbr"
	-@erase ".\Debug\MainFrm.sbr"
	-@erase ".\Debug\mowa.sbr"
	-@erase ".\Debug\df.sbr"
	-@erase ".\Debug\ds.sbr"
	-@erase ".\Debug\Cicero.sbr"
	-@erase ".\Debug\Cicero.exe"
	-@erase ".\Debug\StdAfx.obj"
	-@erase ".\Debug\CiceroView.obj"
	-@erase ".\Debug\MainFrm.obj"
	-@erase ".\Debug\mowa.obj"
	-@erase ".\Debug\df.obj"
	-@erase ".\Debug\ds.obj"
	-@erase ".\Debug\Cicero.obj"
	-@erase ".\Debug\Cicero.res"
	-@erase ".\Debug\Cicero.ilk"
	-@erase ".\Debug\Cicero.pdb"

"$(OUTDIR)" :
    if not exist "$(OUTDIR)/$(NULL)" mkdir "$(OUTDIR)"

# ADD BASE CPP /nologo /MDd /W3 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /Yu"stdafx.h" /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_AFXDLL" /D "_MBCS" /FR /Yu"stdafx.h" /c
CPP_PROJ=/nologo /MDd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Cicero.pch" /Yu"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c 
CPP_OBJS=.\Debug/
CPP_SBRS=.\Debug/
# ADD BASE MTL /nologo /D "_DEBUG" /win32
# ADD MTL /nologo /D "_DEBUG" /win32
MTL_PROJ=/nologo /D "_DEBUG" /win32 
# ADD BASE RSC /l 0x415 /d "_DEBUG" /d "_AFXDLL"
# ADD RSC /l 0x415 /d "_DEBUG" /d "_AFXDLL"
RSC_PROJ=/l 0x415 /fo"$(INTDIR)/Cicero.res" /d "_DEBUG" /d "_AFXDLL" 
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
BSC32_FLAGS=/nologo /o"$(OUTDIR)/Cicero.bsc" 
BSC32_SBRS= \
	"$(INTDIR)/StdAfx.sbr" \
	"$(INTDIR)/CiceroView.sbr" \
	"$(INTDIR)/MainFrm.sbr" \
	"$(INTDIR)/mowa.sbr" \
	"$(INTDIR)/df.sbr" \
	"$(INTDIR)/ds.sbr" \
	"$(INTDIR)/Cicero.sbr"

"$(OUTDIR)\Cicero.bsc" : "$(OUTDIR)" $(BSC32_SBRS)
    $(BSC32) @<<
  $(BSC32_FLAGS) $(BSC32_SBRS)
<<

LINK32=link.exe
# ADD BASE LINK32 /nologo /subsystem:windows /debug /machine:I386
# ADD LINK32 winmm.lib /nologo /subsystem:windows /debug /machine:I386
LINK32_FLAGS=winmm.lib /nologo /subsystem:windows /incremental:yes\
 /pdb:"$(OUTDIR)/Cicero.pdb" /debug /machine:I386 /out:"$(OUTDIR)/Cicero.exe" 
LINK32_OBJS= \
	"$(INTDIR)/StdAfx.obj" \
	"$(INTDIR)/CiceroView.obj" \
	"$(INTDIR)/MainFrm.obj" \
	"$(INTDIR)/mowa.obj" \
	"$(INTDIR)/df.obj" \
	"$(INTDIR)/ds.obj" \
	"$(INTDIR)/Cicero.obj" \
	"$(INTDIR)/Cicero.res"

"$(OUTDIR)\Cicero.exe" : "$(OUTDIR)" $(DEF_FILE) $(LINK32_OBJS)
    $(LINK32) @<<
  $(LINK32_FLAGS) $(LINK32_OBJS)
<<

!ENDIF 

.c{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_OBJS)}.obj:
   $(CPP) $(CPP_PROJ) $<  

.c{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cpp{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

.cxx{$(CPP_SBRS)}.sbr:
   $(CPP) $(CPP_PROJ) $<  

################################################################################
# Begin Target

# Name "Cicero - Win32 Release"
# Name "Cicero - Win32 Debug"

!IF  "$(CFG)" == "Cicero - Win32 Release"

!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

!ENDIF 

################################################################################
# Begin Source File

SOURCE=.\ReadMe.txt

!IF  "$(CFG)" == "Cicero - Win32 Release"

!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Cicero.cpp

!IF  "$(CFG)" == "Cicero - Win32 Release"

DEP_CPP_CICER=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\mowa.h"\
	".\ds.h"\
	".\MainFrm.h"\
	".\df.h"\
	".\fonem.h"\
	
NODEP_CPP_CICER=\
	".\..\..\..\?"\
	

"$(INTDIR)\Cicero.obj" : $(SOURCE) $(DEP_CPP_CICER) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

DEP_CPP_CICER=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\mowa.h"\
	".\ds.h"\
	".\MainFrm.h"\
	".\df.h"\
	".\fonem.h"\
	

"$(INTDIR)\Cicero.obj" : $(SOURCE) $(DEP_CPP_CICER) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\Cicero.sbr" : $(SOURCE) $(DEP_CPP_CICER) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\StdAfx.cpp
DEP_CPP_STDAF=\
	".\StdAfx.h"\
	

!IF  "$(CFG)" == "Cicero - Win32 Release"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MD /W4 /GX /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_AFXDLL"\
 /D "_MBCS" /Fp"$(INTDIR)/Cicero.pch" /Yc"stdafx.h" /Fo"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Cicero.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

# ADD CPP /Yc"stdafx.h"

BuildCmds= \
	$(CPP) /nologo /MDd /W4 /Gm /GX /Zi /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS"\
 /D "_AFXDLL" /D "_MBCS" /FR"$(INTDIR)/" /Fp"$(INTDIR)/Cicero.pch" /Yc"stdafx.h"\
 /Fo"$(INTDIR)/" /Fd"$(INTDIR)/" /c $(SOURCE) \
	

"$(INTDIR)\StdAfx.obj" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\StdAfx.sbr" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

"$(INTDIR)\Cicero.pch" : $(SOURCE) $(DEP_CPP_STDAF) "$(INTDIR)"
   $(BuildCmds)

!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\MainFrm.cpp
DEP_CPP_MAINF=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\ds.h"\
	".\df.h"\
	".\mowa.h"\
	".\MainFrm.h"\
	".\CiceroView.h"\
	".\fonem.h"\
	

!IF  "$(CFG)" == "Cicero - Win32 Release"


"$(INTDIR)\MainFrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"


"$(INTDIR)\MainFrm.obj" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\MainFrm.sbr" : $(SOURCE) $(DEP_CPP_MAINF) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\CiceroView.cpp
DEP_CPP_CICERO=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\CiceroView.h"\
	

!IF  "$(CFG)" == "Cicero - Win32 Release"


"$(INTDIR)\CiceroView.obj" : $(SOURCE) $(DEP_CPP_CICERO) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"


"$(INTDIR)\CiceroView.obj" : $(SOURCE) $(DEP_CPP_CICERO) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\CiceroView.sbr" : $(SOURCE) $(DEP_CPP_CICERO) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\Cicero.rc
DEP_RSC_CICERO_=\
	".\res\4.wav"\
	".\res\1.wav"\
	".\res\3.wav"\
	".\res\2.wav"\
	".\res\19.wav"\
	".\res\18.wav"\
	".\res\17.wav"\
	".\res\16.wav"\
	".\res\15.wav"\
	".\res\14.wav"\
	".\res\13.wav"\
	".\res\12.wav"\
	".\res\11.wav"\
	".\res\10.wav"\
	".\res\9.wav"\
	".\res\8.wav"\
	".\res\7.wav"\
	".\res\6.wav"\
	".\res\5.wav"\
	".\res\27.wav"\
	".\res\26.wav"\
	".\res\25.wav"\
	".\res\24.wav"\
	".\res\23.wav"\
	".\res\22.wav"\
	".\res\21.wav"\
	".\res\20.wav"\
	".\res\29.wav"\
	".\res\39.wav"\
	".\res\38.wav"\
	".\res\37.wav"\
	".\res\36.wav"\
	".\res\35.wav"\
	".\res\34.wav"\
	".\res\33.wav"\
	".\res\32.wav"\
	".\res\31.wav"\
	".\res\30.wav"\
	".\res\49.wav"\
	".\res\48.wav"\
	".\res\47.wav"\
	".\res\46.wav"\
	".\res\44.wav"\
	".\res\43.wav"\
	".\res\42.wav"\
	".\res\41.wav"\
	".\res\40.wav"\
	".\res\28.wav"\
	".\res\45.wav"\
	".\autor.BMP"\
	".\res\Cicero.rc2"\
	

"$(INTDIR)\Cicero.res" : $(SOURCE) $(DEP_RSC_CICERO_) "$(INTDIR)"
   $(RSC) $(RSC_PROJ) $(SOURCE)


# End Source File
################################################################################
# Begin Source File

SOURCE=.\mowa.cpp

!IF  "$(CFG)" == "Cicero - Win32 Release"

DEP_CPP_MOWA_=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\CiceroView.h"\
	".\mowa.h"\
	".\df.h"\
	".\fonem.h"\
	
NODEP_CPP_MOWA_=\
	".\pd"\
	

"$(INTDIR)\mowa.obj" : $(SOURCE) $(DEP_CPP_MOWA_) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"

DEP_CPP_MOWA_=\
	".\StdAfx.h"\
	".\Cicero.h"\
	".\CiceroView.h"\
	".\mowa.h"\
	".\df.h"\
	".\fonem.h"\
	

"$(INTDIR)\mowa.obj" : $(SOURCE) $(DEP_CPP_MOWA_) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\mowa.sbr" : $(SOURCE) $(DEP_CPP_MOWA_) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\ds.cpp
DEP_CPP_DS_CP=\
	".\StdAfx.h"\
	".\ds.h"\
	

!IF  "$(CFG)" == "Cicero - Win32 Release"


"$(INTDIR)\ds.obj" : $(SOURCE) $(DEP_CPP_DS_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"


"$(INTDIR)\ds.obj" : $(SOURCE) $(DEP_CPP_DS_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\ds.sbr" : $(SOURCE) $(DEP_CPP_DS_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
################################################################################
# Begin Source File

SOURCE=.\df.cpp
DEP_CPP_DF_CP=\
	".\StdAfx.h"\
	".\df.h"\
	".\fonem.h"\
	

!IF  "$(CFG)" == "Cicero - Win32 Release"


"$(INTDIR)\df.obj" : $(SOURCE) $(DEP_CPP_DF_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ELSEIF  "$(CFG)" == "Cicero - Win32 Debug"


"$(INTDIR)\df.obj" : $(SOURCE) $(DEP_CPP_DF_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"

"$(INTDIR)\df.sbr" : $(SOURCE) $(DEP_CPP_DF_CP) "$(INTDIR)"\
 "$(INTDIR)\Cicero.pch"


!ENDIF 

# End Source File
# End Target
# End Project
################################################################################
