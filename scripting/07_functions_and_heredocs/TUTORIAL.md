# Functions and Heredocs Tutorial Index

This directory covers how to create reusable blocks of code and handle multi-line string input.

## Core Files

1. **`usage_functions.sh`**: Teaches how to define functions and use heredocs to print standardized usage messages.

## Key Concepts

### **Functions**
- **Definition**: `name() { ... }`.
- **Calling**: Simply use `name`.
- **Arguments**: Pass arguments to functions like you do with scripts (`$1`, `$2`, etc.).

### **Heredocs**
- **Syntax**: `<<EOF ... EOF`.
- **Purpose**: Ideal for printing large blocks of text (like help messages) without using multiple `echo` commands.
- **Variables**: Variables *are* expanded inside heredocs by default. To prevent expansion, quote the EOF (e.g., `<<"EOF"`).

## Key Takeaways
- Functions keep your scripts DRY (Don't Repeat Yourself).
- Use `local` inside functions to prevent variable leakage into the global scope.
