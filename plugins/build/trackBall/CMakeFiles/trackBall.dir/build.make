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
CMAKE_SOURCE_DIR = /home/tomasz/simulations_ws/gupik/plugins/trackBall

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/tomasz/simulations_ws/gupik/plugins/build/trackBall

# Include any dependencies generated for this target.
include CMakeFiles/trackBall.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/trackBall.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/trackBall.dir/flags.make

CMakeFiles/trackBall.dir/src/trackBall.cpp.o: CMakeFiles/trackBall.dir/flags.make
CMakeFiles/trackBall.dir/src/trackBall.cpp.o: /home/tomasz/simulations_ws/gupik/plugins/trackBall/src/trackBall.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/simulations_ws/gupik/plugins/build/trackBall/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/trackBall.dir/src/trackBall.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trackBall.dir/src/trackBall.cpp.o -c /home/tomasz/simulations_ws/gupik/plugins/trackBall/src/trackBall.cpp

CMakeFiles/trackBall.dir/src/trackBall.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trackBall.dir/src/trackBall.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/simulations_ws/gupik/plugins/trackBall/src/trackBall.cpp > CMakeFiles/trackBall.dir/src/trackBall.cpp.i

CMakeFiles/trackBall.dir/src/trackBall.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trackBall.dir/src/trackBall.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/simulations_ws/gupik/plugins/trackBall/src/trackBall.cpp -o CMakeFiles/trackBall.dir/src/trackBall.cpp.s

CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o: CMakeFiles/trackBall.dir/flags.make
CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o: /home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/tomasz/simulations_ws/gupik/plugins/build/trackBall/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o -c /home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc

CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc > CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.i

CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc -o CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.s

# Object files for target trackBall
trackBall_OBJECTS = \
"CMakeFiles/trackBall.dir/src/trackBall.cpp.o" \
"CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o"

# External object files for target trackBall
trackBall_EXTERNAL_OBJECTS =

libtrackBall.so: CMakeFiles/trackBall.dir/src/trackBall.cpp.o
libtrackBall.so: CMakeFiles/trackBall.dir/home/tomasz/simulations_ws/gupik/plugins/common/jsonxx/jsonxx.cc.o
libtrackBall.so: CMakeFiles/trackBall.dir/build.make
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libSimTKsimbody.so.3.6
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libdart.so.6.9.2
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_client.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_gui.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_sensors.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_rendering.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_physics.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_ode.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_transport.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_msgs.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_util.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_common.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_gimpact.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_opcode.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libgazebo_opende_ou.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_iostreams.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libprotobuf.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libsdformat9.so.9.5.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libOgreMain.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libOgreTerrain.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libOgrePaging.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-common3-graphics.so.3.11.1
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libSimTKmath.so.3.6
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libSimTKcommon.so.3.6
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libblas.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/liblapack.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libblas.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/liblapack.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libdart-external-odelcpsolver.so.6.9.2
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libccd.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libfcl.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libassimp.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/liboctomap.so.1.9.3
libtrackBall.so: /usr/lib/x86_64-linux-gnu/liboctomath.so.1.9.3
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libboost_atomic.so.1.71.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-transport8.so.8.2.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-fuel_tools4.so.4.3.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-msgs5.so.5.7.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-math6.so.6.7.0
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libprotobuf.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libignition-common3.so.3.11.1
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libuuid.so
libtrackBall.so: /usr/lib/x86_64-linux-gnu/libuuid.so
libtrackBall.so: CMakeFiles/trackBall.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/tomasz/simulations_ws/gupik/plugins/build/trackBall/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libtrackBall.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/trackBall.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/trackBall.dir/build: libtrackBall.so

.PHONY : CMakeFiles/trackBall.dir/build

CMakeFiles/trackBall.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/trackBall.dir/cmake_clean.cmake
.PHONY : CMakeFiles/trackBall.dir/clean

CMakeFiles/trackBall.dir/depend:
	cd /home/tomasz/simulations_ws/gupik/plugins/build/trackBall && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/tomasz/simulations_ws/gupik/plugins/trackBall /home/tomasz/simulations_ws/gupik/plugins/trackBall /home/tomasz/simulations_ws/gupik/plugins/build/trackBall /home/tomasz/simulations_ws/gupik/plugins/build/trackBall /home/tomasz/simulations_ws/gupik/plugins/build/trackBall/CMakeFiles/trackBall.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/trackBall.dir/depend

