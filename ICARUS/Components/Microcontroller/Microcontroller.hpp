#ifndef ICARUS_Microcontroller_HPP
#define ICARUS_Microcontroller_HPP

#include "ICARUS/Components/Microcontroller/MicrocontrollerComponentAc.hpp"

namespace ICARUS {

class Microcontroller : public MicrocontrollerComponentBase {
  public:
    Microcontroller(const char* const compName);
    ~Microcontroller();

  private:
    void MicrocontrollerIn_handler(FwIndexType portNum, const ICARUS::AltitudeCmdData& cmd) override;
};

}

#endif
