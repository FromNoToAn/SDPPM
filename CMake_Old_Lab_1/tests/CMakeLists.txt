# CMakeList.txt: проект CMake для tests
set(CMAKE_CXX_STANDARD 17)

set(SCR_DIR ../scr)
set(INC_DIR ../include)

add_subdirectory(googletest)


if(BUILD_TESTING)
	add_executable(my_test Tests.cpp ${INC_DIR}/CMake_Old_Lab_1.h ${INC_DIR}/bitarray.h ${SCR_DIR}/bitarray.cpp)
	target_link_libraries(my_test PRIVATE GTest::gtest_main)

	include(GoogleTest)
	gtest_discover_tests(my_test)
endif()