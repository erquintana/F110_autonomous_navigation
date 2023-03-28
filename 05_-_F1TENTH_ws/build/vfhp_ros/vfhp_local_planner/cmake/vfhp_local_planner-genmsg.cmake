# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vfhp_local_planner: 1 messages, 1 services")

set(MSG_I_FLAGS "-Ivfhp_local_planner:/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vfhp_local_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_custom_target(_vfhp_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vfhp_local_planner" "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_custom_target(_vfhp_local_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vfhp_local_planner" "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfhp_local_planner
)

### Generating Services
_generate_srv_cpp(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfhp_local_planner
)

### Generating Module File
_generate_module_cpp(vfhp_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfhp_local_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vfhp_local_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vfhp_local_planner_generate_messages vfhp_local_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_cpp _vfhp_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_cpp _vfhp_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfhp_local_planner_gencpp)
add_dependencies(vfhp_local_planner_gencpp vfhp_local_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfhp_local_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfhp_local_planner
)

### Generating Services
_generate_srv_eus(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfhp_local_planner
)

### Generating Module File
_generate_module_eus(vfhp_local_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfhp_local_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vfhp_local_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vfhp_local_planner_generate_messages vfhp_local_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_eus _vfhp_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_eus _vfhp_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfhp_local_planner_geneus)
add_dependencies(vfhp_local_planner_geneus vfhp_local_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfhp_local_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfhp_local_planner
)

### Generating Services
_generate_srv_lisp(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfhp_local_planner
)

### Generating Module File
_generate_module_lisp(vfhp_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfhp_local_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vfhp_local_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vfhp_local_planner_generate_messages vfhp_local_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_lisp _vfhp_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_lisp _vfhp_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfhp_local_planner_genlisp)
add_dependencies(vfhp_local_planner_genlisp vfhp_local_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfhp_local_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfhp_local_planner
)

### Generating Services
_generate_srv_nodejs(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfhp_local_planner
)

### Generating Module File
_generate_module_nodejs(vfhp_local_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfhp_local_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vfhp_local_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vfhp_local_planner_generate_messages vfhp_local_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_nodejs _vfhp_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_nodejs _vfhp_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfhp_local_planner_gennodejs)
add_dependencies(vfhp_local_planner_gennodejs vfhp_local_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfhp_local_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner
)

### Generating Services
_generate_srv_py(vfhp_local_planner
  "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner
)

### Generating Module File
_generate_module_py(vfhp_local_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vfhp_local_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vfhp_local_planner_generate_messages vfhp_local_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/msg/Histogram.msg" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_py _vfhp_local_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/raqun/Documents/Proyecto_electrico/ackerman-f1tenth-competition/05_-_F1TENTH_ws/src/vfhp_ros/vfhp_local_planner/srv/SetGoal.srv" NAME_WE)
add_dependencies(vfhp_local_planner_generate_messages_py _vfhp_local_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vfhp_local_planner_genpy)
add_dependencies(vfhp_local_planner_genpy vfhp_local_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vfhp_local_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfhp_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vfhp_local_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vfhp_local_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfhp_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vfhp_local_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vfhp_local_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfhp_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vfhp_local_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vfhp_local_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfhp_local_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vfhp_local_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vfhp_local_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vfhp_local_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vfhp_local_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
