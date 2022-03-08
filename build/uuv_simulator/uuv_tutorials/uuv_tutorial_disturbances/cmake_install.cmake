# Install script for directory: /home/bojan/uuv_simulator_ws/src/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/build/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/catkin_generated/installspace/uuv_tutorial_disturbances.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_tutorial_disturbances/cmake" TYPE FILE FILES
    "/home/bojan/uuv_simulator_ws/build/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/catkin_generated/installspace/uuv_tutorial_disturbancesConfig.cmake"
    "/home/bojan/uuv_simulator_ws/build/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/catkin_generated/installspace/uuv_tutorial_disturbancesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_tutorial_disturbances" TYPE FILE FILES "/home/bojan/uuv_simulator_ws/src/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/uuv_tutorial_disturbances" TYPE DIRECTORY FILES
    "/home/bojan/uuv_simulator_ws/src/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/launch"
    "/home/bojan/uuv_simulator_ws/src/uuv_simulator/uuv_tutorials/uuv_tutorial_disturbances/config"
    REGEX "/[^/]*\\~$" EXCLUDE)
endif()
