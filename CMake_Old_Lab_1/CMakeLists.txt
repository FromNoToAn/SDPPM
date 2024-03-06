# CMakeList.txt: проект CMake для CMake_Old_Lab_1; включите исходный код и определения,
# укажите здесь логику для конкретного проекта.
#
cmake_minimum_required (VERSION 3.19)

# Включение горячей перезагрузки для компиляторов MSVC, если поддерживается.
if (POLICY CMP0141)
  cmake_policy(SET CMP0141 NEW)
  set(CMAKE_MSVC_DEBUG_INFORMATION_FORMAT "$<IF:$<AND:$<C_COMPILER_ID:MSVC>,$<CXX_COMPILER_ID:MSVC>>,$<$<CONFIG:Debug,RelWithDebInfo>:EditAndContinue>,$<$<CONFIG:Debug,RelWithDebInfo>:ProgramDatabase>>")
endif()

project (CM)

set(TESTS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/tests)

include(cmake/UpdateSubmodules.cmake)
include(CTest)

add_subdirectory(${TESTS_DIR})

# Добавьте источник в исполняемый файл этого проекта.


