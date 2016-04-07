cmake_minimum_required(VERSION 2.8)
project( FetchImages )
find_package( OpenCV REQUIRED )
add_executable( DisplayImage FetchImages.cpp )
target_link_libraries( FetchImages ${OpenCV_LIBS} )


