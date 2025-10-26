module ICARUS {
    @ Attitude Determination and Control System component
    active component ADCS {
        
        @ Input port for receiving altitude commands
        async input port ADCSCmdIn: ICARUS.AltitudeCmd
        
        @ Telemetry channel for last altitude command
        telemetry LastAltitudeCmd: F32
        
        @ Event for altitude command received
        event AltitudeCommandReceived(
            timestamp: U32 @< Command timestamp
            altitude: F32 @< Target altitude
        ) severity activity high format "Altitude command received at time={}: {f}m"
        
        ###############################################################################
        # Standard AC Ports
        ###############################################################################
        time get port timeCaller
        telemetry port tlmOut
        event port logOut
        text event port logTextOut
    }
}
