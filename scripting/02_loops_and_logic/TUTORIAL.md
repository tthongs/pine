# Loops and Logic Tutorial Index

This directory focuses on controlling the flow of execution in Bash scripts using loops and conditional logic.

## Core Files

1. **`while_loops_demo.sh`**: Teaches basic `while` loops, infinite loops, and waiting for file events (based on core concepts).
2. **`nested_while_loops.sh`**: Demonstrates multi-dimensional iteration (multiplication tables and pattern printing).
3. **`loop_control_continue.sh`**: Explains how to use `continue` to skip specific iterations and `break` to exit loops entirely.
4. **`eval_demo.sh`**: Teaches dynamic command execution and the risks involved with `eval`.
5. **`arithmetic_expansion_demo.sh`**: Demonstrates comparison using `[[ ]]` and arithmetic expansion `(( ))`.
6. **`case_statement_files.sh`**: Uses `case` to check file extensions and presence.
7. **`infinite_loop_demo.sh`**: Shows how to create infinite loops using `:`.
8. **`conditional_ls_demo.sh`**: Simple argument checking to trigger specific command flags.
9. **`boolean_logic_tests.sh`**: Comprehensive test of boolean operators (`&&`, `||`, `!`) and `test` command.
10. **`string_testing_demo.sh`**: Focuses on `-z` and `-n` tests for strings.
11. **`while_ls_wait_demo.sh`**: A `while` loop that monitors the filesystem for specific file events.
12. **`command_switcher_case.sh`**: A practical CLI menu pattern using `case`.

## Key Takeaways
- **`while`**: Repeats a block as long as a condition is true.
- **`break`**: Exits the loop immediately.
- **`continue`**: Skips the current iteration and starts the next one.
- **Subshells**: Be careful when piping output into loops, as it may create a subshell where variable changes are lost.
