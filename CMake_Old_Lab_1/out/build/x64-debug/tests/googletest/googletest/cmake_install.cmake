# Install script for directory: C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/tests/googletest/googletest

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/install/x64-debug")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest/GTestTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest/GTestTargets.cmake"
         "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/CMakeFiles/Export/0c08b8e77dd885bfe55a19a9659d9fc1/GTestTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest/GTestTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest/GTestTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest" TYPE FILE FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/CMakeFiles/Export/0c08b8e77dd885bfe55a19a9659d9fc1/GTestTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest" TYPE FILE FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/CMakeFiles/Export/0c08b8e77dd885bfe55a19a9659d9fc1/GTestTargets-debug.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/GTest" TYPE FILE FILES
    "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/generated/GTestConfigVersion.cmake"
    "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/generated/GTestConfig.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/tests/googletest/googletest/include/")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/lib/gtest.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/lib/gtest_main.lib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/bin/${CMAKE_INSTALL_CONFIG_NAME}/gtestpdb_debug_postfix-NOTFOUND.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/bin/${CMAKE_INSTALL_CONFIG_NAME}/gtest_mainpdb_debug_postfix-NOTFOUND.pdb")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/generated/gtest.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "gtest" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/Андрей/Desktop/Проекты С++/SDPPM/CMake_Old_Lab_1/out/build/x64-debug/tests/googletest/googletest/generated/gtest_main.pc")
endif()

