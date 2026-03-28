# Redirection and File Descriptors Tutorial Index

This directory covers advanced I/O management and treating command streams as files.

## Core Files

1. **`io_redirection_basics.sh`**: Teaches stdin (0), stdout (1), and stderr (2) redirection. Includes merging stderr into stdout (`2>&1`). (Based on `scr/Screenshot_20260328_211807`, `212542`, `212732`, and `215517`).
2. **`process_substitution.sh`**: Explains `<(command)` syntax to treat output as a file path. Teaches how to avoid subshells in loops. (Based on `scr/Screenshot_20260328_212838`, `214528`, `215517`, and `220449`).

## Key Takeaways
- **File Descriptors**: 0=stdin, 1=stdout, 2=stderr.
- **`2>&1`**: Merges error messages into the standard output stream.
- **`&>`**: Simple shorthand for redirecting both stdout and stderr.
- **Process Substitution**: Use `<(command)` to feed output directly into a command that expects a file path.
- **Subshell Problem**: When you use a pipe (`|`) to feed a `while` loop, variable changes inside the loop are lost when it finishes. Use process substitution instead.
