# Process Scripting (ps) Tutorial Index

This directory focuses on process management and system resources.

## Core Files

1. **`ulimit_demo.sh`**: Teaches how to view and manage shell resource limits using the `ulimit` command.

## Key Takeaways
- **`ulimit -a`**: View all current resource limits for your shell.
- **`-n`**: Max open file descriptors.
- **`-u`**: Max user processes.
- **`-H` vs `-S`**: Hard limits (only root can increase) vs Soft limits (current limit).
- **Infinite Loops**: When experimenting with process management, always include a way to exit safely.
