#include <ICARUS/Components/ADCS/ADCS.hpp>
#include <stdio.h>

namespace ICARUS {

ADCS::ADCS(const char* const compName) 
    : ADCSComponentBase(compName) {}

ADCS::~ADCS() {}

void ADCS::ADCSCmdIn_handler(FwIndexType portNum, 
                              const ICARUS::AltitudeCmdData& cmd) {
    // Use getters to access data
    F32 altitude = cmd.getaltitude();
    U32 timestamp = cmd.gettimestamp();
    
    // Update telemetry channel
    this->tlmWrite_LastAltitudeCmd(altitude);
    
    // Log to console for verification
    printf("[ADCS] Received altitude command: %.2f m at timestamp %u\n",
           altitude, timestamp);
    
    // Trigger attitude adjustment
    this->adjustAttitudeForAltitude(altitude);
    
    // Send acknowledgment event
    this->log_ACTIVITY_HI_AltitudeCommandReceived(timestamp, altitude);
}

void ADCS::adjustAttitudeForAltitude(F32 altitude) {
    // Placeholder for actual attitude adjustment logic
    printf("[ADCS] Adjusting attitude for altitude: %.2f m\n", altitude);
}

}
