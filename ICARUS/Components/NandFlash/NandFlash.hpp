#ifndef ICARUS_NandFlash_HPP
#define ICARUS_NandFlash_HPP

#include "ICARUS/Components/NandFlash/NandFlashComponentAc.hpp"
#include <vector>

namespace ICARUS {

class NandFlash : public NandFlashComponentBase {
  public:
    NandFlash(const char* const compName);
    ~NandFlash();

  private:
    void FlashCmdIn_handler(FwIndexType portNum, const ICARUS::AltitudeCmdData& cmd) override;
    
    std::vector<ICARUS::AltitudeCmdData> buffer;
};

}

#endif
