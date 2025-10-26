#ifndef ICARUS_TOPOLOGY_DEFS_HPP
#define ICARUS_TOPOLOGY_DEFS_HPP
#include "Fw/Types/MallocAllocator.hpp"
// Component includes
#include <ICARUS/Components/Comms/Comms.hpp>
#include <ICARUS/Components/Microcontroller/Microcontroller.hpp>
#include <ICARUS/Components/NandFlash/NandFlash.hpp>
#include <ICARUS/Components/ADCS/ADCS.hpp>

namespace ICARUS {

// State for topology construction
struct TopologyState {
    TopologyState() {}
};

}

// Include AFTER TopologyState is defined
#include "ICARUS/Top/ICARUSTopologyAc.hpp"

namespace ICARUS {

/**
 * \brief configure/setup components in project-specific way
 */
void configureTopology();

/**
 * \brief create and initialize all components
 */
void setupTopology(const TopologyState& state);

/**
 * \brief tear down and delete all components
 */
void teardownTopology(const TopologyState& state);

}

#endif
