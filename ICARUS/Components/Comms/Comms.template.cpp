// ======================================================================
// \title  Comms.cpp
// \author sakshamgarg
// \brief  cpp file for Comms component implementation class
// ======================================================================

#include "ICARUS/Components/Comms/Comms.hpp"
#include "FpConfig.hpp"

namespace ICARUS {

// ----------------------------------------------------------------------
// Component construction and destruction
// ----------------------------------------------------------------------

Comms ::Comms(const char *const compName) : CommsComponentBase(compName) {}

Comms ::~Comms() {}

// ----------------------------------------------------------------------
// Handler implementations for commands
// ----------------------------------------------------------------------

void Comms ::SimulateReceive_cmdHandler(FwOpcodeType opCode, U32 cmdSeq,
                                        F32 altitude) {
  // TODO
  this->cmdResponse_out(opCode, cmdSeq, Fw::CmdResponse::OK);
}

} // namespace ICARUS
