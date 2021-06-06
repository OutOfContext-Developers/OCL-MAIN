cmake_minimum_required(VERSION 3.16)
project(SFML)

find_package(SFML REQUIRED system window graphics network audio PATHS install/)
include_directories(${SFML_INCLUDE_DIRS})

add_library(SFML INTERFACE IMPORTED GLOBAL)
target_link_libraries(SFML INTERFACE sfml-audio sfml-graphics sfml-network sfml-system)
