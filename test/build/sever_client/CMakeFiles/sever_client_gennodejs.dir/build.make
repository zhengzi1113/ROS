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
CMAKE_SOURCE_DIR = /home/xiang/test/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiang/test/build

# Utility rule file for sever_client_gennodejs.

# Include the progress variables for this target.
include sever_client/CMakeFiles/sever_client_gennodejs.dir/progress.make

sever_client_gennodejs: sever_client/CMakeFiles/sever_client_gennodejs.dir/build.make

.PHONY : sever_client_gennodejs

# Rule to build all files generated by this target.
sever_client/CMakeFiles/sever_client_gennodejs.dir/build: sever_client_gennodejs

.PHONY : sever_client/CMakeFiles/sever_client_gennodejs.dir/build

sever_client/CMakeFiles/sever_client_gennodejs.dir/clean:
	cd /home/xiang/test/build/sever_client && $(CMAKE_COMMAND) -P CMakeFiles/sever_client_gennodejs.dir/cmake_clean.cmake
.PHONY : sever_client/CMakeFiles/sever_client_gennodejs.dir/clean

sever_client/CMakeFiles/sever_client_gennodejs.dir/depend:
	cd /home/xiang/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiang/test/src /home/xiang/test/src/sever_client /home/xiang/test/build /home/xiang/test/build/sever_client /home/xiang/test/build/sever_client/CMakeFiles/sever_client_gennodejs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sever_client/CMakeFiles/sever_client_gennodejs.dir/depend
