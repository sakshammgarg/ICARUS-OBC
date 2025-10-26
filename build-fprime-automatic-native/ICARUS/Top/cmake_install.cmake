# Install script for directory: /Users/sakshamgarg/ICARUS-OBC/ICARUS/Top

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/Users/sakshamgarg/ICARUS-OBC/build-artifacts")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/bin" TYPE EXECUTABLE FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/bin/Darwin/ICARUS_Top")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/bin/ICARUS_Top" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/bin/ICARUS_Top")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/strip" -u -r "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/bin/ICARUS_Top")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libICARUS_Types.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Types.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Types.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Types.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libconfig.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libconfig.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libconfig.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libconfig.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Cfg.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cfg.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cfg.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cfg.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Types.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Types.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Types.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Types.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Logger.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Logger.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Logger.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Logger.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Obj.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Obj.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Obj.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Obj.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Port.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Port.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Port.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Port.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Time.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Time.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Time.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Time.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Com.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Com.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Com.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Com.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Tlm.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Tlm.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Tlm.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Tlm.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Log.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Log.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Log.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Log.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libOs.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libOs.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libOs.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libOs.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Comp.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Comp.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Comp.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Comp.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_CompQueued.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_CompQueued.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_CompQueued.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_CompQueued.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libICARUS_Components_ADCS.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_ADCS.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_ADCS.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_ADCS.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Cmd.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cmd.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cmd.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Cmd.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libICARUS_Components_Comms.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Comms.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Comms.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Comms.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libICARUS_Components_Microcontroller.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Microcontroller.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Microcontroller.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_Microcontroller.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libICARUS_Components_NandFlash.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_NandFlash.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_NandFlash.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libICARUS_Components_NandFlash.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Prm.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Prm.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Prm.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Prm.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libFw_Buffer.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Buffer.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Buffer.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libFw_Buffer.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libDrv_ByteStreamDriverModel.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_ByteStreamDriverModel.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_ByteStreamDriverModel.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_ByteStreamDriverModel.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libDrv_Ip.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_Ip.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_Ip.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_Ip.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libDrv_TcpClient.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_TcpClient.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_TcpClient.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libDrv_TcpClient.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_Fatal.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Fatal.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Fatal.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Fatal.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_Ping.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Ping.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Ping.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Ping.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_ActiveLogger.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_ActiveLogger.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_ActiveLogger.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_ActiveLogger.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_CmdDispatcher.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_CmdDispatcher.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_CmdDispatcher.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_CmdDispatcher.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_PassiveConsoleTextLogger.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PassiveConsoleTextLogger.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PassiveConsoleTextLogger.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PassiveConsoleTextLogger.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_PosixTime.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PosixTime.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PosixTime.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_PosixTime.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_Sched.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Sched.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Sched.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_Sched.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static" TYPE STATIC_LIBRARY FILES "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/lib/Darwin/libSvc_TlmChan.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_TlmChan.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_TlmChan.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/lib/static/libSvc_TlmChan.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "ICARUS_Top" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/Darwin/ICARUS_Top/dict" TYPE FILE FILES
    "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/ICARUS/Top/ICARUSTopologyAppDictionary.xml"
    "/Users/sakshamgarg/ICARUS-OBC/build-fprime-automatic-native/ICARUS/Top/ICARUSTopologyDictionary.json"
    )
endif()

