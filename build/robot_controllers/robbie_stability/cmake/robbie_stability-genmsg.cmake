# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robbie_stability: 3 messages, 0 services")

set(MSG_I_FLAGS "-Irobbie_stability:/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Igazebo_msgs:/opt/ros/indigo/share/gazebo_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Itrajectory_msgs:/opt/ros/indigo/share/trajectory_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robbie_stability_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg" NAME_WE)
add_custom_target(_robbie_stability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robbie_stability" "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg" "std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg" NAME_WE)
add_custom_target(_robbie_stability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robbie_stability" "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg" "robbie_stability/Contact:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg" NAME_WE)
add_custom_target(_robbie_stability_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robbie_stability" "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg" "geometry_msgs/Point:geometry_msgs/Vector3:std_msgs/Header:geometry_msgs/Quaternion:gazebo_msgs/LinkStates:geometry_msgs/Pose:geometry_msgs/Twist"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg"
  "${MSG_I_FLAGS}"
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability
)
_generate_msg_cpp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability
)
_generate_msg_cpp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/gazebo_msgs/cmake/../msg/LinkStates.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability
)

### Generating Services

### Generating Module File
_generate_module_cpp(robbie_stability
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robbie_stability_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robbie_stability_generate_messages robbie_stability_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_cpp _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_cpp _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_cpp _robbie_stability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_stability_gencpp)
add_dependencies(robbie_stability_gencpp robbie_stability_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_stability_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg"
  "${MSG_I_FLAGS}"
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability
)
_generate_msg_lisp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability
)
_generate_msg_lisp(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/gazebo_msgs/cmake/../msg/LinkStates.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability
)

### Generating Services

### Generating Module File
_generate_module_lisp(robbie_stability
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robbie_stability_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robbie_stability_generate_messages robbie_stability_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_lisp _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_lisp _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_lisp _robbie_stability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_stability_genlisp)
add_dependencies(robbie_stability_genlisp robbie_stability_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_stability_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg"
  "${MSG_I_FLAGS}"
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability
)
_generate_msg_py(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability
)
_generate_msg_py(robbie_stability
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/gazebo_msgs/cmake/../msg/LinkStates.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Twist.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability
)

### Generating Services

### Generating Module File
_generate_module_py(robbie_stability
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robbie_stability_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robbie_stability_generate_messages robbie_stability_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_py _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/ContactLinkStates.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_py _robbie_stability_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_stability/msg/LinkStatesStamped.msg" NAME_WE)
add_dependencies(robbie_stability_generate_messages_py _robbie_stability_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_stability_genpy)
add_dependencies(robbie_stability_genpy robbie_stability_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_stability_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_stability
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robbie_stability_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(robbie_stability_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(robbie_stability_generate_messages_cpp gazebo_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_stability
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robbie_stability_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(robbie_stability_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(robbie_stability_generate_messages_lisp gazebo_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability)
  install(CODE "execute_process(COMMAND \"/usr/local/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_stability
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robbie_stability_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(robbie_stability_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(robbie_stability_generate_messages_py gazebo_msgs_generate_messages_py)
