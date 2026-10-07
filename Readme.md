# Low-Power Multi-Clock Digital Communication System

## Overview

A complete RTL-to-Gates digital communication system designed using Verilog HDL and validated through an ASIC-oriented design flow. The project integrates UART-based communication, multi-clock domain operation, clock-domain crossing (CDC) mechanisms, asynchronous FIFO buffering, low-power clock-gating techniques, and scan-based Design-for-Testability (DFT).

The design demonstrates key digital IC design concepts including RTL development, functional verification, linting, CDC verification, synthesis, static timing analysis (STA), DFT insertion, and formal equivalence checking using industry-standard EDA tools.

---

## Features

### Communication
- UART Transmitter (TX)
- UART Receiver (RX)
- Configurable Parity Generation
- Parity Error Detection
- Framing Error Detection
- Start/Stop Bit Validation

### Processing
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
- Scan Insertion
- Multiple Scan Chains
- Test Mode Support
- Scan Enable Control
- Scan Clock Support
- Scan Reset Support

---

## Top-Level Architecture

```text
UART RX
   │
   ▼
System Controller
   │
   ├────────► Register File
   │
   └────────► ALU
                  │
                  ▼
              UART TX
