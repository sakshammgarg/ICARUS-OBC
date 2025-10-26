set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/NandFlash.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/NandFlash.cpp"
)

register_fprime_module()

set(MOD_DEPS
    ICARUS/Types
)
