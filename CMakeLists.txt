cmake_minimum_required(VERSION 3.18)

# set(CMAKE_FIND_DEBUG_MODE TRUE)
# set(CMAKE_AUTOUIC ON)
# set(CMAKE_AUTOMOC ON)
# set(CMAKE_AUTORCC ON)

project("qt6-playground")

find_package(Qt6 REQUIRED Widgets)

if(Qt6_FOUND)
    message(STATUS "YES")
else()
    message(STATUS "NO")
endif()

qt_add_executable("qt6-playground"
    MANUAL_FINALIZATION
    "src/main.cpp"
)

target_link_libraries("qt6-playground" PRIVATE Qt6::Widgets)

# target_link_libraries(${PROJECT_NAME} portaudio_static)
target_link_options(${PROJECT_NAME} PRIVATE -static -mwindows)

qt_finalize_executable("qt6-playground")