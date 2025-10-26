module ICARUS {
    @ Altitude command port
    port AltitudeCmd(
        cmd: AltitudeCmdData @< The altitude command data
    )
    
    @ Altitude command data structure
    struct AltitudeCmdData {
        timestamp: U32 @< Unix timestamp of command generation
        altitude: F32 @< Target altitude in meters
    }
}
