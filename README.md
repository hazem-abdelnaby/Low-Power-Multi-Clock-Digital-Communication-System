# Low-Power Multi-Clock Digital Communication System

## Overview

A complete RTL-to-Gates digital communication system designed using Verilog HDL and validated through an ASIC-oriented design flow. The project integrates UART-based communication, multi-clock domain operation, clock-domain crossing (CDC) mechanisms, asynchronous FIFO buffering, low-power clock-gating techniques, and scan-based Design-for-Testability (DFT).

The design demonstrates key digital IC design concepts including RTL development, functional verification, linting, CDC verification, synthesis, static timing analysis (STA), DFT insertion, and formal equivalence checking using industry-standard EDA tools.

---

## Features

### Communication Subsystem
- UART Transmitter (TX)
- UART Receiver (RX)
- Configurable Parity Generation
- Parity Error Detection
- Framing Error Detection
- Start/Stop Bit Validation

### Processing Subsystem
- Configurable Arithmetic Logic Unit (ALU)
- Register File
- System Controller FSM
- Command-Based Data Processing

### Multi-Clock Architecture
- Reference Clock Domain
- UART Clock Domain
- TX Clock Domain
- RX Clock Domain
- Scan Clock Domain

### CDC Infrastructure
- Data Synchronizers
- Reset Synchronizers
- Dual-Flop Synchronizers
- Asynchronous FIFO
- CDC Verification using SpyGlass

### Low-Power Design
- Clock Gating
- Controlled Clock Distribution
- Reduced Dynamic Switching Activity

### Design-for-Testability
- Multiple Scan Chains
- Scan Enable (SE)
- Scan Input (SI)
- Scan Output (SO)
- Test Mode Support
- Dedicated Scan Clock
- Scan Reset Support

---

## System Architecture

```text
                    +----------------+
                    |    UART RX     |
                    +--------+-------+
                             |
                             v
                    +----------------+
                    |  System CTRL   |
                    +--------+-------+
                             |
        +--------------------+-------------------+
        |                                        |
        v                                        v
+---------------+                     +----------------+
| Register File |                     |      ALU       |
+-------+-------+                     +--------+-------+
        |                                      |
        +---------------+----------------------+
                        |
                        v
                  +------------+
                  |  UART TX   |
                  +------------+
```

---

## ASIC Design Flow

1. RTL Design and Development
2. Functional Verification
3. SpyGlass Lint Analysis
4. CDC Verification
5. Logic Synthesis (Design Compiler)
6. Static Timing Analysis (STA)
7. DFT Scan Insertion
8. Formal Equivalence Checking (Formality)

---

## Tools Used

- Verilog HDL
- ModelSim
- Vivado
- Synopsys Design Compiler
- Synopsys SpyGlass
- Synopsys Formality
- TCL
- Linux

---

## Verification

The design was verified through:

- Self-Checking Testbenches
- Functional Simulation
- Lint Analysis
- CDC Verification
- Synthesis Verification
- Formal Equivalence Checking

Verification covers UART communication, ALU functionality, FIFO operation, clock-domain crossings, reset synchronization, and scan architecture integration.

---

## DFT Architecture

The project includes a scan-based DFT implementation featuring:

- Multiple Scan Chains
- Scan Input (SI)
- Scan Output (SO)
- Scan Enable (SE)
- Dedicated Scan Clock
- Scan Reset
- Test Mode Operation

---

## Repository Structure

```text
RTL/
├── ALU.v
├── ASYNC_FIFO.v
├── CLKDiv.v
├── DATA_SYNC.v
├── DF_SYNC.v
├── RegFile.v
├── SYS_CTRL.v
├── UART_TOP.v
├── System_TOP.v

TB/
├── System_TOP_tb.v

CDC/
DFT/
Synthesis/
STA/
Formality/
Docs/
```

---

## Skills Demonstrated

- RTL Design
- Verilog HDL
- FSM Design
- UART Protocol Implementation
- Clock Domain Crossing (CDC)
- Asynchronous FIFO Design
- Clock Gating
- ASIC Synthesis
- Static Timing Analysis
- Design-for-Testability (DFT)
- Formal Verification
- CDC Verification
- SpyGlass Lint Analysis

---

## Future Enhancements

- SystemVerilog-Based Verification
- UVM Testbench Development
- Coverage-Driven Verification
- Power Analysis
- Physical Design Flow
- RISC-V Integration

---

## Author

**Hazem Abdelnaby Mohamed**

Faculty of Engineering, Ain Shams University

Areas of Interest:
- Digital IC Design
- RTL Design
- FPGA Development
- ASIC Design Flow
- Verification
- VLSI Systems
