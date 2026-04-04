# Search and Metadata Tutorial Index

This directory covers advanced file discovery and metadata-based filtering using the `find` command.

## Core Files

1. **`find_advanced_examples.sh`**: Teaches `find` with depth limits, permissions, and complex `-exec` subshells.
2. **`find_basename_demo.sh`**: Demonstrates multiple ways to extract names from `find` output.
3. **`find_mtime_exec.sh`**: Shows how to locate and process files based on their last modification time.

## Advanced Discovery (Lecture Review)

### Discovery Logic
- **`-maxdepth`**: Limit how many levels deep `find` searches.
- **`-perm`**: Filter files by octal permissions (e.g., `777`).
- **`-size`**: Find files by size ranges (e.g., `+100M`).

### Time-Based Logic
- **`-mtime`**: Filter by content modification time (in days).
- **`-ctime`**: Filter by metadata change time (in days).

### Dynamic Execution
- **`-exec`**: Run a command on each file found (e.g., `-exec rm {} \;`).
- **Complex Subshells**: Pass multiple files to a shell for more advanced logic (e.g., `-exec bash -c '...' _ {} +`).

## Key Takeaways
- **Performance**: Use `+` instead of `\;` with `-exec` to process multiple files in a single command invocation.
- **Quoting**: Always quote `{}` if there's a risk of filenames containing spaces or special characters.
