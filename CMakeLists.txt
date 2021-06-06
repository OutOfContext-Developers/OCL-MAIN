cmake_minimum_required(VERSION 3.16)
project(OCL-MAIN C CXX)
set(CMAKE_CXX_STANDARD 14)

add_subdirectory(lib/SFML)
add_subdirectory(lib/OCL-VideoProcessingLibrary)

include_directories(lib/TinyFileDialogs/tinyfiledialogs)

list(APPEND SOURCES
     src/main.cpp
     lib/TinyFileDialogs/tinyfiledialogs/tinyfiledialogs.c
)

list(APPEND LIBS
    SFML
    OCL-VPL
)

add_executable(OCL-MAIN ${SOURCES})
target_link_libraries(OCL-MAIN ${LIBS})
