# Install script for directory: /home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/cerlab_erq/neo_simulation

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/build/cerlab_erq/neo_simulation/catkin_generated/installspace/neo_simulation.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_simulation/cmake" TYPE FILE FILES
    "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/build/cerlab_erq/neo_simulation/catkin_generated/installspace/neo_simulationConfig.cmake"
    "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/build/cerlab_erq/neo_simulation/catkin_generated/installspace/neo_simulationConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/neo_simulation" TYPE FILE FILES "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/cerlab_erq/neo_simulation/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/neo_simulation" TYPE PROGRAM FILES "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/cerlab_erq/neo_simulation/scripts/robot_node.py")
endif()

