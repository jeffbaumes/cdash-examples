cmake_minimum_required(VERSION 2.8)
project(Foo)

include(CTest)

add_library(foo foo.cpp)
add_executable(test_foo test_foo.cpp)
target_link_libraries(test_foo foo)
add_test("Test Foo" test_foo)
