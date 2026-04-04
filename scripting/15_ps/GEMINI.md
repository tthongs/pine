# Project Overview: Process Scripting (ps)

This directory is part of a comprehensive Unix/Linux/Bash scripting course. It focuses on **Process Management** and the usage of the `ps` (Process Status) command.

### Key Concepts:
- **Process ID (PID):** Every command/process in Unix has a unique identifier.
- **Process Status (`ps`):** Listing and monitoring active processes.
- **Job Control:** Managing background (`&`, `bg`, `jobs`) and foreground (`fg`) processes.
- **Signals:** Terminating or interacting with processes (e.g., `kill`).
- **Exit Status:** Understanding the return codes of processes (0 for success, non-zero for failure).

## Project Structure
Currently, this directory serves as a workspace for exercises related to the `ps` command and process lifecycle management.

### `ps/` 
1. **`ulimit_demo.sh`**: Explains shell resource limits and the usage of the `ulimit` command.

## Building and Running
As this directory is intended for shell scripts, there is no compilation step.

### Running Scripts
- Ensure the script has execute permissions:
  ```bash
  chmod +x script_name.sh
  ```
- Execute the script:
  ```bash
  ./script_name.sh
  ```
- Alternatively, run with bash:
  ```bash
  bash script_name.sh
  ```

## Development Conventions
- **Shebang:** Use `#!/bin/bash` or `#!/usr/bin/bash` at the beginning of scripts.
- **Formatting:** Scripts should follow standard bash scripting practices as taught in the course modules (e.g., consistent indentation, use of variables).
- **Process Monitoring:** Frequent use of `ps -f`, `ps -e`, and `jobs -l` for verification of process states.
- **Documentation:** Commenting scripts to explain the purpose of process manipulations.

## TODO / Next Steps
- Implement scripts to demonstrate background process execution.
- Create exercises for tracking process parent-child relationships using `ps -ef`.
- Practice using `kill` to manage unresponsive processes.
