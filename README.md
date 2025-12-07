# ICARUS-OBC 🛰️

**Integrated Communication And Reconnaissance CubeSat - On-Board Computer**

A CubeSat flight software system built with NASA's F´ (F Prime) framework, designed for satellite operations including communications, altitude determination and control, data storage, and microcontroller management.

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

#### All Platforms
- **F´ Framework**: Version 3.x or higher
- **Python**: 3.7 to 3.12 recommended (Python 3.13 requires additional packages)
- **CMake**: 3.16 or higher
- **Git**: For cloning the repository
- **C/C++ Compiler**: GCC, Clang, or MSVC with C++11 support
- **Ninja Build System**: Fast build tool (recommended)

**Note**: Python 3.13 is supported but requires the `legacy-cgi` package due to the removal of the `cgi` module.

#### Platform-Specific Requirements

**Linux (Ubuntu/Debian):**
```bash
sudo apt update
sudo apt install python3-full python3-venv cmake build-essential ninja-build git
```

**Linux (Fedora/RHEL/CentOS):**
```bash
sudo dnf install python3 python3-pip cmake gcc gcc-c++ ninja-build git
```

**macOS:**
```bash
# Install Homebrew if not already installed
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install dependencies
brew install cmake python3 ninja git

# Install Xcode Command Line Tools (for compiler)
xcode-select --install
```

**Windows:**
```powershell
# Install using Chocolatey package manager
choco install python cmake git ninja visualstudio2022buildtools

# Or download and install manually:
# - Python: https://www.python.org/downloads/
# - CMake: https://cmake.org/download/
# - Git: https://git-scm.com/download/win
# - Visual Studio Build Tools: https://visualstudio.microsoft.com/downloads/
# - Ninja: https://github.com/ninja-build/ninja/releases
```

### Installation

#### Step 1: Clone the Repository

**Linux/macOS:**
```bash
git clone https://github.com/sakshammgarg/ICARUS-OBC.git
cd ICARUS-OBC
```

**Windows (Command Prompt or PowerShell):**
```powershell
git clone https://github.com/sakshammgarg/ICARUS-OBC.git
cd ICARUS-OBC
```

**Verification:**
```bash
# Verify you're in the correct directory
pwd          # Linux/macOS
cd           # Windows

# You should see these folders: ICARUS/, lib/, CMakeLists.txt
ls           # Linux/macOS
dir          # Windows
```

#### Step 2: Set Up F´ Virtual Environment

**Linux/macOS:**
```bash
# Create virtual environment
python3 -m venv fprime-env

# Activate virtual environment
source fprime-env/bin/activate

# Upgrade pip (recommended)
pip install --upgrade pip

# Install setuptools (required for Python 3.12+)
pip install setuptools

# Install F´ tools
pip install fprime-tools fprime-gds fprime-fpp-to-xml
```

**Windows (Command Prompt):**
```cmd
# Create virtual environment
python -m venv fprime-env

# Activate virtual environment
fprime-env\Scripts\activate.bat

# Upgrade pip (recommended)
pip install --upgrade pip

# Install setuptools (required for Python 3.12+)
pip install setuptools

# Install F´ tools
pip install fprime-tools fprime-gds fprime-fpp-to-xml
```

**Windows (PowerShell):**
```powershell
# Create virtual environment
python -m venv fprime-env

# Activate virtual environment
fprime-env\Scripts\Activate.ps1

# If you get execution policy error, run:
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Upgrade pip (recommended)
pip install --upgrade pip

# Install setuptools (required for Python 3.12+)
pip install setuptools

# Install F´ tools
pip install fprime-tools fprime-gds fprime-fpp-to-xml
```

#### Step 3: Initialize F´ Submodule

**Important**: Make sure you're in the ICARUS-OBC project directory before running this command.

**All Platforms:**
```bash
# Verify you're in the project directory
pwd    # Linux/macOS - should show: /path/to/ICARUS-OBC
cd     # Windows - should show: C:\path\to\ICARUS-OBC

# If not in project directory, navigate to it
cd ICARUS-OBC  # or full path: cd /path/to/ICARUS-OBC

# Initialize F´ submodule
git submodule update --init --recursive

# Install F´ framework requirements (includes FPP tools)
pip install -r lib/fprime/requirements.txt
```

#### Step 4: Generate and Build the Project

**Method 1: Build from deployment directory**
```bash
# Navigate to the deployment directory
cd ICARUS/Top

# Generate build files
fprime-util generate

# Build the flight software
fprime-util build
```

