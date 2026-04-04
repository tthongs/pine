# Arguments and Parameters Tutorial Index

This directory focuses on how Bash scripts receive and process external data.

## Core Files

1. **`positional_parameters.sh`**: Teaches `$0`, `$1`, `$#`, and `$@` logic.
2. **`shift_and_iteration.sh`**: Demonstrates how to iterate through an unknown number of arguments.

## Key Concepts

### **Positional Parameters**
- **`$0`**: The script name.
- **`$1`, `$2`, ...**: The first, second, etc., arguments.
- **`$#`**: The total count of arguments passed.
- **`$@`**: All arguments as a quoted list.

### **The `shift` Command**
- Used to "consume" the first argument and shift all others left.
- Essential for processing lists of files or directories passed to a script.

## Practical Logic
- **`while [[ "$#" -ne 0 ]]`**: A common loop pattern for processing all arguments until none are left.

## Key Takeaways
- Always validate the number of arguments (`$#`) at the start of your script.
- Provide a `usage()` function to help users understand what parameters are expected.
