# Bash Scripting Tutorial (Clean & Comprehensive)

A collection of clean, well-commented example scripts for learning Bash scripting, organized by topic.

## Project Overview

- **Purpose:** Provide highly readable, modular examples of Bash features, including input/output, loops, text processing, and IFS manipulation.
- **Technologies:** Bash 4.0+.
- **Architecture:** Themes are grouped into categorized directories. Each script is standalone with formatted terminal output.

## Core Learning Files

### `01_input_and_output/` 
1. **`basic_read.sh`**: Basic user input using the `read` command.
2. **`read_with_timeout.sh`**: Advanced `read` usage with timeouts and single-character input.
3. **`acknowledge_loop.sh`**: Simple loop demonstrating repeated terminal output.

### `02_loops_and_logic/` 
4. **`while_loops_demo.sh`**: Demonstrates basic and infinite `while` loops with file checks.
5. **`nested_while_loops.sh`**: Examples of nested `while` loops and control flow.
6. **`loop_control_continue.sh`**: Demonstrates the use of `continue` to skip loop iterations.

### `03_text_processing_and_ifs/` 
7. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator.
8. **`ifs_tab_separator.sh`**: Using tabs as delimiters.
9. **`ifs_newline_processing.sh`**: Processing file content line by line using IFS.
10. **`ifs_variable_persistence.sh`**: Demonstrates IFS scope and persistence.
11. **`regex_file_parsing.sh`**: Using regex for basic file content filtering.
12. **`line_by_line_parsing.sh`**: Advanced file parsing and conditional logic.
13. **`tr_command_demo.sh`**: Practical implementation of the `tr` command (from visual references).

### `04_references/` 
14. **`tutorial_notes.txt`**: General notes on quotes, line numbers, find/replace, and more.
15. **`main_readme.txt`**: Comprehensive history and foundational notes.
16. **`Screenshot_20251015_231153.png`**: Visual reference for `tr` logic and temporary file handling.

### `05_redirection_and_descriptors/`
17. **`io_redirection_basics.sh`**: Explains standard input, output, and error redirection using descriptors (based on `scr/Screenshot_20260328_211807.png`, `Screenshot_20260328_212542.png`, and `Screenshot_20260328_212732.png`).
18. **`process_substitution.sh`**: Demonstrates process substitution (`<(command)`) and its use in avoiding subshells for loops (based on `scr/Screenshot_20260328_212838.png` and `Screenshot_20260328_214528.png`).

### `sed/`
19. **`sed_tutorial.sh`**: Deleting, printing, grouping, and in-place editing with `sed` (based on `scr/Screenshot_20251123_210955.png` to `Screenshot_20251123_214519.png`).

### `sort_command/`
20. **`sort_basics.sh`**: Key-based sorting, debugging, and human-readable size sorting (based on `scr/Screenshot_20251025_231422.png` and `Screenshot_20251025_234012.png`).

### `data/` 
- Contains sample files like `f1` and `tt` used by the tutorial scripts.

---

## Bash Array Tutorial (Specialized Deep Dive)

### `arrays/01_basics/`
1.  **`basic_arrays.sh`**: Declaration, initialization, length, and appending.
2.  **`associative_arrays.sh`**: Key-value stores using `declare -A`.

### `arrays/02_iteration/`
3.  **`for_loops_mastery.sh`**: Comprehensive guide to iterating through arrays (by value, index, and C-style).
4.  **`looping_arrays.sh`**: Best practices for iteration and word splitting prevention.
5.  **`array_filtering_logic.sh`**: Filtering array elements using a custom function (based on `Screenshot_20260321_172913.png`).
6.  **`loop_conditions_and_expansion.sh`**: Demonstrates loops with conditions and various expansion types (values vs indices).
7.  **`subshell_iteration_pitfalls.sh`**: Explains how pipes and explicit subshells affect variable persistence and array population (based on `Screenshot_20260328_210634.png` and `Screenshot_20260328_210747.png`).

### `arrays/03_operations/`
8.  **`advanced_operations.sh`**: Slicing, concatenation, and pattern matching.
9.  **`array_deletion_demo.sh`**: Explains how `unset` works and how to handle gaps in indices.

### `arrays/04_references/`
10. **`image_reference_examples.sh`**: Practical implementation of techniques shown in the `arrays_scr/` images.

---

## Building and Running

Ensure the scripts are executable and run them in your terminal from their respective directories.
- **Set Permissions:** `chmod +x */*.sh` and `chmod +x arrays/*/*.sh`
- **To Run:** `./01_input_and_output/basic_read.sh`, `./arrays/01_basics/basic_arrays.sh`, etc.

## Development Conventions

- **Readability:** All scripts use clear section headers and `echo` statements for formatted output.
- **Quoting:** Always use proper quoting (`""` or `''`) and `"${array[@]}"` to handle spaces correctly.
- **Visual References:** Scripts are derived from screenshots (in `04_references/` and `arrays/arrays_scr/`) for practical context.
