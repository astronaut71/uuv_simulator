# Install script for directory: /home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/bojan/uuv_simulator_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs/msg" TYPE FILE FILES
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/msg/ParticleConcentration.msg"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/msg/Salinity.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs/srv" TYPE FILE FILES
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/CreatePassiveScalarTurbulentPlume.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/CreateSpheroidPlume.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetPlumeLimits.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetPlumeConfiguration.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/GetPlumeConfiguration.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/DeletePlume.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetPlumeSourcePosition.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/GetPlumeSourcePosition.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/GetNumParticles.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/StorePlumeState.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/LoadPlumeParticles.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetCurrentDirection.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetCurrentModel.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/GetCurrentModel.srv"
    "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/srv/SetCurrentVelocity.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs/cmake" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/build/uuv_plume_simulator/uuv_plume_msgs/catkin_generated/installspace/uuv_plume_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/bojan/uuv_simulator_ws/devel/include/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/bojan/uuv_simulator_ws/devel/share/roseus/ros/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/bojan/uuv_simulator_ws/devel/share/common-lisp/ros/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/bojan/uuv_simulator_ws/devel/share/gennodejs/ros/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/bojan/uuv_simulator_ws/devel/lib/python2.7/dist-packages/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/bojan/uuv_simulator_ws/devel/lib/python2.7/dist-packages/uuv_plume_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/build/uuv_plume_simulator/uuv_plume_msgs/catkin_generated/installspace/uuv_plume_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs/cmake" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/build/uuv_plume_simulator/uuv_plume_msgs/catkin_generated/installspace/uuv_plume_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs/cmake" TYPE FILE FILES
    "/home/bojan/uuv_simulator_ws/build/uuv_plume_simulator/uuv_plume_msgs/catkin_generated/installspace/uuv_plume_msgsConfig.cmake"
    "/home/bojan/uuv_simulator_ws/build/uuv_plume_simulator/uuv_plume_msgs/catkin_generated/installspace/uuv_plume_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_plume_msgs" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/src/uuv_plume_simulator/uuv_plume_msgs/package.xml")
endif()

