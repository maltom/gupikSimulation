project(gupikModel)

set(SOURCES 
  src/gupikModel.cpp
  ../common/jsonxx/jsonxx.cc
)

set(HEADERS 
  src/gupikModel.h
  ../common/jsonxx/jsonxx.h
)

cmake_minimum_required(VERSION 3.10.2 FATAL_ERROR)

find_package(gazebo REQUIRED)
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  geometry_msgs
  rospy
)
include_directories(${GAZEBO_INCLUDE_DIRS})
include_directories(include ${catkin_INCLUDE_DIRS})

link_directories(${GAZEBO_LIBRARY_DIRS})
list(APPEND CMAKE_CXX_FLAGS "${GAZEBO_CXX_FLAGS}")

add_library(${PROJECT_NAME} SHARED ${SOURCES} ${HEADERS})
target_link_libraries(${PROJECT_NAME} ${GAZEBO_LIBRARIES})
