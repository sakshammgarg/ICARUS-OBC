#include <ICARUS/Components/Comms/Comms.hpp>
#include <Fw/Types/BasicTypes.hpp>
#include <cstdio>

namespace ICARUS {

Comms::Comms(const char* const compName) : CommsComponentBase(compName) {
    printf("[COMMS] Component constructed: %s\n", compName);
}

Comms::~Comms() {}

void Comms::SimulateReceive_cmdHandler(FwOpcodeType opCode, U32 cmdSeq, F32 altitude) {
    printf("[COMMS] *** COMMAND HANDLER CALLED *** altitude=%.2f\n", altitude);
    
    ICARUS::AltitudeCmdData cmd;
    
    // Get current time
    Fw::Time timestamp = this->getTime();
    
    // Use setters to populate the struct
    cmd.settimestamp(timestamp.getSeconds());
    cmd.setaltitude(altitude);
    
    printf("[COMMS] Sending command via CommsCmdOut port\n");
    // Send command via output port
    if (this->isConnected_CommsCmdOut_OutputPort(0)) {
        this->CommsCmdOut_out(0, cmd);
        printf("[COMMS] Command sent successfully\n");
    } else {
        printf("[COMMS] WARNING: CommsCmdOut port not connected!\n");
    }
    
    printf("[COMMS] Logging event\n");
    // Log event - use getters to read values
    this->log_ACTIVITY_HI_CommandSent(cmd.gettimestamp(), cmd.getaltitude());
    
    printf("[COMMS] Sending command response\n");
    // Send command response
    this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
    
    printf("[COMMS] Command handler complete!\n");
}

}
