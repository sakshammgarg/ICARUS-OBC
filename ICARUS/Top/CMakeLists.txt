set(SOURCE_FILES
    "${CMAKE_CURRENT_LIST_DIR}/topology.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/instances.fpp"
    "${CMAKE_CURRENT_LIST_DIR}/ICARUSTopologyDefs.cpp"
    "${CMAKE_CURRENT_LIST_DIR}/Main.cpp"
)

register_fprime_deployment()

set(MOD_DEPS
    ICARUS/Components/Comms
    ICARUS/Components/Microcontroller
    ICARUS/Components/NandFlash
    ICARUS/Components/ADCS
    ICARUS/Types
)
