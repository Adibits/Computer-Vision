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
CMAKE_SOURCE_DIR = /home/adity/Desktop/opencv/Projects/new/CamShift

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/adity/Desktop/opencv/Projects/new/CamShift

# Include any dependencies generated for this target.
include CMakeFiles/camshiftdemo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/camshiftdemo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/camshiftdemo.dir/flags.make

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o: CMakeFiles/camshiftdemo.dir/flags.make
CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o: camshiftdemo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/adity/Desktop/opencv/Projects/new/CamShift/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o -c /home/adity/Desktop/opencv/Projects/new/CamShift/camshiftdemo.cpp

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/adity/Desktop/opencv/Projects/new/CamShift/camshiftdemo.cpp > CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.i

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/adity/Desktop/opencv/Projects/new/CamShift/camshiftdemo.cpp -o CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.s

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.requires:
.PHONY : CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.requires

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.provides: CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.requires
	$(MAKE) -f CMakeFiles/camshiftdemo.dir/build.make CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.provides.build
.PHONY : CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.provides

CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.provides.build: CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o

# Object files for target camshiftdemo
camshiftdemo_OBJECTS = \
"CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o"

# External object files for target camshiftdemo
camshiftdemo_EXTERNAL_OBJECTS =

camshiftdemo: CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o
camshiftdemo: CMakeFiles/camshiftdemo.dir/build.make
camshiftdemo: /usr/local/lib/libopencv_videostab.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_video.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_ts.a
camshiftdemo: /usr/local/lib/libopencv_superres.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_stitching.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_photo.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_ocl.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_objdetect.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_nonfree.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_ml.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_legacy.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_imgproc.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_highgui.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_gpu.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_flann.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_features2d.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_core.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_contrib.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_calib3d.so.2.4.10
camshiftdemo: /usr/lib/x86_64-linux-gnu/libGLU.so
camshiftdemo: /usr/lib/x86_64-linux-gnu/libGL.so
camshiftdemo: /usr/lib/x86_64-linux-gnu/libSM.so
camshiftdemo: /usr/lib/x86_64-linux-gnu/libICE.so
camshiftdemo: /usr/lib/x86_64-linux-gnu/libX11.so
camshiftdemo: /usr/lib/x86_64-linux-gnu/libXext.so
camshiftdemo: /usr/local/lib/libopencv_nonfree.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_ocl.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_gpu.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_photo.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_objdetect.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_legacy.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_video.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_ml.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_calib3d.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_features2d.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_highgui.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_imgproc.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_flann.so.2.4.10
camshiftdemo: /usr/local/lib/libopencv_core.so.2.4.10
camshiftdemo: CMakeFiles/camshiftdemo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable camshiftdemo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/camshiftdemo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/camshiftdemo.dir/build: camshiftdemo
.PHONY : CMakeFiles/camshiftdemo.dir/build

CMakeFiles/camshiftdemo.dir/requires: CMakeFiles/camshiftdemo.dir/camshiftdemo.cpp.o.requires
.PHONY : CMakeFiles/camshiftdemo.dir/requires

CMakeFiles/camshiftdemo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/camshiftdemo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/camshiftdemo.dir/clean

CMakeFiles/camshiftdemo.dir/depend:
	cd /home/adity/Desktop/opencv/Projects/new/CamShift && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/adity/Desktop/opencv/Projects/new/CamShift /home/adity/Desktop/opencv/Projects/new/CamShift /home/adity/Desktop/opencv/Projects/new/CamShift /home/adity/Desktop/opencv/Projects/new/CamShift /home/adity/Desktop/opencv/Projects/new/CamShift/CMakeFiles/camshiftdemo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/camshiftdemo.dir/depend
