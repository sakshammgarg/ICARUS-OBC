#ifndef ICARUS_ADCS_HPP
#define ICARUS_ADCS_HPP

#include "ICARUS/Components/ADCS/ADCSComponentAc.hpp"

namespace ICARUS {

class ADCS : public ADCSComponentBase {
  public:
    ADCS(const char* const compName);
    ~ADCS();

  private:
    void ADCSCmdIn_handler(FwIndexType portNum, const ICARUS::AltitudeCmdData& cmd) override;
    void adjustAttitudeForAltitude(F32 altitude);
};

}

#endif
