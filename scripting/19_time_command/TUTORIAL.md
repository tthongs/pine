# Time Command Tutorial Index

This directory focuses on the `time` utility, used to measure the execution duration and resource consumption of commands and scripts.

## Core Files

1. **`time_basics.sh`**: Teaches how to read the three core metrics (real, user, sys), the difference between shell built-ins and system binaries, and how to redirect time output to a file.

## Key Takeaways
- **real**: The total wall-clock time (what the user experiences).
- **user**: The amount of CPU time spent in user-mode code.
- **sys**: The amount of CPU time spent in system calls (kernel-mode).
- **Redirection**: Because `time` sends its results to standard error (stderr), you often need to use subshells `{ time cmd; } 2> file` to capture the output.
- **Binary vs. Built-in**: The `/usr/bin/time` binary often provides more technical detail (like memory usage) than the shell's built-in `time` keyword.
