if(EXISTS "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/MyTests[1]_tests.cmake")
  include("C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/MyTests[1]_tests.cmake")
else()
  add_test(MyTests_NOT_BUILT MyTests_NOT_BUILT)
endif()