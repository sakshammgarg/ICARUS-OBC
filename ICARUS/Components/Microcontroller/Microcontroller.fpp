module ICARUS {
    @ Microcontroller routing component
    active component Microcontroller {
        
        @ Input port for receiving commands from Comms
        async input port MicrocontrollerIn: ICARUS.AltitudeCmd
        
        @ Output port for forwarding commands to NAND Flash
        output port MicrocontrollerOut: ICARUS.AltitudeCmd
        
        @ Event for valid command routed
        event CommandRouted(
            timestamp: U32 @< Command timestamp
        ) severity activity low format "Command routed at time={}"
        
        @ Event for invalid altitude
        event InvalidAltitude(
            altitude: F32 @< Invalid altitude value
        ) severity warning high format "Invalid altitude received: {f}"
        
        ###############################################################################
        # Standard AC Ports
        ###############################################################################
        time get port timeCaller
        event port logOut
        text event port logTextOut
    }
}
