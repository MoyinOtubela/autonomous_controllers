# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robbie_auto: 1 messages, 0 services")

set(MSG_I_FLAGS "-Irobbie_auto:/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robbie_auto_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg" NAME_WE)
add_custom_target(_robbie_auto_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robbie_auto" "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robbie_auto
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_auto
)

### Generating Services

### Generating Module File
_generate_module_cpp(robbie_auto
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_auto
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robbie_auto_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robbie_auto_generate_messages robbie_auto_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_auto_generate_messages_cpp _robbie_auto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_auto_gencpp)
add_dependencies(robbie_auto_gencpp robbie_auto_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_auto_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robbie_auto
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_auto
)

### Generating Services

### Generating Module File
_generate_module_lisp(robbie_auto
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_auto
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robbie_auto_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robbie_auto_generate_messages robbie_auto_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_auto_generate_messages_lisp _robbie_auto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_auto_genlisp)
add_dependencies(robbie_auto_genlisp robbie_auto_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_auto_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robbie_auto
  "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_auto
)

### Generating Services

### Generating Module File
_generate_module_py(robbie_auto
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_auto
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robbie_auto_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robbie_auto_generate_messages robbie_auto_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/moyin/dev/autonomous_controllers/src/robot_controllers/robbie_auto/msg/Contact.msg" NAME_WE)
add_dependencies(robbie_auto_generate_messages_py _robbie_auto_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robbie_auto_genpy)
add_dependencies(robbie_auto_genpy robbie_auto_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robbie_auto_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_auto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robbie_auto
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_auto)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robbie_auto
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_auto)
  install(CODE "execute_process(COMMAND \"/usr/local/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_auto\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robbie_auto
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
