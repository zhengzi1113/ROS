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

# Utility rule file for sever_client_generate_messages_cpp.

# Include the progress variables for this target.
include sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/progress.make

sever_client/CMakeFiles/sever_client_generate_messages_cpp: /home/xiang/test/devel/include/sever_client/ADDints.h


/home/xiang/test/devel/include/sever_client/ADDints.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/xiang/test/devel/include/sever_client/ADDints.h: /home/xiang/test/src/sever_client/srv/ADDints.srv
/home/xiang/test/devel/include/sever_client/ADDints.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/xiang/test/devel/include/sever_client/ADDints.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xiang/test/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from sever_client/ADDints.srv"
	cd /home/xiang/test/src/sever_client && /home/xiang/test/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/xiang/test/src/sever_client/srv/ADDints.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p sever_client -o /home/xiang/test/devel/include/sever_client -e /opt/ros/noetic/share/gencpp/cmake/..

sever_client_generate_messages_cpp: sever_client/CMakeFiles/sever_client_generate_messages_cpp
sever_client_generate_messages_cpp: /home/xiang/test/devel/include/sever_client/ADDints.h
sever_client_generate_messages_cpp: sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/build.make

.PHONY : sever_client_generate_messages_cpp

# Rule to build all files generated by this target.
sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/build: sever_client_generate_messages_cpp

.PHONY : sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/build

sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/clean:
	cd /home/xiang/test/build/sever_client && $(CMAKE_COMMAND) -P CMakeFiles/sever_client_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/clean

sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/depend:
	cd /home/xiang/test/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiang/test/src /home/xiang/test/src/sever_client /home/xiang/test/build /home/xiang/test/build/sever_client /home/xiang/test/build/sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : sever_client/CMakeFiles/sever_client_generate_messages_cpp.dir/depend

