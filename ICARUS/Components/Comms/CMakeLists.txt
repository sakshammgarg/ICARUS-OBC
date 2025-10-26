set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/Comms.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/Comms.cpp"
)

register_fprime_module()

set(MOD_DEPS
    ICARUS/Types
)
