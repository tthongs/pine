# Command Substitution Tutorial Index

This directory covers command substitution—the ability to capture the output of a command and use it as a string or variable value.

## Core Files

1. **`cmd_substitution_basics.sh`**: Teaches the `$(command)` syntax and basic usage.
2. **`function_scope_substitution.sh`**: Explains how command substitution creates a subshell, isolating variable changes.

## Key Takeaways
- **Syntax**: Use `$(command)` (modern) or \`command\` (legacy).
- **Subshell**: Command substitution always runs in a subshell.
- **Nesting**: `$(...)` can be easily nested, unlike backticks.
- **Function Capture**: You can capture the `echo` output of a function using substitution.
