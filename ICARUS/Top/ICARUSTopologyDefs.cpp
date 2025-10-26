#include <ICARUS/Top/ICARUSTopologyDefs.hpp>
#include <ICARUS/Top/ICARUSTopologyAc.hpp>

// Necessary project-specified types
#include <Fw/Types/MallocAllocator.hpp>
#include <Os/Console.hpp>

// Allows easy reference to objects in FPP/autocoder required namespaces
using namespace ICARUS;

// Instantiate a system logger that will handle Fw::Logger::log calls
Os::Console logger;

// Malloc-based allocator for components that need to allocate memory
Fw::MallocAllocator mallocator;

// Public functions for use in main program
namespace ICARUS {

/**
 * \brief configure/setup components in project-specific way
 */
void configureTopology() {
    // Nothing to configure for now
}

void setupTopology(const TopologyState& state) {
    // Autocoded initialization
    initComponents(state);
    
    // Autocoded id setup
    setBaseIds();
    
    // Autocoded connection wiring
    connectComponents();
    
    // Autocoded command registration
    regCommands();
    
    // Project-specific component configuration
    configureTopology();
    
    // Autocoded task kick-off (active components)
    startTasks(state);
    
    printf("ICARUS topology setup complete!\n");
}

void teardownTopology(const TopologyState& state) {
    // Autocoded task clean-up
    stopTasks(state);
    freeThreads(state);
}

}  // namespace ICARUS
