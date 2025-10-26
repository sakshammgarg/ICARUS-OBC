#include <ICARUS/Components/NandFlash/NandFlash.hpp>

namespace ICARUS {

NandFlash::NandFlash(const char* const compName) 
    : NandFlashComponentBase(compName) {}

NandFlash::~NandFlash() {}

void NandFlash::FlashCmdIn_handler(FwIndexType portNum, 
                                    const ICARUS::AltitudeCmdData& cmd) {
    // Append to internal buffer
    this->buffer.push_back(cmd);
    
    // Update telemetry with buffer size
    this->tlmWrite_BufferSize(static_cast<U32>(this->buffer.size()));
    
    // Forward command to ADCS
    if (this->isConnected_FlashCmdOut_OutputPort(0)) {
        this->FlashCmdOut_out(0, cmd);
    }
    
    // Log storage event - use getter for timestamp
    this->log_ACTIVITY_LO_CommandStored(cmd.gettimestamp(), 
                                        static_cast<U32>(this->buffer.size()));
}

}
