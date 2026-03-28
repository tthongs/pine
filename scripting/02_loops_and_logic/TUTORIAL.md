# Loops and Logic Tutorial Index

This directory focuses on controlling the flow of execution in Bash scripts using loops and conditional logic.

## Core Files

1. **`while_loops_demo.sh`**: Teaches basic `while` loops, infinite loops, and waiting for file events (based on core concepts).
2. **`nested_while_loops.sh`**: Demonstrates multi-dimensional iteration (multiplication tables and pattern printing).
3. **`loop_control_continue.sh`**: Explains how to use `continue` to skip specific iterations and `break` to exit loops entirely.

## Key Takeaways
- **`while`**: Repeats a block as long as a condition is true.
- **`break`**: Exits the loop immediately.
- **`continue`**: Skips the current iteration and starts the next one.
- **Subshells**: Be careful when piping output into loops, as it may create a subshell where variable changes are lost.
