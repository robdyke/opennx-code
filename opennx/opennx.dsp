# Microsoft Developer Studio Project File - Name="opennx" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Console Application" 0x0103

CFG=opennx - Win32 Release Unicode DLL
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "opennx.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "opennx.mak" CFG="opennx - Win32 Release Unicode DLL"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "opennx - Win32 Release" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Debug" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Debug Unicode" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Release Unicode" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Debug DLL" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Release DLL" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Debug Unicode DLL" (based on "Win32 (x86) Console Application")
!MESSAGE "opennx - Win32 Release Unicode DLL" (based on "Win32 (x86) Console Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
RSC=rc.exe

!IF  "$(CFG)" == "opennx - Win32 Release"

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
# ADD CPP /nologo /MD /W4 /GX /O2 /I "$(WXWIN)\lib\vc_lib\msw" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "NDEBUG" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /c
# ADD BASE RSC /l 0x407 /d "NDEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /machine:I386
# ADD LINK32 wxzlib.lib wxpng.lib wxtiff.lib wxjpeg.lib wxexpat.lib wxregex.lib wxbase28.lib wxmsw28_core.lib wxbase28_xml.lib wxmsw28_xrc.lib wxbase28_net.lib wxmsw28_adv.lib wxmsw28_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /machine:I386 /libpath:"$(WXWIN)\lib\vc_lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /I "$(WXWIN)\lib\vc_lib\mswd" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "__WXDEBUG__" /D WXDEBUG=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /GZ /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlibd.lib wxpngd.lib wxtiffd.lib wxjpegd.lib wxexpatd.lib wxregexd.lib wxbase28d.lib wxmsw28d_core.lib wxbase28d_xml.lib wxmsw28d_xrc.lib wxbase28d_net.lib wxmsw28d_adv.lib wxmsw28d_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Debug_Unicode"
# PROP BASE Intermediate_Dir "opennx___Win32_Debug_Unicode"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug_Unicode"
# PROP Intermediate_Dir "Debug_Unicode"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /I "$(WXWIN)\lib\vc_lib\mswud" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "_UNICODE" /D "__WXDEBUG__" /D WXDEBUG=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /GZ /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlibd.lib wxpngd.lib wxtiffd.lib wxjpegd.lib wxexpatd.lib wxregexud.lib wxbase28ud.lib wxmsw28ud_core.lib wxbase28ud_xml.lib wxmsw28ud_xrc.lib wxbase28ud_net.lib wxmsw28ud_adv.lib wxmsw28ud_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Release Unicode"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Release_Unicode"
# PROP BASE Intermediate_Dir "opennx___Win32_Release_Unicode"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Release_Unicode"
# PROP Intermediate_Dir "Release_Unicode"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MD /W4 /GX /O2 /I "$(WXWIN)\lib\vc_lib\mswu" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "NDEBUG" /D "_UNICODE" /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlib.lib wxpng.lib wxtiff.lib wxjpeg.lib wxexpat.lib wxregexu.lib wxbase28u.lib wxmsw28u_core.lib wxbase28u_xml.lib wxmsw28u_xrc.lib wxbase28u_net.lib wxmsw28u_adv.lib wxmsw28u_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /incremental:no /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_lib"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Debug_DLL"
# PROP BASE Intermediate_Dir "opennx___Win32_Debug_DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugDLL"
# PROP Intermediate_Dir "DebugDLL"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /I "$(WXWIN)\lib\vc_dll\mswd" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "__WXDEBUG__" /D WXDEBUG=1 /D WXUSINGDLL=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /FD /GZ /c
# SUBTRACT CPP /YX
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlibd.lib wxpngd.lib wxtiffd.lib wxjpegd.lib wxexpatd.lib wxregexd.lib wxbase28d.lib wxmsw28d_core.lib wxbase28d_xml.lib wxmsw28d_xrc.lib wxbase28d_net.lib wxmsw28d_adv.lib wxmsw28d_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Release DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Release_DLL"
# PROP BASE Intermediate_Dir "opennx___Win32_Release_DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ReleaseDLL"
# PROP Intermediate_Dir "ReleaseDLL"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MD /W4 /GX /O2 /I "$(WXWIN)\lib\vc_dll\msw" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "NDEBUG" /D WXUSINGDLL=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlib.lib wxpng.lib wxtiff.lib wxjpeg.lib wxexpat.lib wxregex.lib wxbase28.lib wxmsw28_core.lib wxbase28_xml.lib wxmsw28_xrc.lib wxbase28_net.lib wxmsw28_adv.lib wxmsw28_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /incremental:no /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug Unicode DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Debug_Unicode_DLL"
# PROP BASE Intermediate_Dir "opennx___Win32_Debug_Unicode_DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "DebugDLL_Unicode"
# PROP Intermediate_Dir "DebugDLL_Unicode"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W4 /Gm /GX /Zi /Od /I "$(WXWIN)\lib\vc_dll\mswud" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "_UNICODE" /D "__WXDEBUG__" /D WXDEBUG=1 /D WXUSINGDLL=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /GZ /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlibd.lib wxpngd.lib wxtiffd.lib wxjpegd.lib wxexpatd.lib wxregexud.lib wxbase28ud.lib wxmsw28ud_core.lib wxbase28ud_xml.lib wxmsw28ud_xrc.lib wxbase28ud_net.lib wxmsw28ud_adv.lib wxmsw28ud_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_dll"
# SUBTRACT LINK32 /pdb:none

!ELSEIF  "$(CFG)" == "opennx - Win32 Release Unicode DLL"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "opennx___Win32_Release_Unicode_DLL"
# PROP BASE Intermediate_Dir "opennx___Win32_Release_Unicode_DLL"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "ReleaseDLL_Unicode"
# PROP Intermediate_Dir "ReleaseDLL_Unicode"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_CONSOLE" /D "_MBCS" /YX /FD /GZ /c
# ADD CPP /nologo /MD /W4 /GX /O2 /I "$(WXWIN)\lib\vc_dll\mswu" /I "$(WXWIN)\include" /I "$(WXWIN)\contrib\include" /D "_DEBUG" /D "NDEBUG" /D "_UNICODE" /D WXUSINGDLL=1 /D "WIN32" /D "_CONSOLE" /D "_MBCS" /D "_MT" /D "_WINDOWS" /D "__WINDOWS__" /D "__WIN32__" /D WINVER=0x0400 /D "__WXMSW__" /D wxUSE_GUI=1 /D CUPS_DEFAULT_PATH=\"\" /D NX_PROTOCOL_VERSION=\"2.1.0\" /YX /FD /c
# ADD BASE RSC /l 0x407 /d "_DEBUG"
# ADD RSC /l 0x409 /i "$(WXWIN)\include" /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:console /debug /machine:I386 /pdbtype:sept
# ADD LINK32 wxzlib.lib wxpng.lib wxtiff.lib wxjpeg.lib wxexpat.lib wxregexu.lib wxbase28u.lib wxmsw28u_core.lib wxbase28u_xml.lib wxmsw28u_xrc.lib wxbase28u_net.lib wxmsw28u_adv.lib wxmsw28u_html.lib kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib comctl32.lib rpcrt4.lib wsock32.lib winmm.lib version.lib /nologo /subsystem:windows /incremental:no /debug /machine:I386 /pdbtype:sept /libpath:"$(WXWIN)\lib\vc_dll"
# SUBTRACT LINK32 /pdb:none

!ENDIF 

# Begin Target

# Name "opennx - Win32 Release"
# Name "opennx - Win32 Debug"
# Name "opennx - Win32 Debug Unicode"
# Name "opennx - Win32 Release Unicode"
# Name "opennx - Win32 Debug DLL"
# Name "opennx - Win32 Release DLL"
# Name "opennx - Win32 Debug Unicode DLL"
# Name "opennx - Win32 Release Unicode DLL"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\AboutDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\AsyncProcess.cpp
# End Source File
# Begin Source File

SOURCE=.\ConnectDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\ExtHtmlWindow.cpp
# End Source File
# Begin Source File

SOURCE=.\ForeignFrame.cpp
# End Source File
# Begin Source File

SOURCE=.\Icon.cpp
# End Source File
# Begin Source File

SOURCE=.\KeyDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\LogDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\LoginDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\md5.c
# End Source File
# Begin Source File

SOURCE=.\MyIPC.cpp
# End Source File
# Begin Source File

SOURCE=.\MySession.cpp
# End Source File
# Begin Source File

SOURCE=.\MyValidator.cpp
# End Source File
# Begin Source File

SOURCE=.\MyWizard.cpp
# End Source File
# Begin Source File

SOURCE=.\MyXmlConfig.cpp
# End Source File
# Begin Source File

SOURCE=.\opennx.pjd

!IF  "$(CFG)" == "opennx - Win32 Release"

# Begin Custom Build
IntDir=.\Release
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug"

# Begin Custom Build
IntDir=.\Debug
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug Unicode"

# Begin Custom Build
IntDir=.\Debug_Unicode
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Release Unicode"

# Begin Custom Build
IntDir=.\Release_Unicode
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug DLL"

# Begin Custom Build
IntDir=.\DebugDLL
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Release DLL"

# Begin Custom Build
IntDir=.\ReleaseDLL
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Debug Unicode DLL"

# Begin Custom Build
IntDir=.\DebugDLL_Unicode
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ELSEIF  "$(CFG)" == "opennx - Win32 Release Unicode DLL"

# Begin Custom Build
IntDir=.\ReleaseDLL_Unicode
InputPath=.\opennx.pjd

"memres.h" : $(SOURCE) "$(INTDIR)" "$(OUTDIR)"
	zip -9r $(IntDir)\tmpres.zip res -i *.xrc *.png *.rtf *.html -x *.prv.* 
	bin2hdr $(IntDir)\tmpres.zip memres.h mem_res 
	
# End Custom Build

!ENDIF 

# End Source File
# Begin Source File

SOURCE=.\opennx.rc
# End Source File
# Begin Source File

SOURCE=.\opennxApp.cpp
# ADD CPP /YX
# End Source File
# Begin Source File

SOURCE=.\osdep.c
# End Source File
# Begin Source File

SOURCE=.\PanicDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\pwcrypt.cpp
# End Source File
# Begin Source File

SOURCE=.\QuitDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\RdpImageSettingsDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\RdpPropertyDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\ResumeDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\SessionAdmin.cpp
# End Source File
# Begin Source File

SOURCE=.\SessionList.cpp
# End Source File
# Begin Source File

SOURCE=.\SessionProperties.cpp
# End Source File
# Begin Source File

SOURCE=.\SmbShareProperties.cpp
# End Source File
# Begin Source File

SOURCE=.\TextViewer.cpp
# End Source File
# Begin Source File

SOURCE=.\UnixImageSettingsDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\VncImageSettingsDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\VncPropertyDialog.cpp
# End Source File
# Begin Source File

SOURCE=.\WinShare.cpp
# End Source File
# Begin Source File

SOURCE=.\wxprec.cpp
# End Source File
# Begin Source File

SOURCE=.\X11PropertyDialog.cpp
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\AboutDialog.h
# End Source File
# Begin Source File

SOURCE=.\AboutDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\AsyncProcess.h
# End Source File
# Begin Source File

SOURCE=.\ConnectDialog.h
# End Source File
# Begin Source File

SOURCE=.\ConnectDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\debugleak.h
# End Source File
# Begin Source File

SOURCE=.\ExtHtmlWindow.h
# End Source File
# Begin Source File

SOURCE=.\ForeignFrame.h
# End Source File
# Begin Source File

SOURCE=.\ForeignFrame_symbols.h
# End Source File
# Begin Source File

SOURCE=.\Icon.h
# End Source File
# Begin Source File

SOURCE=.\KeyDialog.h
# End Source File
# Begin Source File

SOURCE=.\KeyDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\LogDialog.h
# End Source File
# Begin Source File

SOURCE=.\LogDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\LoginDialog.h
# End Source File
# Begin Source File

SOURCE=.\LoginDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\md5.h
# End Source File
# Begin Source File

SOURCE=.\MyIPC.h
# End Source File
# Begin Source File

SOURCE=.\MySession.h
# End Source File
# Begin Source File

SOURCE=.\MyValidator.h
# End Source File
# Begin Source File

SOURCE=.\MyWizard.h
# End Source File
# Begin Source File

SOURCE=.\MyWizard_symbols.h
# End Source File
# Begin Source File

SOURCE=.\MyXmlConfig.h
# End Source File
# Begin Source File

SOURCE=.\opennxApp.h
# End Source File
# Begin Source File

SOURCE=.\osdep.h
# End Source File
# Begin Source File

SOURCE=.\PanicDialog.h
# End Source File
# Begin Source File

SOURCE=.\PanicDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\pwcrypt.h
# End Source File
# Begin Source File

SOURCE=.\QuitDialog.h
# End Source File
# Begin Source File

SOURCE=.\QuitDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\RdpImageSettingsDialog.h
# End Source File
# Begin Source File

SOURCE=.\RdpImageSettingsDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\RdpPropertyDialog.h
# End Source File
# Begin Source File

SOURCE=.\RdpPropertyDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\ResumeDialog.h
# End Source File
# Begin Source File

SOURCE=.\ResumeDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\SessionAdmin.h
# End Source File
# Begin Source File

SOURCE=.\SessionAdmin_symbols.h
# End Source File
# Begin Source File

SOURCE=.\SessionList.h
# End Source File
# Begin Source File

SOURCE=.\SessionProperties.h
# End Source File
# Begin Source File

SOURCE=.\SessionProperties_symbols.h
# End Source File
# Begin Source File

SOURCE=.\SmbShareProperties.h
# End Source File
# Begin Source File

SOURCE=.\SmbShareProperties_symbols.h
# End Source File
# Begin Source File

SOURCE=.\TextViewer.h
# End Source File
# Begin Source File

SOURCE=.\TextViewer_symbols.h
# End Source File
# Begin Source File

SOURCE=.\UnixImageSettingsDialog.h
# End Source File
# Begin Source File

SOURCE=.\UnixImageSettingsDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\VncImageSettingsDialog.h
# End Source File
# Begin Source File

SOURCE=.\VncImageSettingsDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\VncPropertyDialog.h
# End Source File
# Begin Source File

SOURCE=.\VncPropertyDialog_symbols.h
# End Source File
# Begin Source File

SOURCE=.\WinShare.h
# End Source File
# Begin Source File

SOURCE=.\X11PropertyDialog.h
# End Source File
# Begin Source File

SOURCE=.\X11PropertyDialog_symbols.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# Begin Source File

SOURCE=.\res\admin.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\blank.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\bullseye.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\cdrom.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\colours.bmp
# End Source File
# Begin Source File

SOURCE=.\wx\msw\computer.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\cross.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\csquery.bmp
# End Source File
# Begin Source File

SOURCE=.\wx\msw\disable.bmp
# End Source File
# Begin Source File

SOURCE=.\wx\msw\drive.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\file1.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\floppy.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\folder1.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\folder2.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\hand.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\magnif1.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\noentry.cur
# End Source File
# Begin Source File

SOURCE=".\res\nx-desktop.ico"
# End Source File
# Begin Source File

SOURCE=.\res\nx.ico
# End Source File
# Begin Source File

SOURCE=".\res\opennx-admin.ico"
# End Source File
# Begin Source File

SOURCE=".\res\opennx-wizard.ico"
# End Source File
# Begin Source File

SOURCE=.\res\opennx.xrc
# End Source File
# Begin Source File

SOURCE=.\wx\msw\pbrush.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\pencil.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\pntleft.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\pntright.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\query.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\removble.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\rightarr.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\roller.cur
# End Source File
# Begin Source File

SOURCE=.\wx\msw\std.ico
# End Source File
# Begin Source File

SOURCE=.\wx\msw\watch1.cur
# End Source File
# Begin Source File

SOURCE=.\res\wizard.ico
# End Source File
# End Group
# End Target
# End Project