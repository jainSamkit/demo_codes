# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "commander: 0 messages, 6 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(commander_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" ""
)

get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" ""
)

get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" ""
)

get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" ""
)

get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" ""
)

get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_custom_target(_commander_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "commander" "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)
_generate_srv_cpp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
)

### Generating Module File
_generate_module_cpp(commander
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(commander_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(commander_generate_messages commander_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_cpp _commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commander_gencpp)
add_dependencies(commander_gencpp commander_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commander_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)
_generate_srv_eus(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
)

### Generating Module File
_generate_module_eus(commander
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(commander_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(commander_generate_messages commander_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_eus _commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commander_geneus)
add_dependencies(commander_geneus commander_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commander_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)
_generate_srv_lisp(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
)

### Generating Module File
_generate_module_lisp(commander
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(commander_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(commander_generate_messages commander_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_lisp _commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commander_genlisp)
add_dependencies(commander_genlisp commander_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commander_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)
_generate_srv_nodejs(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
)

### Generating Module File
_generate_module_nodejs(commander
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(commander_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(commander_generate_messages commander_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_nodejs _commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commander_gennodejs)
add_dependencies(commander_gennodejs commander_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commander_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)
_generate_srv_py(commander
  "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
)

### Generating Module File
_generate_module_py(commander
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(commander_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(commander_generate_messages commander_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/STOP_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/SAVE_OBS_DATA.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/CANCEL_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/DELETE_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/GET_MAP_INFO.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/darth/Desktop/sc2_ros/src/commander/srv/START_OBS_CAPTURE.srv" NAME_WE)
add_dependencies(commander_generate_messages_py _commander_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(commander_genpy)
add_dependencies(commander_genpy commander_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS commander_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/commander
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(commander_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(commander_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(commander_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/commander
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(commander_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(commander_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(commander_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/commander
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(commander_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(commander_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(commander_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/commander
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(commander_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(commander_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(commander_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/commander
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(commander_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(commander_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(commander_generate_messages_py sensor_msgs_generate_messages_py)
endif()
