cmake_minimum_required(VERSION 3.16)
project(ICARUS-OBC C CXX)

# Include the F´ core
include("${CMAKE_CURRENT_LIST_DIR}/lib/fprime/cmake/FPrime.cmake")

# Register this as an F´ project
include("${CMAKE_CURRENT_LIST_DIR}/lib/fprime/cmake/FPrime-Code.cmake")

# Add deployment
add_fprime_subdirectory("${CMAKE_CURRENT_LIST_DIR}/ICARUS/")
