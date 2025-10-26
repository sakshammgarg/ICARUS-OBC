# ICARUS-OBC 🛰️

**Integrated Communication And Reconnaissance CubeSat - On-Board Computer**

A CubeSat flight software system built with NASA's F´ (F Prime) framework, designed for satellite operations including communications, attitude determination and control, data storage, and microcontroller management.

## 🌟 Features

- **Modular Architecture**: Four custom components handling distinct CubeSat subsystems
- **Communication System**: Handles ground-station communication and data relay
- **Attitude Determination & Control System (ADCS)**: Manages CubeSat orientation and pointing
- **NAND Flash Storage**: Persistent data storage for mission-critical information
- **Microcontroller Interface**: Hardware abstraction layer for sensor and actuator control
- **Ground Data System (GDS)**: Web-based interface for commanding and telemetry monitoring

## 🏗️ System Architecture
```
╔═══════════════════════════════════════════╗
║      Ground Data System (GDS)             ║
║         Web Interface                     ║
╚════════════════════╤══════════════════════╝
                     │ TCP/IP
                     ▼
╔═══════════════════════════════════════════╗
║       ICARUS Flight Software              ║
╠═══════════════════════════════════════════╣
║                                           ║
║  ┌───────┐   ┌───────┐   ┌───────┐        ║
║  │ Comms │──▶│  MCU  │──▶│ Flash │──┐     ║
║  └───────┘   └───────┘   └───────┘  │     ║
║                                     ▼     ║
║                                ┌───────┐  ║
║                                │ ADCS  │  ║ 
║                                └───────┘  ║
╚═══════════════════════════════════════════╝
```

### Command Flow

1. **Ground Station** sends commands via TCP/IP connection
2. **Comms Component** receives and validates incoming data
3. **Microcontroller** processes and routes commands
4. **NAND Flash** stores mission-critical data
5. **ADCS** executes attitude control commands

### Component Flow

1. **Comms** → Receives ground commands and simulates data reception
2. **Microcontroller** → Processes commands and interfaces with hardware
3. **NAND Flash** → Stores data and forwards critical commands
4. **ADCS** → Receives altitude commands for attitude control

## 🚀 Getting Started

### Prerequisites

- **F´ Framework**: Version 3.x
- **Python**: 3.7 or higher
- **CMake**: 3.16 or higher
- **GCC/Clang**: C++11 compatible compiler
- **macOS** or **Linux** (tested on macOS Darwin)

### Installation

1. **Clone the repository**
```bash
   git clone https://github.com/yourusername/ICARUS-OBC.git
   cd ICARUS-OBC
```

2. **Set up F´ virtual environment**
```bash
   python3 -m venv fprime-env
   source fprime-env/bin/activate  # On Windows: fprime-env\Scripts\activate
   pip install fprime-tools fprime-gds
```

3. **Initialize F´ submodule**
```bash
   git submodule update --init --recursive
```

4. **Build the project**
```bash
   fprime-util build
```

## 🎮 Usage

### Running the Flight Software

Start the ICARUS application:
```bash
./build-artifacts/Darwin/ICARUS_Top/bin/ICARUS_Top
```

Or specify a custom port:
```bash
./build-artifacts/Darwin/ICARUS_Top/bin/ICARUS_Top -p 50000 -a 127.0.0.1
```

### Launching the Ground Data System

In a separate terminal:
```bash
fprime-gds -n --dictionary ./build-artifacts/Darwin/ICARUS_Top/dict/ICARUSTopologyDictionary.xml
```

Access the GDS web interface at: **http://127.0.0.1:5000**

### Sending Commands

1. Navigate to the **Commanding** tab in GDS
2. Select `ICARUS.comms.SimulateReceive`
3. Enter altitude value (e.g., `350.0`)
4. Click **Send Command**

### Viewing Events

Navigate to the **Events** tab to see:
- Command execution confirmations
- System status messages
- Component activity logs

## 📦 Project Structure
```
ICARUS-OBC/
├── ICARUS/
│   ├── Components/
│   │   ├── ADCS/              # Attitude Determination & Control
│   │   ├── Comms/             # Communications subsystem
│   │   ├── Microcontroller/   # Hardware interface
│   │   └── NandFlash/         # Data storage
│   ├── Types/                 # Custom data types
│   └── Top/                   # Topology definition
│       ├── topology.fpp       # System connections
│       ├── instances.fpp      # Component instances
│       ├── Main.cpp           # Application entry point
│       └── ICARUSTopologyDefs.cpp
├── lib/fprime/                # F´ framework (submodule)
├── build-artifacts/           # Build outputs
└── CMakeLists.txt
```

## 🔧 Components

### Communications (`Comms`)
- **Purpose**: Ground-station communication interface
- **Commands**: 
  - `SimulateReceive(altitude)`: Simulate receiving altitude data
  - `GetStatus()`: Query component status
- **Events**: 
  - `CommandSent`: Logs when altitude commands are forwarded

### Microcontroller (`Microcontroller`)
- **Purpose**: Hardware abstraction and sensor/actuator interface
- **Input**: Altitude commands from Comms
- **Output**: Processed commands to Flash storage

### NAND Flash (`NandFlash`)
- **Purpose**: Persistent data storage
- **Input**: Data from Microcontroller
- **Output**: Critical commands to ADCS

### ADCS (`ADCS`)
- **Purpose**: CubeSat attitude control
- **Input**: Altitude commands for orientation control
- **Telemetry**: Attitude state information

## 🛠️ Development

### Building Individual Components
```bash
cd ICARUS/Components/Comms
fprime-util build
```

### Adding New Components

1. Create component specification in `.fpp` format
2. Generate implementation templates:
```bash
   fprime-util impl
```
3. Implement component logic in generated `.cpp` files
4. Add component instance to `instances.fpp`
5. Wire connections in `topology.fpp`
6. Rebuild project

### Running Tests
```bash
fprime-util check
```

## 📊 Telemetry & Events

The system generates events for:
- Command execution status
- Component state changes
- Error conditions
- System health monitoring

Events are viewable in real-time through the GDS Events tab.

## 🐛 Troubleshooting

### Events not showing in GDS
- Verify event ports are connected in `topology.fpp`
- Check event severity filters in GDS (enable "Activity High" and "Activity Low")
- Ensure ICARUS application is running and connected

### Cannot connect to GDS
- Verify ICARUS is running on the expected port (default: 50000)
- Check firewall settings
- Ensure GDS dictionary path is correct

### Build errors
```bash
# Clean and rebuild
fprime-util build --clean
fprime-util build
```

## 🙏 Acknowledgments

- **NASA JPL** for the F´ framework
- F´ community and documentation
- Open-source spaceflight software community

## 🗺️ Roadmap

- [ ] Hardware-in-the-loop testing
- [ ] Enhanced ADCS algorithms
- [ ] Real sensor integration
- [ ] Command sequencing
- [ ] Autonomous fault detection and recovery
- [ ] Mission-specific payload interfaces

---
