cmake_minimum_required(VERSION 3.16)
project(OCL-VideoProcessingLibrary)

find_package(OCL-VideoProcessingLibrary REQUIRED OCL-VideoProcessingLibrary PATHS install)
include_directories(${OCL-VideoProcessingLibrary_INCLUDE_DIRS})

add_subdirectory(OCL-VideoProcessingLibrary/lib/FFMPEG)
include_directories(install/include/)

if(NOT OCL-VideProcessingLibrary_FOUND)
  file(GLOB OCL-VideProcessingLibrary install/lib/*.a)
endif()

add_library(OCL-VPL INTERFACE IMPORTED GLOBAL)
target_link_libraries(OCL-VPL INTERFACE
  OCL-VideoProcessingLibrary
)