**Method 2: Build from project root**
```bash
# From ICARUS-OBC directory
fprime-util generate
fprime-util build
```

**Note**: Both methods work equally well. Choose whichever is more convenient for your workflow.

## 🎮 Usage

### Running the Flight Software

**Method 1: Using fprime-gds (launches both app and GDS):**
```bash
# From ICARUS/Top directory
fprime-gds -g none --dictionary ../../build-artifacts/Linux/dict/ICARUSTopologyDictionary.xml
```

**Method 2: Run binary directly then launch GDS separately:**

First, find and run your compiled binary:
```bash
# Find the binary location
find build-artifacts -name "*ICARUS*" -type f -executable

# Run it (adjust path based on what you find)
# Common locations:
./build-artifacts/Linux/ICARUS_Top/bin/ICARUS_Top           # Option 1
./build-fprime-automatic-native/bin/ICARUS.Top              # Option 2
```

**Note**: The exact binary name and location depends on your build configuration. Use the `find` command above to locate it.

**With custom port and address:**
```bash
<path-to-binary> -p 50000 -a 127.0.0.1
```

### Launching the Ground Data System

**From ICARUS/Top directory:**

**Using fprime-gds (recommended - auto-detects paths):**
```bash
fprime-gds
```

**Or with explicit dictionary path:**

*macOS:*
```bash
fprime-gds -n --dictionary ../../build-artifacts/Darwin/dict/ICARUSTopologyDictionary.xml
```

*Linux:*
```bash
fprime-gds -n --dictionary ../../build-artifacts/Linux/dict/ICARUSTopologyDictionary.xml
```

*Windows:*
```powershell
fprime-gds -n --dictionary ..\..\build-artifacts\Windows\dict\ICARUSTopologyDictionary.xml
```

**From project root (ICARUS-OBC directory):**

*macOS:*
```bash
fprime-gds -n --dictionary ./build-artifacts/Darwin/dict/ICARUSTopologyDictionary.xml
```

*Linux:*
```bash
fprime-gds -n --dictionary ./build-artifacts/Linux/dict/ICARUSTopologyDictionary.xml
```

*Windows:*
```powershell
fprime-gds -n --dictionary .\build-artifacts\Windows\dict\ICARUSTopologyDictionary.xml
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
├── build-artifacts/           # Build outputs (platform-specific)
│   ├── Darwin/                # macOS builds
│   ├── Linux/                 # Linux builds
│   └── Windows/               # Windows builds
├── fprime-env/                # Python virtual environment
└── CMakeLists.txt             # Main CMake configuration
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

**All Platforms:**
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

**All Platforms:**
```bash
fprime-util check
```

### Cleaning Build Artifacts

**All Platforms:**
```bash
# Clean specific build
fprime-util build --clean

# Or manually remove build directory
rm -rf build-fprime-automatic-native    # Linux/macOS
rmdir /s build-fprime-automatic-native  # Windows
```

## 📊 Telemetry & Events

The system generates events for:
- Command execution status
- Component state changes
- Error conditions
- System health monitoring

Events are viewable in real-time through the GDS Events tab.

## 🐛 Troubleshooting

### Installation Issues

#### "fatal: not a git repository" error
You're not in the ICARUS-OBC project directory.

**Solution:**
```bash
# Navigate to the project directory
cd ICARUS-OBC

# Or use full path
cd /path/to/ICARUS-OBC          # Linux/macOS
cd C:\path\to\ICARUS-OBC        # Windows

# Verify you're in the right place
ls                               # Linux/macOS
dir                              # Windows
# You should see: ICARUS/, lib/, CMakeLists.txt, .git/

# Then run the git command
git submodule update --init --recursive
```

#### "Directory already exists" error
**Solution:**
```bash
# Option 1: Use existing directory
cd ICARUS-OBC

# Option 2: Remove and re-clone
rm -rf ICARUS-OBC    # Linux/macOS
rmdir /s ICARUS-OBC  # Windows
git clone https://github.com/sakshammgarg/ICARUS-OBC.git
cd ICARUS-OBC
```

**Important**: Verify correct directory structure:
```bash
pwd    # Linux/macOS - should show: /path/to/ICARUS-OBC
cd     # Windows - should show: C:\path\to\ICARUS-OBC
```

#### "externally-managed-environment" error (Ubuntu 23.04+, Debian 12+)
This error occurs on newer Ubuntu/Debian systems that use PEP 668 to prevent breaking system Python packages.

**Solution:**
```bash
# Install required packages
sudo apt install python3-full python3-venv

