# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_SOURCE_DIR = /home/adity/Desktop/opencv/Projects/new/4_Prewit

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adity/Desktop/opencv/Projects/new/4_Prewit

# Include any dependencies generated for this target.
include CMakeFiles/prewit.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/prewit.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/prewit.dir/flags.make

CMakeFiles/prewit.dir/prewit.cpp.o: CMakeFiles/prewit.dir/flags.make
CMakeFiles/prewit.dir/prewit.cpp.o: prewit.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/adity/Desktop/opencv/Projects/new/4_Prewit/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/prewit.dir/prewit.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/prewit.dir/prewit.cpp.o -c /home/adity/Desktop/opencv/Projects/new/4_Prewit/prewit.cpp

CMakeFiles/prewit.dir/prewit.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/prewit.dir/prewit.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/adity/Desktop/opencv/Projects/new/4_Prewit/prewit.cpp > CMakeFiles/prewit.dir/prewit.cpp.i

CMakeFiles/prewit.dir/prewit.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/prewit.dir/prewit.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/adity/Desktop/opencv/Projects/new/4_Prewit/prewit.cpp -o CMakeFiles/prewit.dir/prewit.cpp.s

CMakeFiles/prewit.dir/prewit.cpp.o.requires:
.PHONY : CMakeFiles/prewit.dir/prewit.cpp.o.requires

CMakeFiles/prewit.dir/prewit.cpp.o.provides: CMakeFiles/prewit.dir/prewit.cpp.o.requires
	$(MAKE) -f CMakeFiles/prewit.dir/build.make CMakeFiles/prewit.dir/prewit.cpp.o.provides.build
.PHONY : CMakeFiles/prewit.dir/prewit.cpp.o.provides

CMakeFiles/prewit.dir/prewit.cpp.o.provides.build: CMakeFiles/prewit.dir/prewit.cpp.o

# Object files for target prewit
prewit_OBJECTS = \
"CMakeFiles/prewit.dir/prewit.cpp.o"

# External object files for target prewit
prewit_EXTERNAL_OBJECTS =

prewit: CMakeFiles/prewit.dir/prewit.cpp.o
prewit: CMakeFiles/prewit.dir/build.make
prewit: /usr/local/lib/libopencv_videostab.so.2.4.10
prewit: /usr/local/lib/libopencv_video.so.2.4.10
prewit: /usr/local/lib/libopencv_ts.a
prewit: /usr/local/lib/libopencv_superres.so.2.4.10
prewit: /usr/local/lib/libopencv_stitching.so.2.4.10
prewit: /usr/local/lib/libopencv_photo.so.2.4.10
prewit: /usr/local/lib/libopencv_ocl.so.2.4.10
prewit: /usr/local/lib/libopencv_objdetect.so.2.4.10
prewit: /usr/local/lib/libopencv_nonfree.so.2.4.10
prewit: /usr/local/lib/libopencv_ml.so.2.4.10
prewit: /usr/local/lib/libopencv_legacy.so.2.4.10
prewit: /usr/local/lib/libopencv_imgproc.so.2.4.10
prewit: /usr/local/lib/libopencv_highgui.so.2.4.10
prewit: /usr/local/lib/libopencv_gpu.so.2.4.10
prewit: /usr/local/lib/libopencv_flann.so.2.4.10
prewit: /usr/local/lib/libopencv_features2d.so.2.4.10
prewit: /usr/local/lib/libopencv_core.so.2.4.10
prewit: /usr/local/lib/libopencv_contrib.so.2.4.10
prewit: /usr/local/lib/libopencv_calib3d.so.2.4.10
prewit: /usr/lib/x86_64-linux-gnu/libGLU.so
prewit: /usr/lib/x86_64-linux-gnu/libGL.so
prewit: /usr/lib/x86_64-linux-gnu/libSM.so
prewit: /usr/lib/x86_64-linux-gnu/libICE.so
prewit: /usr/lib/x86_64-linux-gnu/libX11.so
prewit: /usr/lib/x86_64-linux-gnu/libXext.so
prewit: /usr/local/lib/libopencv_nonfree.so.2.4.10
prewit: /usr/local/lib/libopencv_ocl.so.2.4.10
prewit: /usr/local/lib/libopencv_gpu.so.2.4.10
prewit: /usr/local/lib/libopencv_photo.so.2.4.10
prewit: /usr/local/lib/libopencv_objdetect.so.2.4.10
prewit: /usr/local/lib/libopencv_legacy.so.2.4.10
prewit: /usr/local/lib/libopencv_video.so.2.4.10
prewit: /usr/local/lib/libopencv_ml.so.2.4.10
prewit: /usr/local/lib/libopencv_calib3d.so.2.4.10
prewit: /usr/local/lib/libopencv_features2d.so.2.4.10
prewit: /usr/local/lib/libopencv_highgui.so.2.4.10
prewit: /usr/local/lib/libopencv_imgproc.so.2.4.10
prewit: /usr/local/lib/libopencv_flann.so.2.4.10
prewit: /usr/local/lib/libopencv_core.so.2.4.10
prewit: CMakeFiles/prewit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable prewit"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/prewit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/prewit.dir/build: prewit
.PHONY : CMakeFiles/prewit.dir/build

CMakeFiles/prewit.dir/requires: CMakeFiles/prewit.dir/prewit.cpp.o.requires
.PHONY : CMakeFiles/prewit.dir/requires

CMakeFiles/prewit.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/prewit.dir/cmake_clean.cmake
.PHONY : CMakeFiles/prewit.dir/clean

CMakeFiles/prewit.dir/depend:
	cd /home/adity/Desktop/opencv/Projects/new/4_Prewit && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adity/Desktop/opencv/Projects/new/4_Prewit /home/adity/Desktop/opencv/Projects/new/4_Prewit /home/adity/Desktop/opencv/Projects/new/4_Prewit /home/adity/Desktop/opencv/Projects/new/4_Prewit /home/adity/Desktop/opencv/Projects/new/4_Prewit/CMakeFiles/prewit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/prewit.dir/depend

