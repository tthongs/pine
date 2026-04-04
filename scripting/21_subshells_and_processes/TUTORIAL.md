# Subshells and Processes Tutorial Index

This directory covers the lifecycle of shell processes, subshell creation, and variable scope across process boundaries.

## Core Files

1. **`export_scope_demo.sh`**: Demonstrates how exported variables carry over to child processes.
2. **`pid_basics.sh`**: Teaches the difference between `$$` (Parent PID) and `$BASHPID` (Current Process PID).
3. **`subshell_variable_scope.sh`**: Shows how pipelines create subshells that isolate variable changes.
4. **`pipeline_subshell_scope.sh`**: Further examples of variable isolation within piped command blocks.

## Key Takeaways
- **Subshell**: A child process that inherits environment variables but cannot modify the parent's state.
- **`export`**: Required to make a variable available to child processes (commands and other scripts).
- **Pipelines**: Commands on either side of a pipe `|` usually run in subshells.
- **`BASHPID`**: Always reflects the current process ID, even inside a subshell.
