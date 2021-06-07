cmake_minimum_required(VERSION 3.16)
project(OCL-VideoProcessingLibrary)

find_package(OCL-VideoProcessingLibrary REQUIRED OCL-VideoProcessingLibrary PATHS install)


if(NOT OCL-VideProcessingLibrary_FOUND)
  file(GLOB OCL-VideProcessingLibrary install/lib/*.a)
  set(OCL-VideoProcessingLibrary_INCLUDE_DIRS install/include)
endif()


add_library(OCL-VPL INTERFACE IMPORTED GLOBAL)
target_link_libraries(OCL-VPL INTERFACE
  OCL-VideoProcessingLibrary
)

target_include_directories(OCL-VPL INTERFACE ${OCL-VideoProcessingLibrary_INCLUDE_DIRS})

# Find and add FFMPEG as an external dependency
# Since OCL-VPL requires FFMPEG as runtime library
find_package(PkgConfig REQUIRED)
pkg_check_modules(AVCODEC     REQUIRED IMPORTED_TARGET libavcodec)
pkg_check_modules(AVFORMAT    REQUIRED IMPORTED_TARGET libavformat)
pkg_check_modules(AVFILTER    REQUIRED IMPORTED_TARGET libavfilter)
pkg_check_modules(AVDEVICE    REQUIRED IMPORTED_TARGET libavdevice)
pkg_check_modules(AVUTIL      REQUIRED IMPORTED_TARGET libavutil)
pkg_check_modules(SWRESAMPLE  REQUIRED IMPORTED_TARGET libswresample)
pkg_check_modules(SWSCALE     REQUIRED IMPORTED_TARGET libswscale)

add_library(FFMPEG INTERFACE IMPORTED GLOBAL)

target_link_libraries(FFMPEG INTERFACE
    PkgConfig::AVCODEC
    PkgConfig::AVFORMAT
    PkgConfig::AVFILTER
    PkgConfig::AVDEVICE
    PkgConfig::AVUTIL
    PkgConfig::SWRESAMPLE
    PkgConfig::SWSCALE
)