# Then create virtual environment normally
python3 -m venv fprime-env
source fprime-env/bin/activate
pip install setuptools fprime-tools fprime-gds fprime-fpp-to-xml
```

#### "No such file or directory" when creating venv
The virtual environment is corrupted and needs to be recreated.

**Solution:**
```bash
# Remove corrupted virtual environment
rm -rf fprime-env         # Linux/macOS
rmdir /s fprime-env       # Windows

# Recreate it
python3 -m venv fprime-env    # Linux/macOS
python -m venv fprime-env     # Windows

# Activate and install packages
source fprime-env/bin/activate              # Linux/macOS
fprime-env\Scripts\activate.bat             # Windows (Command Prompt)
fprime-env\Scripts\Activate.ps1             # Windows (PowerShell)

pip install setuptools fprime-tools fprime-gds fprime-fpp-to-xml
```

#### Virtual environment activation fails (Windows PowerShell)
**Error**: "Execution of scripts is disabled on this system"

**Solution:**
```powershell
# Allow script execution for current user
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser

# Then activate
fprime-env\Scripts\Activate.ps1
```

### Build Issues

#### "No module named 'pkg_resources'" error
This occurs with Python 3.12+ as setuptools is no longer included by default.

**Solution (All Platforms):**
```bash
# Activate your virtual environment first
source fprime-env/bin/activate              # Linux/macOS
fprime-env\Scripts\activate.bat             # Windows

# Install setuptools
pip install setuptools

# Try building again
fprime-util build
```

#### "CMake executable 'cmake' not found" error

**Solution:**

**Ubuntu/Debian:**
```bash
sudo apt install cmake
```

**Fedora/RHEL:**
```bash
sudo dnf install cmake
```

**macOS:**
```bash
brew install cmake
```

**Windows:**
```powershell
choco install cmake
# Or download from: https://cmake.org/download/
```

**Verify installation:**
```bash
cmake --version  # Should be 3.16 or higher
```

#### "fprime-fpp is not installed" warning

**Solution (All Platforms):**
```bash
# Activate virtual environment
source fprime-env/bin/activate              # Linux/macOS
fprime-env\Scripts\activate.bat             # Windows

# Install F´ framework requirements (includes all FPP tools)
pip install -r lib/fprime/requirements.txt

# Or install just the FPP compiler
pip install fprime-fpp-to-xml
```

#### "fpp tools not found" or "Could not find fpp-depend" error
The F´ framework requirements (including FPP tools) are not installed.

**Solution (All Platforms):**
```bash
# Navigate to project root if not already there
cd /path/to/ICARUS-OBC

# Activate virtual environment
source fprime-env/bin/activate              # Linux/macOS
fprime-env\Scripts\activate.bat             # Windows

# Install all F´ requirements
pip install -r lib/fprime/requirements.txt

# Clean failed build
rm -rf build-fprime-automatic-native                  # Linux/macOS
rmdir /s build-fprime-automatic-native                # Windows

# Try building again from deployment directory
cd ICARUS/Top
fprime-util generate
fprime-util build
```

#### "ModuleNotFoundError: No module named 'cgi'" error (Python 3.13)
Python 3.13 removed the `cgi` module which is still required by the Cheetah3 template engine used by F´.

**Solution (All Platforms):**
```bash
# Activate virtual environment
source fprime-env/bin/activate              # Linux/macOS
fprime-env\Scripts\activate.bat             # Windows

# Install legacy cgi module
pip install legacy-cgi

# Clean and rebuild
cd ICARUS/Top
rm -rf ../../build-fprime-automatic-native          # Linux/macOS
rmdir /s ..\..\build-fprime-automatic-native        # Windows
fprime-util generate
fprime-util build
```

#### "CMake was unable to find a build program corresponding to Ninja" error

**Solution:**

**Ubuntu/Debian:**
```bash
sudo apt install ninja-build
```

**Fedora/RHEL:**
```bash
sudo dnf install ninja-build
```

**macOS:**
```bash
brew install ninja
```

**Windows:**
```powershell
choco install ninja
```

**After installing, clean and rebuild:**
```bash
rm -rf build-fprime-automatic-native    # Linux/macOS
rmdir /s build-fprime-automatic-native  # Windows
fprime-util generate
fprime-util build
```

#### "CMAKE_C_COMPILER not set" or "CMAKE_CXX_COMPILER not set" error
You don't have C/C++ compilers installed.

**Solution:**

**Ubuntu/Debian:**
```bash
sudo apt install build-essential
```

**Fedora/RHEL:**
```bash
sudo dnf groupinstall "Development Tools"
```

**macOS:**
```bash
xcode-select --install
```

**Windows:**
```powershell
# Install Visual Studio Build Tools
choco install visualstudio2022buildtools
```

#### "ModuleNotFoundError: No module named 'fprime'" during CMake
CMake is using system Python instead of your virtual environment's Python.

**Solution 1: Build from deployment directory (recommended)**
```bash
cd ICARUS/Top
rm -rf build-fprime-automatic-native ../../build-fprime-automatic-native
fprime-util generate
fprime-util build
```

**Solution 2: Set Python path explicitly (Linux/macOS)**
```bash
# Activate virtual environment
source fprime-env/bin/activate

