# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files (x86)\JetBrains\CLion 2019.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files (x86)\JetBrains\CLion 2019.3.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = Z:\csci406\algoproject1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = Z:\csci406\algoproject1\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/algoproject1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/algoproject1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/algoproject1.dir/flags.make

CMakeFiles/algoproject1.dir/main.cpp.obj: CMakeFiles/algoproject1.dir/flags.make
CMakeFiles/algoproject1.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=Z:\csci406\algoproject1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/algoproject1.dir/main.cpp.obj"
	C:\mingw-w64\mingw64\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\algoproject1.dir\main.cpp.obj -c Z:\csci406\algoproject1\main.cpp

CMakeFiles/algoproject1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/algoproject1.dir/main.cpp.i"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E Z:\csci406\algoproject1\main.cpp > CMakeFiles\algoproject1.dir\main.cpp.i

CMakeFiles/algoproject1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/algoproject1.dir/main.cpp.s"
	C:\mingw-w64\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S Z:\csci406\algoproject1\main.cpp -o CMakeFiles\algoproject1.dir\main.cpp.s

# Object files for target algoproject1
algoproject1_OBJECTS = \
"CMakeFiles/algoproject1.dir/main.cpp.obj"

# External object files for target algoproject1
algoproject1_EXTERNAL_OBJECTS =

algoproject1.exe: CMakeFiles/algoproject1.dir/main.cpp.obj
algoproject1.exe: CMakeFiles/algoproject1.dir/build.make
algoproject1.exe: CMakeFiles/algoproject1.dir/linklibs.rsp
algoproject1.exe: CMakeFiles/algoproject1.dir/objects1.rsp
algoproject1.exe: CMakeFiles/algoproject1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=Z:\csci406\algoproject1\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable algoproject1.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\algoproject1.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/algoproject1.dir/build: algoproject1.exe

.PHONY : CMakeFiles/algoproject1.dir/build

CMakeFiles/algoproject1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\algoproject1.dir\cmake_clean.cmake
.PHONY : CMakeFiles/algoproject1.dir/clean

CMakeFiles/algoproject1.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" Z:\csci406\algoproject1 Z:\csci406\algoproject1 Z:\csci406\algoproject1\cmake-build-debug Z:\csci406\algoproject1\cmake-build-debug Z:\csci406\algoproject1\cmake-build-debug\CMakeFiles\algoproject1.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/algoproject1.dir/depend

