# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qawiy/Documents/z1_sdk-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qawiy/Documents/z1_sdk-master/build

# Include any dependencies generated for this target.
include CMakeFiles/highcmd_basic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/highcmd_basic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/highcmd_basic.dir/flags.make

CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o: CMakeFiles/highcmd_basic.dir/flags.make
CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o: ../examples/highcmd_basic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/qawiy/Documents/z1_sdk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o -c /home/qawiy/Documents/z1_sdk-master/examples/highcmd_basic.cpp

CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/qawiy/Documents/z1_sdk-master/examples/highcmd_basic.cpp > CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.i

CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/qawiy/Documents/z1_sdk-master/examples/highcmd_basic.cpp -o CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.s

# Object files for target highcmd_basic
highcmd_basic_OBJECTS = \
"CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o"

# External object files for target highcmd_basic
highcmd_basic_EXTERNAL_OBJECTS =

highcmd_basic: CMakeFiles/highcmd_basic.dir/examples/highcmd_basic.cpp.o
highcmd_basic: CMakeFiles/highcmd_basic.dir/build.make
highcmd_basic: CMakeFiles/highcmd_basic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/qawiy/Documents/z1_sdk-master/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable highcmd_basic"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/highcmd_basic.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/highcmd_basic.dir/build: highcmd_basic

.PHONY : CMakeFiles/highcmd_basic.dir/build

CMakeFiles/highcmd_basic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/highcmd_basic.dir/cmake_clean.cmake
.PHONY : CMakeFiles/highcmd_basic.dir/clean

CMakeFiles/highcmd_basic.dir/depend:
	cd /home/qawiy/Documents/z1_sdk-master/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qawiy/Documents/z1_sdk-master /home/qawiy/Documents/z1_sdk-master /home/qawiy/Documents/z1_sdk-master/build /home/qawiy/Documents/z1_sdk-master/build /home/qawiy/Documents/z1_sdk-master/build/CMakeFiles/highcmd_basic.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/highcmd_basic.dir/depend
