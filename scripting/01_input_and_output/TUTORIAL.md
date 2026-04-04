# Input and Output Tutorial Index

This directory covers the fundamental concepts of interacting with a user via the terminal.

## Core Files

1. **`basic_read.sh`**: The essential 'hello world' of user input. Teaches variables, prompts, and basic arithmetic.
2. **`read_with_timeout.sh`**: Advanced `read` options, including the `-t` flag for timeouts and `-n` for character-limited input.
3. **`acknowledge_loop.sh`**: A simple loop showing how to repeat terminal output.
4. **`let_arithmetic_basics.sh`**: Demonstrates basic arithmetic using the `let` command and logical evaluations.

## Key Takeaways
- Use `read -p "Prompt: " var` to get input.
- Always validate input before performing operations (like arithmetic).
- `expr` is the legacy math tool, whereas `$(( ))` is modern and efficient.
