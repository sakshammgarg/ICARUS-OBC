set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/ADCS.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/ADCS.cpp"
)

register_fprime_module()

set(MOD_DEPS
    ICARUS/Types
)