# Verify fprime is available
python3 -c "import fprime; print('fprime found')"

# Set Python executable for CMake
export PYTHON_EXECUTABLE=$(which python3)

# Clean and rebuild
rm -rf build-fprime-automatic-native
fprime-util generate
fprime-util build
```

**Solution 2: Set Python path explicitly (Windows)**
```powershell
# Activate virtual environment
fprime-env\Scripts\activate.bat

# Verify fprime is available
python -c "import fprime; print('fprime found')"

# Set Python executable for CMake
set PYTHON_EXECUTABLE=%cd%\fprime-env\Scripts\python.exe

# Clean and rebuild
rmdir /s build-fprime-automatic-native
fprime-util generate
fprime-util build
```

#### "is outside the F prime project" error
You're running fprime-util from an incorrect directory or missing required packages.

**Solution:**
```bash
# Ensure FPP compiler is installed
pip install fprime-fpp-to-xml

# Try building from deployment directory
cd ICARUS/Top
fprime-util generate
fprime-util build

# If that doesn't work, verify you're in the project root
cd ..  # Should be in ICARUS-OBC/
ls     # Should see: ICARUS/, lib/, CMakeLists.txt
```

#### "build-fprime-automatic-native already exists" error
A previous build attempt left artifacts that need cleaning.

**Solution:**
```bash
# Remove old build directory
rm -rf build-fprime-automatic-native    # Linux/macOS
rmdir /s build-fprime-automatic-native  # Windows

# Try generating again
fprime-util generate
fprime-util build
```

### Runtime Issues

#### Events not showing in GDS
- Verify event ports are connected in `topology.fpp`
- Check event severity filters in GDS (enable "Activity High" and "Activity Low")
- Ensure ICARUS application is running and connected

#### Cannot connect to GDS
- Verify ICARUS is running on the expected port (default: 50000)
- Check firewall settings (allow TCP connections on port 50000 and 5000)
- Ensure GDS dictionary path is correct for your platform

#### Port already in use
**Solution (All Platforms):**
```bash
# Run on a different port
./build-artifacts/<Platform>/bin/ICARUS.Top -p 50001

# Or find and kill the process using the port
# Linux/macOS:
lsof -ti:50000 | xargs kill -9

# Windows:
netstat -ano | findstr :50000
taskkill /PID <PID> /F
```

### Platform-Specific Issues

#### Windows: Long path names cause build failures
**Solution:**
```powershell
# Enable long paths in Windows
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\FileSystem" -Name "LongPathsEnabled" -Value 1 -PropertyType DWORD -Force

# Or clone repository closer to root
cd C:\
git clone https://github.com/sakshammgarg/ICARUS-OBC.git
cd ICARUS-OBC
```

#### macOS: "xcrun: error" messages
**Solution:**
```bash
# Install or reset Xcode Command Line Tools
xcode-select --install

# If that fails, reset the path
sudo xcode-select --reset
```

#### Linux: Permission denied errors
**Solution:**
```bash
# Fix file permissions
chmod +x build-artifacts/Linux/bin/ICARUS.Top

# Or run build with proper permissions
sudo chown -R $USER:$USER .
```

## 🔄 Updating F´ Framework

To update the F´ framework to the latest version:

**All Platforms:**
```bash
# Update submodule
git submodule update --remote lib/fprime

# Rebuild project
cd ICARUS/Top
fprime-util build --clean
fprime-util generate
fprime-util build
```

## 📝 Additional Resources

- **F´ Documentation**: https://nasa.github.io/fprime/
- **F´ GitHub**: https://github.com/nasa/fprime
