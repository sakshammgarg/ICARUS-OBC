#ifndef ICARUS_Comms_HPP
#define ICARUS_Comms_HPP

#include "ICARUS/Components/Comms/CommsComponentAc.hpp"

namespace ICARUS {

class Comms : public CommsComponentBase {
  public:
    Comms(const char* const compName);
    ~Comms();

  private:
    void SimulateReceive_cmdHandler(FwOpcodeType opCode, U32 cmdSeq, F32 altitude) override;
};

}

#endif
