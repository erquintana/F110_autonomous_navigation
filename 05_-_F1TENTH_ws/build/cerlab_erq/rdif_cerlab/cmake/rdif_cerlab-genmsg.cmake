# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(WARNING "Invoking generate_messages() without having added any message or service file before.
You should either add add_message_files() and/or add_service_files() calls or remove the invocation of generate_messages().")
message(STATUS "rdif_cerlab: 0 messages, 0 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Itf2_msgs:/opt/ros/noetic/share/tf2_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rdif_cerlab_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_cpp(rdif_cerlab
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rdif_cerlab
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rdif_cerlab_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rdif_cerlab_generate_messages rdif_cerlab_generate_messages_cpp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(rdif_cerlab_gencpp)
add_dependencies(rdif_cerlab_gencpp rdif_cerlab_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rdif_cerlab_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_eus(rdif_cerlab
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rdif_cerlab
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rdif_cerlab_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rdif_cerlab_generate_messages rdif_cerlab_generate_messages_eus)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(rdif_cerlab_geneus)
add_dependencies(rdif_cerlab_geneus rdif_cerlab_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rdif_cerlab_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_lisp(rdif_cerlab
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rdif_cerlab
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rdif_cerlab_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rdif_cerlab_generate_messages rdif_cerlab_generate_messages_lisp)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(rdif_cerlab_genlisp)
add_dependencies(rdif_cerlab_genlisp rdif_cerlab_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rdif_cerlab_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_nodejs(rdif_cerlab
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rdif_cerlab
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rdif_cerlab_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rdif_cerlab_generate_messages rdif_cerlab_generate_messages_nodejs)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(rdif_cerlab_gennodejs)
add_dependencies(rdif_cerlab_gennodejs rdif_cerlab_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rdif_cerlab_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services

### Generating Module File
_generate_module_py(rdif_cerlab
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rdif_cerlab
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rdif_cerlab_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rdif_cerlab_generate_messages rdif_cerlab_generate_messages_py)

# add dependencies to all check dependencies targets

# target for backward compatibility
add_custom_target(rdif_cerlab_genpy)
add_dependencies(rdif_cerlab_genpy rdif_cerlab_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rdif_cerlab_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rdif_cerlab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rdif_cerlab
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(rdif_cerlab_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(rdif_cerlab_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(rdif_cerlab_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rdif_cerlab_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET tf2_msgs_generate_messages_cpp)
  add_dependencies(rdif_cerlab_generate_messages_cpp tf2_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rdif_cerlab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rdif_cerlab
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(rdif_cerlab_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(rdif_cerlab_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(rdif_cerlab_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rdif_cerlab_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET tf2_msgs_generate_messages_eus)
  add_dependencies(rdif_cerlab_generate_messages_eus tf2_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rdif_cerlab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rdif_cerlab
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(rdif_cerlab_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(rdif_cerlab_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(rdif_cerlab_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rdif_cerlab_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET tf2_msgs_generate_messages_lisp)
  add_dependencies(rdif_cerlab_generate_messages_lisp tf2_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rdif_cerlab)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rdif_cerlab
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(rdif_cerlab_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(rdif_cerlab_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(rdif_cerlab_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rdif_cerlab_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET tf2_msgs_generate_messages_nodejs)
  add_dependencies(rdif_cerlab_generate_messages_nodejs tf2_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rdif_cerlab)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rdif_cerlab\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rdif_cerlab
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(rdif_cerlab_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(rdif_cerlab_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(rdif_cerlab_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rdif_cerlab_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET tf2_msgs_generate_messages_py)
  add_dependencies(rdif_cerlab_generate_messages_py tf2_msgs_generate_messages_py)
endif()
