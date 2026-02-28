cmake_minimum_required(VERSION 3.18)

# set(CMAKE_FIND_DEBUG_MODE TRUE)
# set(CMAKE_AUTOUIC ON)
# set(CMAKE_AUTOMOC ON)
# set(CMAKE_AUTORCC ON)

project("qt6-playground")

find_package(Qt6 REQUIRED Widgets)

message(STATUS "Qt6_FOUND: ${Qt6_FOUND}")

qt_add_executable("${PROJECT_NAME}"
    MANUAL_FINALIZATION
    "src/main.cpp"
)

target_link_libraries("${PROJECT_NAME}" PRIVATE Qt6::Widgets)

target_link_options("${PROJECT_NAME}" PRIVATE -static -mwindows)

set_target_properties("${PROJECT_NAME}" PROPERTIES LINK_FLAGS_RELEASE "-s")

qt_finalize_executable("${PROJECT_NAME}")
