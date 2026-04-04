# Redirection and File Descriptors Tutorial Index

This directory covers advanced I/O management and treating command streams as files.

## Core Files

1. **`io_redirection_basics.sh`**: Teaches stdin (0), stdout (1), and stderr (2) redirection. Includes merging stderr into stdout (`2>&1`).
2. **`process_substitution.sh`**: Explains `<(command)` syntax to treat output as a file path. Teaches how to avoid subshells in loops.

## Key Takeaways
- **File Descriptors**: 0=stdin, 1=stdout, 2=stderr.
- **`2>&1`**: Merges error messages into the standard output stream.
- **`&>`**: Simple shorthand for redirecting both stdout and stderr.
- **Process Substitution**: Use `<(command)` to feed output directly into a command that expects a file path. This avoids subshells and allows variable state to persist within `while` loops.
- **Advanced stream manipulation**: Combine descriptors and substitution for powerful data handling (e.g., `diff <(cmd1) <(cmd2)`).
