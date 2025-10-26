module ICARUS {
    
    # ---------------------------------------------------------------------- 
    # Defaults
    # ---------------------------------------------------------------------- 
    
    module Default {
        constant QUEUE_SIZE = 10
        constant STACK_SIZE = 64 * 1024
    }
    
    # ---------------------------------------------------------------------- 
    # Custom component instances
    # ---------------------------------------------------------------------- 
    
    instance comms: ICARUS.Comms base id 0x0100 \
        queue size Default.QUEUE_SIZE \
        stack size Default.STACK_SIZE \
        priority 50
    
    instance mcu: ICARUS.Microcontroller base id 0x0200 \
        queue size Default.QUEUE_SIZE \
        stack size Default.STACK_SIZE \
        priority 49
    
    instance flash: ICARUS.NandFlash base id 0x0300 \
        queue size Default.QUEUE_SIZE \
        stack size Default.STACK_SIZE \
        priority 48
    
    instance adcs: ICARUS.ADCS base id 0x0400 \
        queue size Default.QUEUE_SIZE \
        stack size Default.STACK_SIZE \
        priority 47
    
    # ---------------------------------------------------------------------- 
    # Standard F´ component instances
    # ---------------------------------------------------------------------- 
    
    instance cmdDisp: Svc.CommandDispatcher base id 0x0500 \
        queue size 20
    
    instance eventLogger: Svc.ActiveLogger base id 0x0600 \
        queue size 100
    
    instance timeComp: Svc.PosixTime base id 0x0700
    
    instance tlmSend: Svc.TlmChan base id 0x0800 \
        queue size 100
    
    instance textLogger: Svc.PassiveTextLogger base id 0x0900
    
    # ---------------------------------------------------------------------- 
    # Communication driver
    # ---------------------------------------------------------------------- 
    
    instance comDriver: Drv.TcpClient base id 0x0A00
}
