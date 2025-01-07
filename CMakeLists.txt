cmake_minimum_required(VERSION 3.18)

set(CMAKE_FIND_DEBUG_MODE TRUE)

project("qt6-playground")

find_package(Qt6 REQUIRED Core)

if(Qt6_FOUND)
    message(STATUS "YES")
else()
    message(STATUS "NO")
endif()

add_executable(${PROJECT_NAME}
    "src/main.cpp"
)

# target_link_libraries(${PROJECT_NAME} portaudio_static)
target_link_options(${PROJECT_NAME} PRIVATE "-static")
