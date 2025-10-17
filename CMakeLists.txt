cmake_minimum_required(VERSION 3.5)
project(trakstar_cpp_example)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

include_directories(include)

add_executable(PointATC3DG_test
    src/PointATC3DG.cpp
    tools/PointATC3DG_test.cpp
)

find_package(Threads REQUIRED)

target_link_libraries(PointATC3DG_test usb Threads::Threads)
