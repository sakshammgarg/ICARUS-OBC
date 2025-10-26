module ICARUS {
    @ Communications subsystem component
    active component Comms {
        
        @ Output port for sending altitude commands
        output port CommsCmdOut: ICARUS.AltitudeCmd
        
        @ Event for command sent
        event CommandSent(
            timestamp: U32 @< Command timestamp
            altitude: F32 @< Target altitude
        ) severity activity high format "Command sent at time={}, altitude={f}m"
        
        @ Command to simulate receiving data
        async command SimulateReceive(altitude: F32)
        
        ###############################################################################
        # Standard AC Ports: Required for Channels, Events, Commands, and Parameters
        ###############################################################################
        @ Port for requesting the current time
        time get port timeCaller
        @ Port for sending command registrations
        command reg port cmdRegOut
        @ Port for receiving commands
        command recv port cmdIn
        @ Port for sending command responses
        command resp port cmdResponseOut
        @ Port for sending textual representation of events
        text event port logTextOut
        @ Port for sending events to downlink
        event port logOut
    }
}
