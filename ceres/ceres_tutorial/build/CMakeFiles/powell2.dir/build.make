# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/niki/share/code/ceres_tutorial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/niki/share/code/ceres_tutorial/build

# Include any dependencies generated for this target.
include CMakeFiles/powell2.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/powell2.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/powell2.dir/flags.make

CMakeFiles/powell2.dir/powell2.cpp.o: CMakeFiles/powell2.dir/flags.make
CMakeFiles/powell2.dir/powell2.cpp.o: ../powell2.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/niki/share/code/ceres_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/powell2.dir/powell2.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/powell2.dir/powell2.cpp.o -c /home/niki/share/code/ceres_tutorial/powell2.cpp

CMakeFiles/powell2.dir/powell2.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/powell2.dir/powell2.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/niki/share/code/ceres_tutorial/powell2.cpp > CMakeFiles/powell2.dir/powell2.cpp.i

CMakeFiles/powell2.dir/powell2.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/powell2.dir/powell2.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/niki/share/code/ceres_tutorial/powell2.cpp -o CMakeFiles/powell2.dir/powell2.cpp.s

CMakeFiles/powell2.dir/powell2.cpp.o.requires:

.PHONY : CMakeFiles/powell2.dir/powell2.cpp.o.requires

CMakeFiles/powell2.dir/powell2.cpp.o.provides: CMakeFiles/powell2.dir/powell2.cpp.o.requires
	$(MAKE) -f CMakeFiles/powell2.dir/build.make CMakeFiles/powell2.dir/powell2.cpp.o.provides.build
.PHONY : CMakeFiles/powell2.dir/powell2.cpp.o.provides

CMakeFiles/powell2.dir/powell2.cpp.o.provides.build: CMakeFiles/powell2.dir/powell2.cpp.o


# Object files for target powell2
powell2_OBJECTS = \
"CMakeFiles/powell2.dir/powell2.cpp.o"

# External object files for target powell2
powell2_EXTERNAL_OBJECTS =

powell2: CMakeFiles/powell2.dir/powell2.cpp.o
powell2: CMakeFiles/powell2.dir/build.make
powell2: /usr/local/lib/libceres.a
powell2: /usr/lib/x86_64-linux-gnu/libglog.so
powell2: /usr/lib/x86_64-linux-gnu/libspqr.so
powell2: /usr/lib/x86_64-linux-gnu/libtbb.so
powell2: /usr/lib/x86_64-linux-gnu/libtbbmalloc.so
powell2: /usr/lib/x86_64-linux-gnu/libcholmod.so
powell2: /usr/lib/x86_64-linux-gnu/libccolamd.so
powell2: /usr/lib/x86_64-linux-gnu/libcamd.so
powell2: /usr/lib/x86_64-linux-gnu/libcolamd.so
powell2: /usr/lib/x86_64-linux-gnu/libamd.so
powell2: /usr/lib/liblapack.so
powell2: /usr/lib/libf77blas.so
powell2: /usr/lib/libatlas.so
powell2: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
powell2: /usr/lib/x86_64-linux-gnu/librt.so
powell2: /usr/local/lib/libmetis.so
powell2: /usr/lib/liblapack.so
powell2: /usr/lib/libf77blas.so
powell2: /usr/lib/libatlas.so
powell2: /usr/lib/x86_64-linux-gnu/libsuitesparseconfig.so
powell2: /usr/lib/x86_64-linux-gnu/librt.so
powell2: /usr/local/lib/libmetis.so
powell2: CMakeFiles/powell2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/niki/share/code/ceres_tutorial/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable powell2"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/powell2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/powell2.dir/build: powell2

.PHONY : CMakeFiles/powell2.dir/build

CMakeFiles/powell2.dir/requires: CMakeFiles/powell2.dir/powell2.cpp.o.requires

.PHONY : CMakeFiles/powell2.dir/requires

CMakeFiles/powell2.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/powell2.dir/cmake_clean.cmake
.PHONY : CMakeFiles/powell2.dir/clean

CMakeFiles/powell2.dir/depend:
	cd /home/niki/share/code/ceres_tutorial/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/niki/share/code/ceres_tutorial /home/niki/share/code/ceres_tutorial /home/niki/share/code/ceres_tutorial/build /home/niki/share/code/ceres_tutorial/build /home/niki/share/code/ceres_tutorial/build/CMakeFiles/powell2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/powell2.dir/depend

