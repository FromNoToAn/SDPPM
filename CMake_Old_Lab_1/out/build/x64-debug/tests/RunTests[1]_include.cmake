if(EXISTS "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/RunTests[1]_tests.cmake")
  include("C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/RunTests[1]_tests.cmake")
else()
  add_test(RunTests_NOT_BUILT RunTests_NOT_BUILT)
endif()
