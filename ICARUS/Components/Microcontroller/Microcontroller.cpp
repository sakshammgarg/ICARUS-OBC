#include <ICARUS/Components/Microcontroller/Microcontroller.hpp>

namespace ICARUS {

Microcontroller::Microcontroller(const char* const compName) 
    : MicrocontrollerComponentBase(compName) {}

Microcontroller::~Microcontroller() {}

void Microcontroller::MicrocontrollerIn_handler(FwIndexType portNum, 
                                                 const ICARUS::AltitudeCmdData& cmd) {
    // Use getter to access altitude
    F32 altitude = cmd.getaltitude();
    
    // Validate altitude (0 to 1000 meters)
    if (altitude >= 0.0f && altitude <= 1000.0f) {
        // Forward valid command to NAND Flash
        if (this->isConnected_MicrocontrollerOut_OutputPort(0)) {
            this->MicrocontrollerOut_out(0, cmd);
        }
        
        // Log routing - use getter for timestamp
        this->log_ACTIVITY_LO_CommandRouted(cmd.gettimestamp());
    } else {
        // Log warning for invalid altitude
        this->log_WARNING_HI_InvalidAltitude(altitude);
    }
}

}
