# 🌲 Pine — Systems, Scripting, HDL & Low-Level Computing

[![Shell Script](https://img.shields.io/badge/Shell_Script-Bash_4.0+-4EAA25?logo=gnu-bash&logoColor=white)](./scripting/)
[![C](https://img.shields.io/badge/Language-C11-00599C?logo=c&logoColor=white)](./c/)
[![C++](https://img.shields.io/badge/Language-C++17-00599C?logo=c%2B%2B&logoColor=white)](./cpp/)
[![Verilog](https://img.shields.io/badge/Hardware-Verilog_HDL-005A9C?logo=fpga&logoColor=white)](./fpga/)
[![VHDL](https://img.shields.io/badge/Hardware-VHDL-5C2D91?logo=microchip&logoColor=white)](./fpga/)
[![Linux](https://img.shields.io/badge/Platform-Linux%20%2F%20Ubuntu-FCC624?logo=linux&logoColor=black)](./scripting/)

A centralized, well-structured repository containing curated modules for **Linux Shell Scripting & UNIX Tools**, **Digital Design & FPGA (Verilog/VHDL)**, **C/C++ Systems & Memory Internals**, and **Practical Automation Projects**.

---

## 📑 Table of Contents

- [🏛️ Repository Architecture](#repository-architecture)
- [🐚 Linux & Shell Scripting (`/scripting`)](#linux-shell-scripting-scripting)
  - [🛣️ Learning Roadway & Navigation](#learning-roadway-navigation)
  - [📚 Core Learning Modules](#core-learning-modules)
  - [🛠️ Featured Project: `u_manag`](#featured-project-u_manag)
  - [📝 Assignments & Practical Drills](#assignments-practical-drills)
  - [📖 Official UNIX Documentation](#official-unix-documentation)
- [⚡ Digital Design & FPGA (`/fpga`)](#digital-design-fpga-fpga)
  - [📡 UART Transceiver Core](#uart-transceiver-core)
  - [🔄 Finite State Machines (FSM)](#finite-state-machines-fsm)
  - [⏱️ VHDL Stopwatch System & Clock Dividers](#vhdl-stopwatch-system-clock-dividers)
- [💻 C & C++ Systems Programming (`/c` & `/cpp`)](#c-c-systems-programming-c-cpp)
  - [🧠 Pointers and Arrays in C (Comprehensive Tutorial)](#pointers-and-arrays-in-c-comprehensive-tutorial)
  - [🧩 Algorithms & Data Structures](#algorithms-data-structures)
- [📊 Datasets & Text Corpora (`/lss` & `/data`)](#datasets-text-corpora-lss-data)
- [📄 Engineering Profile & Resume Guidelines (`/resume`)](#engineering-profile-resume-guidelines-resume)
- [🚀 Quick Start & Execution Guide](#quick-start-execution-guide)

---

## 🏛️ Repository Architecture

```text
pine/
├── c/                          # C Systems Programming & Memory Internals
│   ├── ass1/, ass2/, ass3/     # Course assignments & exercises
│   ├── class/                  # Algorithms (Fibonacci, Insertion Sort, Selection Sort)
│   └── pointers_and_arrays/    # Ted Jensen's classic guide (Markdown, TeX, PDF, HTML, C source)
├── cpp/                        # C++ Solutions & Algorithmic Problem Sets
│   ├── ass1/
│   └── ass2/
├── fpga/                       # HDL Digital Systems Design (Verilog & VHDL)
│   ├── fsm/                    # Moore / Mealy Finite State Machine templates
│   ├── planner/                # Study tracking & hardware roadmaps (CSV / XLSX)
│   ├── uart/                   # Full-duplex UART transmitter & receiver core
│   └── verilog_vhdl/           # Stopwatch, clock generators, logic gates & testbenches
├── scripting/                  # Comprehensive UNIX & Shell Scripting Lab
│   ├── 01_input_and_output/    # I/O, formatting, let, bc arithmetic
│   ├── 02_loops_and_logic/     # Loops, case, select, boolean tests
│   ├── 03_text_processing_ifs/ # IFS parsing, regex extraction, tokenization
│   ├── 04_redirection_desc/    # File descriptors & process substitution
│   ├── 05_search_and_metadata/ # Find, mtime, exec workflows
│   ├── 06_args_parameters/     # getopts, positional parameters, shift
│   ├── 07_functions_heredocs/  # Scope (local), functions, heredocs
│   ├── 08_shell_options/       # Shell set options & error traps
│   ├── 09_term_formatting/     # ANSI escape codes, hex & tput formatting
│   ├── 10_arrays/              # Indexed & associative arrays
│   ├── 11_awk/                 # awk scripts & custom text transformation
│   ├── 12_diff_command/        # File and patch comparison tools
│   ├── 13_eval_in_bash/        # Dynamic runtime command execution
│   ├── 14_parameter_expansion/ # String slicing, pattern matching, defaults
│   ├── 15_ps/                  # Process monitoring & ulimit resource bounds
│   ├── 16_regex/               # BASH_REMATCH & interactive regex engine
│   ├── 17_sed/                 # Stream editing patterns & replacements
│   ├── 18_sort_command/        # Keyed, numeric & delimited sorting
│   ├── 19_time_command/        # Execution benchmarking & metrics
│   ├── 21_subshells_processes/ # Subshell variable scope & PID hierarchy
│   ├── 22_cmd_substitution/    # Command substitution side-effects
│   ├── assignments/            # Practical challenge problems
│   ├── in_dev/user_manag/      # Linux Zenity GUI User Management application
│   ├── l_roadway/              # Structured learning roadmaps & auto-syncer
│   └── Guides_unix/            # Official GNU Awk, Sed, and Tar documentation (PDF)
├── lss/                        # Text corpora & pattern search datasets
└── resume                      # Embedded / VLSI / Hardware engineering resume format
```

---

## 🐚 Linux & Shell Scripting (`/scripting`)

A complete, production-grade learning suite for mastering Bash 4.0+ and UNIX core utilities.

### 🛣️ Learning Roadway & Navigation

The scripting directory is backed by an automated roadway generator:
- 🗺️ **[Full Learning Roadmap (ROADMAP.md)](./scripting/l_roadway/ROADMAP.md)**: Dynamic index of all scripts, descriptions, and guides.
- 🎯 **[Structured Learning Path (LEARNING_PATH.md)](./scripting/l_roadway/LEARNING_PATH.md)**: Step-by-step curriculum from fundamentals to advanced process management.
- 🔄 **Sync Roadway Utility**: Run `./scripting/l_roadway/sync_roadway.sh` to automatically regenerate module indices.

---

### 📚 Core Learning Modules

| # | Directory | Focus & Key Concepts | Tutorial |
|:---|:---|:---|:---:|
| **01** | [`01_input_and_output`](./scripting/01_input_and_output/) | `read` (timeout/silent), `printf` formatting, `let`, `bc` float math | [📘 Guide](./scripting/01_input_and_output/TUTORIAL.md) |
| **02** | [`02_loops_and_logic`](./scripting/02_loops_and_logic/) | `while`, `for`, `select`, `case`, `[[ ]]`, `(( ))`, file triggers | [📘 Guide](./scripting/02_loops_and_logic/TUTORIAL.md) |
| **03** | [`03_text_processing_and_ifs`](./scripting/03_text_processing_and_ifs/) | Internal Field Separator (IFS), line-by-line parsing, `tr`, regex | [📘 Guide](./scripting/03_text_processing_and_ifs/TUTORIAL.md) |
| **04** | [`04_redirection_and_descriptors`](./scripting/04_redirection_and_descriptors/) | Standard file descriptors (0, 1, 2), process substitution `<(cmd)` | [📘 Guide](./scripting/04_redirection_and_descriptors/TUTORIAL.md) |
| **05** | [`05_search_and_metadata`](./scripting/05_search_and_metadata/) | `find`, `-exec`, `-mtime`, permission filtering, `basename` piping | [📘 Guide](./scripting/05_search_and_metadata/TUTORIAL.md) |
| **06** | [`06_arguments_and_parameters`](./scripting/06_arguments_and_parameters/) | Positional variables (`$@`, `$*`, `$#`), `shift`, `getopts` flag parsing | [📘 Guide](./scripting/06_arguments_and_parameters/TUTORIAL.md) |
| **07** | [`07_functions_and_heredocs`](./scripting/07_functions_and_heredocs/) | `local` variable scoping, multi-arg iterations, Heredocs (`<<EOF`) | [📘 Guide](./scripting/07_functions_and_heredocs/TUTORIAL.md) |
| **08** | [`08_shell_options`](./scripting/08_shell_options/) | `set -e`, `set -x`, `set -u`, `braceexpand`, `allexport` | [📘 Guide](./scripting/08_shell_options/TUTORIAL.md) |
| **09** | [`09_terminal_formatting`](./scripting/09_terminal_formatting/) | ANSI escape sequences, color coding, `tput` terminal controls | [📘 Guide](./scripting/09_terminal_formatting/TUTORIAL.md) |
| **10** | [`10_arrays`](./scripting/10_arrays/) | Indexed arrays, associative dictionaries, slicing, subshell safety | [📘 Guide](./scripting/10_arrays/TUTORIAL.md) |
| **11** | [`11_awk`](./scripting/11_awk/) | Record/field processing (`FS`, `OFS`), built-in functions, user logic | [📘 Guide](./scripting/11_awk/TUTORIAL.md) |
| **12** | [`12_diff_command`](./scripting/12_diff_command/) | Unified diffs, side-by-side comparisons, patch generation | [📘 Guide](./scripting/12_diff_command/TUTORIAL.md) |
| **13** | [`13_eval_in_bash`](./scripting/13_eval_in_bash/) | Dynamic code construction, indirect references, runtime evaluation | [📘 Guide](./scripting/13_eval_in_bash/TUTORIAL.md) |
| **14** | [`14_parameter_expansion`](./scripting/14_parameter_expansion/) | String slicing `${var:offset:length}`, replacement, defaults `${var:-def}` | [📘 Guide](./scripting/14_parameter_expansion/TUTORIAL.md) |
| **15** | [`15_ps`](./scripting/15_ps/) | Process monitoring, tree inspection, `ulimit` resource control | [📘 Guide](./scripting/15_ps/TUTORIAL.md) |
| **16** | [`16_regex`](./scripting/16_regex/) | `BASH_REMATCH` capture groups, `=~` operator, regex validator | [📘 Guide](./scripting/16_regex/TUTORIAL.md) |
| **17** | [`17_sed`](./scripting/17_sed/) | Stream editing, address ranges, in-place regex substitutions | [📘 Guide](./scripting/17_sed/TUTORIAL.md) |
| **18** | [`18_sort_command`](./scripting/18_sort_command/) | Numeric sorting (`-n`), reverse (`-r`), keyed delimiter sorts (`-k`, `-t`) | [📘 Guide](./scripting/18_sort_command/TUTORIAL.md) |
| **19** | [`19_time_command`](./scripting/19_time_command/) | Real, User, and System CPU metrics, performance profiling | [📘 Guide](./scripting/19_time_command/TUTORIAL.md) |
| **21** | [`21_subshells_and_processes`](./scripting/21_subshells_and_processes/) | PID tracking (`$$`, `$BASHPID`), subshell environment boundaries | [📘 Guide](./scripting/21_subshells_and_processes/TUTORIAL.md) |
| **22** | [`22_command_substitution`](./scripting/22_command_substitution/) | `$(...)` execution, nested evaluation, variable scoping rules | [📘 Guide](./scripting/22_command_substitution/TUTORIAL.md) |

---

### 🛠️ Featured Project: `u_manag`

Located at [`scripting/in_dev/user_manag/`](./scripting/in_dev/user_manag/):
- **Overview:** A lightweight, desktop-ready GUI tool for Unix/Linux user administration using `Zenity`.
- **Features:** Add users, delete accounts & home directories, rename users, modify passwords, and verify permissions.
- **Distribution Packages:** Includes Debian package (`umanag.deb`), Arch Linux package (`PKGBUILD`), and XDG desktop entry (`umanag.desktop`).

---

### 📝 Assignments & Practical Drills

The [`scripting/assignments/`](./scripting/assignments/) directory provides real-world challenges:
- **`ascii/`**: ASCII character table generator and hex converters.
- **`email_grep/`**: High-accuracy email syntax regex validation and sorting.
- **`first_line_shebang/`**: Batch filesystem audit script checking shebang lines across scripts.
- **`lines_grep/` & `ranges_grep/`**: Targeted pattern matching and numeric line-range extraction.
- **`read_ifs_file/`**: Delimiter-driven record parsing.
- **`sed_cmd/`**: Advanced multi-pass file transformation exercises.

---

### 📖 Official UNIX Documentation

Direct reference manuals available in [`scripting/Guides_unix/`](./scripting/Guides_unix/):
- 📕 [The GNU Awk User's Guide (PDF)](<./scripting/Guides_unix/The GNU Awk User’s Guide.pdf>)
- 📗 [GNU sed, a stream editor (PDF)](<./scripting/Guides_unix/sed, a stream editor.pdf>)
- 📘 [GNU tar 1.35 Manual (PDF)](<./scripting/Guides_unix/GNU tar 1.35.pdf>)

---

## ⚡ Digital Design & FPGA (`/fpga`)

A collection of synthesizable digital logic modules in **Verilog HDL** and **VHDL**, complete with testbenches and simulation vectors.

```text
fpga/
├── fsm/                     # Finite State Machine implementation
│   └── fsm.v                # Moore state machine with synchronous reset
├── uart/                    # Full UART System
│   ├── uart.v               # Top-level UART transceiver module
│   ├── uart_tx.v            # Serializer & baud-rate transmitter
│   ├── uart_rx.v            # Deserializer & oversampled receiver
│   └── README.md            # Hardware specification & timing parameters
├── verilog_vhdl/
│   ├── class/               # Gate-level primitives & testbenches (and.v, andtb.v)
│   └── fpga/
│       ├── code_converter.v # BCD / binary code conversion logic
│       ├── ten_mhz_80dutycycle.v # 10 MHz clock generator with 80% duty cycle
│       └── vhdl/            # Complete VHDL Stopwatch design & testbenches
└── planner/                 # Study plans & RTL design milestones
```

### 📡 UART Transceiver Core
- **Top Module ([`uart.v`](./fpga/uart/uart.v)):** Integrates transmitter and receiver into a single bidirectional interface.
- **Transmitter ([`uart_tx.v`](./fpga/uart/uart_tx.v)):** Handles start bit framing, 8-bit data serialization, parity calculation, and stop bit generation.
- **Receiver ([`uart_rx.v`](./fpga/uart/uart_rx.v)):** Features middle-of-bit sampling for noise immunity and frame error detection.

### 🔄 Finite State Machines (FSM)
- **Moore FSM ([`fsm.v`](./fpga/fsm/fsm.v)):** Structured 3-block Verilog state machine (State register, Next-state combinational logic, Output logic).

### ⏱️ VHDL Stopwatch System & Clock Dividers
- **Stopwatch RTL ([`stopwatch.vhd`](./fpga/verilog_vhdl/fpga/vhdl/stopwatch.vhd)):** Accurate timing unit with Start/Stop/Reset controls, 7-segment display decoder, and sub-millisecond precision.
- **Testbench Suite ([`stopwatch_tb.vhd`](./fpga/verilog_vhdl/fpga/vhdl/stopwatch_tb.vhd)):** Simulation testbench verifying timing intervals, overflow conditions, and reset assertions.
- **Clock Generator ([`ten_mhz_80dutycycle.v`](./fpga/verilog_vhdl/fpga/ten_mhz_80dutycycle.v)):** Synthesizable clock divider generating a 10 MHz signal with custom 80% duty cycle.

---

## 💻 C & C++ Systems Programming (`/c` & `/cpp`)

Systems-level implementations focusing on memory architecture, pointer arithmetic, data structures, and algorithm complexity.

```text
c/
├── conditionbool.c          # Boolean evaluation and condition handling
├── scr.c                    # Scratch and system testing code
├── ass1/, ass2/, ass3/      # Academic programming problem sets
├── class/                   # Classic algorithms in C
│   ├── fibb.c               # Fibonacci calculation
│   ├── insertionsort.c      # Insertion sort implementation
│   ├── selection.c          # Selection sort implementation
│   └── steps.c              # Dynamic programming / step counting
└── pointers_and_arrays/     # Ted Jensen's Pointer Masterclass
    ├── md/ (10 chapters)    # Full Markdown chapter breakdown
    ├── pdf/                 # Compiled PDF handbook
    ├── html/                # Web version with CSS styles
    ├── tex/                 # Complete LaTeX source documents
    └── src/ (16 demo files) # Compilable C pointer demonstration code
```

### 🧠 Pointers and Arrays in C (Comprehensive Tutorial)

Preserved and modernized from Ted Jensen's definitive guide to C pointer mechanics:
- 📖 **[Read Tutorial Online](./c/pointers_and_arrays/md/pointers.md)**
- 📑 **Chapters Covered:**
  - **Ch 1:** [Pointer Variables & Basic Dereferencing](./c/pointers_and_arrays/md/ch1x.md)
  - **Ch 2:** [Pointer Types & Memory Sizing](./c/pointers_and_arrays/md/ch2x.md)
  - **Ch 3:** [Pointers and Array Indexing Equivalence](./c/pointers_and_arrays/md/ch3x.md)
  - **Ch 4:** [Strings, Character Pointers & Literals](./c/pointers_and_arrays/md/ch4x.md)
  - **Ch 5:** [Pointers and Structures](./c/pointers_and_arrays/md/ch5x.md)
  - **Ch 6:** [Arrays of Pointers & Pointers to Arrays](./c/pointers_and_arrays/md/ch6x.md)
  - **Ch 7:** [Multi-dimensional Arrays & Memory Layout](./c/pointers_and_arrays/md/ch7x.md)
  - **Ch 8:** [Dynamic Memory Allocation (`malloc`, `free`)](./c/pointers_and_arrays/md/ch8x.md)
  - **Ch 9:** [Pointers to Functions & Callbacks](./c/pointers_and_arrays/md/ch9x.md)
  - **Ch 10:** [Advanced Function Pointers & Jump Tables](./c/pointers_and_arrays/md/ch10x.md)
- 💻 **Compilable Code Examples:** Available in [`c/pointers_and_arrays/src/`](./c/pointers_and_arrays/src/).

### 🧩 Algorithms & Data Structures
- **Sorting:** Insertion Sort (`insertionsort.c`), Selection Sort (`selection.c`).
- **Sequences:** Iterative & Recursive Fibonacci (`fibb.c`).
- **C++ Problem Sets:** Located in [`cpp/ass1/`](./cpp/ass1/) and [`cpp/ass2/`](./cpp/ass2/).

---

## 📊 Datasets & Text Corpora (`/lss` & `/data`)

- **Text Corpora ([`lss/`](./lss/)):** Contains structured datasets (`art`, `mozart`, `part`, `part1`, `part2`, `part3`, `quartz`, `tart`) designed for benchmarking string matching, `grep` regular expressions, and `awk` stream processing.
- **Data Trees ([`scripting/data/`](./scripting/data/)):** Nested file hierarchies (`D1`, `D2`, `sizes.txt`) used for testing recursive filesystem search algorithms and size filters.

---

## 📄 Engineering Profile & Resume Guidelines (`/resume`)

The [`resume`](./resume) file provides a structured blueprint for hardware, VLSI, embedded systems, and software engineering profiles:
- **Format Requirements:** Objective clarity, academic metrics, and technical skill taxonomy (EDA tools, HDL, embedded hardware, OS).
- **Project Structure:** Objective, hardware specifications, outcome, technical challenges, device part numbers, and scripting automation used.

---

## 🚀 Quick Start & Execution Guide

### 1. Setting Up the Repository
```bash
# Clone the repository
git clone https://github.com/tthongs/pine.git
cd pine

# Make all shell scripts executable
find scripting -name "*.sh" -exec chmod +x {} +
```

### 2. Running Scripting Lessons
```bash
# Run any module script directly
./scripting/01_input_and_output/basic_read.sh
./scripting/14_parameter_expansion/advanced_expansion.sh
./scripting/16_regex/interactive_regex_match.sh

# Sync the learning roadway after adding new lessons
./scripting/l_roadway/sync_roadway.sh
```

### 3. Compiling C & C++ Programs
```bash
# Compile and run a C algorithm
gcc -Wall -O2 c/class/insertionsort.c -o insertionsort
./insertionsort

# Compile Ted Jensen's pointer demonstration code
gcc -Wall c/pointers_and_arrays/src/ch1-1.c -o ch1_demo
./ch1_demo

# Compile C++ assignments
g++ -std=c++17 -Wall cpp/ass1/q1.cpp -o ass1_q1
./ass1_q1
```

### 4. Simulating Verilog & VHDL Modules
```bash
# Simulate Verilog modules using Icarus Verilog
iverilog -o uart_sim fpga/uart/uart_tx.v fpga/uart/uart_rx.v fpga/uart/uart.v
vvp uart_sim

# Simulate VHDL modules using GHDL
ghdl -a fpga/verilog_vhdl/fpga/vhdl/stopwatch.vhd fpga/verilog_vhdl/fpga/vhdl/stopwatch_tb.vhd
ghdl -e stopwatch_tb
ghdl -r stopwatch_tb --vcd=stopwatch.vcd
```

---

## 📜 Development Conventions

- **Self-Contained Scripts:** All tutorial scripts generate their own temporary test files and cleanly delete them upon exit.
- **Structured Terminal Output:** Standardized `header()`, `note()`, and formatted outputs across all interactive lessons.
- **Clean Git Workflow:** Binary build artifacts (`.out`, `.deb`, `.o`, `.vcd`) are excluded from version tracking.

---

<p align="center">
  <b>🌲 Pine</b> • Engineered for clean learning, systems mastery, and hardware precision.
</p>
