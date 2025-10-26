module ICARUS {
    @ Altitude command serializable
    struct AltitudeCmd {
        timestamp: U32 @< Unix timestamp of command generation
        altitude: F32 @< Target altitude in meters
    }
}
