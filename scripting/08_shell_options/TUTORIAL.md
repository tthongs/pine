# Shell Options Tutorial Index

This directory covers the `set` command and the `-o` (option) flag to control Bash behavior.

## Core Files

1. **`set_command_options.sh`**: Teaches how to toggle shell features like brace expansion and automatic exporting.

## Key Shell Options

### **`allexport` (or `-a`)**
- Automatically marks all defined variables for export to child processes.
- **Example**: `set -o allexport; var=10; bash -c 'echo $var'` results in `10`.

### **`braceexpand` (or `-B`)**
- Toggles the shell's ability to expand sequences like `{1..3}` or `{a,b}`.
- **Example**: `set +o braceexpand` makes `echo {1..3}` print exactly `{1..3}`.

## Debugging and Safety
- **`set -x` / `set -v`**: Enable verbose debugging output.
- **`set -e`**: Exit the script immediately if any command returns a non-zero exit status.
- **`set -u`**: Exit if an unset variable is referenced.

## Key Takeaways
- Use `set -o [option]` to enable and `set +o [option]` to disable features.
- Toggling options mid-script is useful for isolating behavior in specific sections.
