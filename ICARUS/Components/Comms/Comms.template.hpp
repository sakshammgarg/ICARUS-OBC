// ======================================================================
// \title  Comms.hpp
// \author sakshamgarg
// \brief  hpp file for Comms component implementation class
// ======================================================================

#ifndef ICARUS_Comms_HPP
#define ICARUS_Comms_HPP

#include "ICARUS/Components/Comms/CommsComponentAc.hpp"

namespace ICARUS {

class Comms : public CommsComponentBase {

public:
  // ----------------------------------------------------------------------
  // Component construction and destruction
  // ----------------------------------------------------------------------

  //! Construct Comms object
  Comms(const char *const compName //!< The component name
  );

  //! Destroy Comms object
  ~Comms();

PRIVATE:
  // ----------------------------------------------------------------------
  // Handler implementations for commands
  // ----------------------------------------------------------------------

  //! Handler implementation for command SimulateReceive
  //!
  //! Command to simulate receiving data
  void SimulateReceive_cmdHandler(FwOpcodeType opCode, //!< The opcode
                                  U32 cmdSeq, //!< The command sequence number
                                  F32 altitude) override;
};

} // namespace ICARUS

#endif
