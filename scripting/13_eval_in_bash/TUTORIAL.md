# Eval in Bash Consolidation

This directory focuses on the eval command for dynamic command execution.

## Core Tutorial Script
1. **`eval_demo.sh`**: Teaches basic dynamic execution, variable pointers, and constructing complex pipelines.
2. **`dynamic_eval_demo.sh`**: Interactive demonstration of building and executing commands on the fly.

## Key Takeaways
- **Dynamic Command Strings**: Use `eval` to execute complex commands constructed as strings.
- **Double Expansion**: Access or modify a variable when you only know its name stored in another variable (e.g., `eval "val=\$$var_name"`).
- **Security Warning**: Never use `eval` on untrusted input. It is highly susceptible to shell injection attacks.
