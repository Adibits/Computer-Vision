cmake_minimum_required(VERSION 2.4)
project( code )
find_package(OpenCV REQUIRED)
include_directories( ${OpenCV_INCLUDE_DIRS} )
add_executable( resize code.cpp )
target_link_libraries( resize ${OpenCV_LIBS} )


