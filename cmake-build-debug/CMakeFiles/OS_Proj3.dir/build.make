# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = C:\Users\NAKas\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = C:\Users\NAKas\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\NAKas\CLionProjects\OS_Proj3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles\OS_Proj3.dir\depend.make
# Include the progress variables for this target.
include CMakeFiles\OS_Proj3.dir\progress.make

# Include the compile flags for this target's objects.
include CMakeFiles\OS_Proj3.dir\flags.make

CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.obj: CMakeFiles\OS_Proj3.dir\flags.make
CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.obj: ..\Noah_Kassa3.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/OS_Proj3.dir/Noah_Kassa3.cpp.obj"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoCMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.obj /FdCMakeFiles\OS_Proj3.dir\ /FS -c C:\Users\NAKas\CLionProjects\OS_Proj3\Noah_Kassa3.cpp
<<

CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/OS_Proj3.dir/Noah_Kassa3.cpp.i"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe > CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.i @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\NAKas\CLionProjects\OS_Proj3\Noah_Kassa3.cpp
<<

CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/OS_Proj3.dir/Noah_Kassa3.cpp.s"
	C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\cl.exe @<<
 /nologo /TP $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) /FoNUL /FAs /FaCMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.s /c C:\Users\NAKas\CLionProjects\OS_Proj3\Noah_Kassa3.cpp
<<

# Object files for target OS_Proj3
OS_Proj3_OBJECTS = \
"CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.obj"

# External object files for target OS_Proj3
OS_Proj3_EXTERNAL_OBJECTS =

OS_Proj3.exe: CMakeFiles\OS_Proj3.dir\Noah_Kassa3.cpp.obj
OS_Proj3.exe: CMakeFiles\OS_Proj3.dir\build.make
OS_Proj3.exe: CMakeFiles\OS_Proj3.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable OS_Proj3.exe"
	C:\Users\NAKas\AppData\Local\JetBrains\Toolbox\apps\CLion\ch-0\212.4746.93\bin\cmake\win\bin\cmake.exe -E vs_link_exe --intdir=CMakeFiles\OS_Proj3.dir --rc=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\rc.exe --mt=C:\PROGRA~2\WI3CF2~1\10\bin\100177~1.0\x86\mt.exe --manifests -- C:\PROGRA~2\MICROS~2\2019\COMMUN~1\VC\Tools\MSVC\1429~1.301\bin\Hostx86\x86\link.exe /nologo @CMakeFiles\OS_Proj3.dir\objects1.rsp @<<
 /out:OS_Proj3.exe /implib:OS_Proj3.lib /pdb:C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug\OS_Proj3.pdb /version:0.0 /machine:X86 /debug /INCREMENTAL /subsystem:console  kernel32.lib user32.lib gdi32.lib winspool.lib shell32.lib ole32.lib oleaut32.lib uuid.lib comdlg32.lib advapi32.lib 
<<

# Rule to build all files generated by this target.
CMakeFiles\OS_Proj3.dir\build: OS_Proj3.exe
.PHONY : CMakeFiles\OS_Proj3.dir\build

CMakeFiles\OS_Proj3.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\OS_Proj3.dir\cmake_clean.cmake
.PHONY : CMakeFiles\OS_Proj3.dir\clean

CMakeFiles\OS_Proj3.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" C:\Users\NAKas\CLionProjects\OS_Proj3 C:\Users\NAKas\CLionProjects\OS_Proj3 C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug C:\Users\NAKas\CLionProjects\OS_Proj3\cmake-build-debug\CMakeFiles\OS_Proj3.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\OS_Proj3.dir\depend

