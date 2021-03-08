project(world)

set(SOURCES 
  src/world.cpp
  ../common/jsonxx/jsonxx.cc
)

set(HEADERS 
  src/world.h
  ../common/jsonxx/jsonxx.h
)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
cmake_minimum_required(VERSION 3.10.2 FATAL_ERROR)

#Gazebo
find_package(gazebo REQUIRED)
include_directories(${GAZEBO_INCLUDE_DIRS})
link_directories(${GAZEBO_LIBRARY_DIRS})
list(APPEND CMAKE_CXX_FLAGS "${GAZEBO_CXX_FLAGS}")

#ROS
find_package(roscpp REQUIRED)
find_package(std_msgs REQUIRED)
include_directories(APPEND ${roscpp_INCLUDE_DIRS})
include_directories(APPEND ${std_msgs_INCLUDE_DIRS})
include_directories(APPEND ${geometry_msgs_INCLUDE_DIRS})

add_library(${PROJECT_NAME} SHARED ${SOURCES} ${HEADERS})
target_link_libraries(${PROJECT_NAME} ${GAZEBO_LIBRARIES} ${roscpp_LIBRARIES})
