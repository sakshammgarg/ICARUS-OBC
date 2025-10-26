module ICARUS {
    
    @ ICARUS deployment topology
    topology ICARUS {
        
        # ---------------------------------------------------------------------- 
        # Instances
        # ---------------------------------------------------------------------- 
        
        instance comms
        instance mcu
        instance flash
        instance adcs
        
        instance cmdDisp
        instance eventLogger
        instance timeComp
        instance tlmSend
        instance textLogger
        
        instance comDriver
        
        # ---------------------------------------------------------------------- 
        # Pattern graph specifiers
        # ---------------------------------------------------------------------- 
        
        command connections instance cmdDisp
        
        event connections instance eventLogger
        
        telemetry connections instance tlmSend
        
        text event connections instance textLogger
        
        time connections instance timeComp
        
        # ---------------------------------------------------------------------- 
        # Direct graph specifiers
        # ---------------------------------------------------------------------- 
        
        # Custom altitude command flow between components
        connections AltitudeCommandFlow {
            comms.CommsCmdOut -> mcu.MicrocontrollerIn
            mcu.MicrocontrollerOut -> flash.FlashCmdIn
            flash.FlashCmdOut -> adcs.ADCSCmdIn
        }
        
        # Manually connect standard ports for Comms only
        connections CommsStandardPorts {
            # Command ports
            comms.cmdRegOut -> cmdDisp.compCmdReg
            cmdDisp.compCmdSend -> comms.cmdIn
            comms.cmdResponseOut -> cmdDisp.compCmdStat
            
            # Event ports
            comms.logOut -> eventLogger.LogRecv
            comms.logTextOut -> textLogger.TextLogger
            
            # Time port
            comms.timeCaller -> timeComp.timeGetPort
        }
    }
}
