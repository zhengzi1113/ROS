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
CMAKE_SOURCE_DIR = /home/xiang/ros_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xiang/ros_ws/build

# Utility rule file for dr_gencfg.

# Include the progress variables for this target.
include dr/CMakeFiles/dr_gencfg.dir/progress.make

dr/CMakeFiles/dr_gencfg: /home/xiang/ros_ws/devel/include/dr/drConfig.h
dr/CMakeFiles/dr_gencfg: /home/xiang/ros_ws/devel/lib/python3/dist-packages/dr/cfg/drConfig.py


/home/xiang/ros_ws/devel/include/dr/drConfig.h: /home/xiang/ros_ws/src/dr/cfg/dr.cfg
/home/xiang/ros_ws/devel/include/dr/drConfig.h: /opt/ros/noetic/share/dynamic_reconfigure/templates/ConfigType.py.template
/home/xiang/ros_ws/devel/include/dr/drConfig.h: /opt/ros/noetic/share/dynamic_reconfigure/templates/ConfigType.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xiang/ros_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating dynamic reconfigure files from cfg/dr.cfg: /home/xiang/ros_ws/devel/include/dr/drConfig.h /home/xiang/ros_ws/devel/lib/python3/dist-packages/dr/cfg/drConfig.py"
	cd /home/xiang/ros_ws/build/dr && ../catkin_generated/env_cached.sh /home/xiang/ros_ws/build/dr/setup_custom_pythonpath.sh /home/xiang/ros_ws/src/dr/cfg/dr.cfg /opt/ros/noetic/share/dynamic_reconfigure/cmake/.. /home/xiang/ros_ws/devel/share/dr /home/xiang/ros_ws/devel/include/dr /home/xiang/ros_ws/devel/lib/python3/dist-packages/dr

/home/xiang/ros_ws/devel/share/dr/docs/drConfig.dox: /home/xiang/ros_ws/devel/include/dr/drConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/xiang/ros_ws/devel/share/dr/docs/drConfig.dox

/home/xiang/ros_ws/devel/share/dr/docs/drConfig-usage.dox: /home/xiang/ros_ws/devel/include/dr/drConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/xiang/ros_ws/devel/share/dr/docs/drConfig-usage.dox

/home/xiang/ros_ws/devel/lib/python3/dist-packages/dr/cfg/drConfig.py: /home/xiang/ros_ws/devel/include/dr/drConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/xiang/ros_ws/devel/lib/python3/dist-packages/dr/cfg/drConfig.py

/home/xiang/ros_ws/devel/share/dr/docs/drConfig.wikidoc: /home/xiang/ros_ws/devel/include/dr/drConfig.h
	@$(CMAKE_COMMAND) -E touch_nocreate /home/xiang/ros_ws/devel/share/dr/docs/drConfig.wikidoc

dr_gencfg: dr/CMakeFiles/dr_gencfg
dr_gencfg: /home/xiang/ros_ws/devel/include/dr/drConfig.h
dr_gencfg: /home/xiang/ros_ws/devel/share/dr/docs/drConfig.dox
dr_gencfg: /home/xiang/ros_ws/devel/share/dr/docs/drConfig-usage.dox
dr_gencfg: /home/xiang/ros_ws/devel/lib/python3/dist-packages/dr/cfg/drConfig.py
dr_gencfg: /home/xiang/ros_ws/devel/share/dr/docs/drConfig.wikidoc
dr_gencfg: dr/CMakeFiles/dr_gencfg.dir/build.make

.PHONY : dr_gencfg

# Rule to build all files generated by this target.
dr/CMakeFiles/dr_gencfg.dir/build: dr_gencfg

.PHONY : dr/CMakeFiles/dr_gencfg.dir/build

dr/CMakeFiles/dr_gencfg.dir/clean:
	cd /home/xiang/ros_ws/build/dr && $(CMAKE_COMMAND) -P CMakeFiles/dr_gencfg.dir/cmake_clean.cmake
.PHONY : dr/CMakeFiles/dr_gencfg.dir/clean

dr/CMakeFiles/dr_gencfg.dir/depend:
	cd /home/xiang/ros_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xiang/ros_ws/src /home/xiang/ros_ws/src/dr /home/xiang/ros_ws/build /home/xiang/ros_ws/build/dr /home/xiang/ros_ws/build/dr/CMakeFiles/dr_gencfg.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : dr/CMakeFiles/dr_gencfg.dir/depend
