# VHDL Stopwatch Project

## Project Overview
This project contains a VHDL implementation of a stopwatch. The primary source file is `stopwatch.vhd`, which is intended to define the stopwatch's hardware logic, including timing mechanisms, start/stop/reset functionality, and potentially display drivers (e.g., for a 7-segment display).

**Technologies:**
*   **Language:** VHDL
*   **Target:** FPGA (Field Programmable Gate Array)

## Building and Simulating
Currently, no specific build scripts (e.g., Makefiles, Tcl scripts) are present. Common tools for this type of project include:

### Simulation (GHDL)
1.  **Analyze:** `ghdl -a stopwatch.vhd`
2.  **Elaborate:** `ghdl -e stopwatch_tb` (assuming a testbench is added later)
3.  **Run:** `ghdl -r stopwatch_tb --vcd=stopwatch.vcd`

### Synthesis (Vivado / Quartus)
*   Create a new project in the IDE.
*   Add `stopwatch.vhd` as a design source.
*   Assign pins based on the target FPGA board's constraints file (`.xdc` or `.qsf`).
*   Run Synthesis and Implementation to generate a bitstream.

**TODO:** Identify specific FPGA hardware and simulation testbenches.

## Development Conventions
*   **Naming:** Standard VHDL naming conventions (e.g., `i_` for inputs, `o_` for outputs).
*   **Architecture:** Use a behavioral or structural description as appropriate for the hardware design.
*   **Testing:** It is highly recommended to include a testbench file (e.g., `stopwatch_tb.vhd`) to verify the stopwatch logic through simulation before deploying to hardware.

## Project Structure
*   `stopwatch.vhd`: Main hardware logic (Behavioral/Structural).
*   `GEMINI.md`: Project documentation and instructional context.
