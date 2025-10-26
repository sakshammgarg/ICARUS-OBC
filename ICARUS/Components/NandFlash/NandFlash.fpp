module ICARUS {
    @ NAND Flash storage component
    active component NandFlash {
        
        @ Input port for receiving commands from Microcontroller
        async input port FlashCmdIn: ICARUS.AltitudeCmd
        
        @ Output port for forwarding commands to ADCS
        output port FlashCmdOut: ICARUS.AltitudeCmd
        
        @ Telemetry channel for buffer size
        telemetry BufferSize: U32
        
        @ Event for command stored
        event CommandStored(
            timestamp: U32 @< Command timestamp
            bufferSize: U32 @< Current buffer size
        ) severity activity low format "Command stored at time={}, buffer size={}"
        
        ###############################################################################
        # Standard AC Ports
        ###############################################################################
        time get port timeCaller
        telemetry port tlmOut
        event port logOut
        text event port logTextOut
    }
}
