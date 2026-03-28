# Bash Scripting Tutorial (Clean & Comprehensive)

A collection of professional, well-commented example scripts for learning Bash scripting, organized by topic.

## Project Overview

- **Purpose:** Provide self-explanatory, modular examples of Bash features, including input/output, loops, text processing, parameter expansion, and resource management.
- **Technologies:** Bash 4.0+.
- **Architecture:** Themes are grouped into categorized directories. Each script is standalone with formatted terminal output using `header()` and `note()` functions.

## Core Learning Modules

### `01_input_and_output/` 
1. **`basic_read.sh`**: Basic user input, variable assignment, and arithmetic.
2. **`read_with_timeout.sh`**: Advanced `read` usage with timeouts, character limits, and silent mode.
3. **`acknowledge_loop.sh`**: Simple while loops for repeating terminal output.

### `02_loops_and_logic/` 
4. **`while_loops_demo.sh`**: Finite counters, infinite loops, and waiting for file-existence events.
5. **`nested_while_loops.sh`**: Multi-dimensional iteration (multiplication tables and patterns).
6. **`loop_control_continue.sh`**: Using `continue` to skip iterations and `break` to exit loops.
7. **`eval_demo.sh`**: Dynamic command execution and variable manipulation.

### `03_text_processing_and_ifs/` 
8. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator for tokenization.
9. **`ifs_tab_separator.sh`**: Handling tab-delimited data using specific IFS syntax.
10. **`ifs_newline_processing.sh`**: Iterating over data line-by-line using newline delimiters.
11. **`ifs_variable_persistence.sh`**: Understanding global vs. command-scoped variable changes.
12. **`regex_file_parsing.sh`**: Using `grep -E` for basic file content filtering and anchors.
13. **`line_by_line_parsing.sh`**: Advanced regex using the Bash `=~` operator and `BASH_REMATCH`.
14. **`tr_command_demo.sh`**: Practical implementation of character translation and deletion.
15. **`list_files_only.sh`**: Extracting only regular files from a directory using multiple methods.

### `parameter_expansion/`
16. **`parameter_expansion_basics.sh`**: High-performance `basename` and `dirname` using `${var##*/}` syntax.
17. **`advanced_expansion.sh`**: String replacement, slicing, case conversion, and default values.

### `diff_command/`
18. **`diff_command_demo.sh`**: File comparison, brief/unified/side-by-side formats, and directory comparison.

### `sed/`
19. **`sed_tutorial.sh`**: Deleting, printing, grouping, and in-place editing with the Stream Editor.

### `sort_command/`
20. **`sort_basics.sh`**: Key-based sorting, human-readable size sorting, and header cleanup.

### `05_redirection_and_descriptors/`
21. **`io_redirection_basics.sh`**: Standard streams (0, 1, 2) and merging stderr into stdout.
22. **`process_substitution.sh`**: Treating command output as a file path using `<(command)`.

### `ps/`
23. **`ulimit_demo.sh`**: Viewing and managing shell resource limits (FDs, process limits).

### `regex/`
24. **`TUTORIAL.md`**: Central index for consolidated regex scripts (consolidated from various topics).

### `eval_in_bash/`
25. **`TUTORIAL.md`**: Central index for consolidated dynamic execution scripts.

### `04_references/` 
26. **`tutorial_notes.txt`**: General notes on quotes, line numbers, find/replace, and more.
27. **`main_readme.txt`**: Comprehensive history and foundational notes.

### `data/` 
- **`create_samples.sh`**: Run this from the root to (re)generate all sample data for manual exploration.

---

## Building and Running

Ensure the scripts are executable and run them in your terminal:
- **Set Permissions:** `chmod +x */*.sh` and `chmod +x arrays/*/*.sh`
- **To Run:** `./01_input_and_output/basic_read.sh`, `./parameter_expansion/advanced_expansion.sh`, etc.

## Development Conventions
- **Readability:** All scripts use clear section headers and `echo` statements for formatted output.
- **Self-Contained:** Tutorial scripts generate their own temporary data and cleanup after execution.
- **Performance:** Built-in shell features (like Parameter Expansion) are preferred over external tools for single-variable tasks.
