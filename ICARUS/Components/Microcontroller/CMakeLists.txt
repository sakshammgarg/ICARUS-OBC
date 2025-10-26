set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/Microcontroller.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/Microcontroller.cpp"
)

register_fprime_module()

set(MOD_DEPS
    ICARUS/Types
)
