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
7. **`eval_demo.sh`**: Explains the `eval` command for dynamic execution.

### `03_text_processing_and_ifs/` 
8. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator.
9. **`ifs_tab_separator.sh`**: Using tabs as delimiters.
10. **`ifs_newline_processing.sh`**: Processing file content line by line using IFS.
11. **`ifs_variable_persistence.sh`**: Demonstrates IFS scope and persistence.
12. **`regex_file_parsing.sh`**: Using regex for basic file content filtering.
13. **`line_by_line_parsing.sh`**: Advanced file parsing and conditional logic.
14. **`tr_command_demo.sh`**: Practical implementation of the `tr` command.

### `diff_command/`
15. **`diff_command_demo.sh`**: Comparing file contents, handling invisible differences, directory listings, and filtered command outputs.

### `sed/`
16. **`sed_tutorial.sh`**: Deleting, printing, grouping, and in-place editing with `sed`.

### `sort_command/`
17. **`sort_basics.sh`**: Key-based sorting, human-readable size sorting, and handling 'total' lines in `ls -l`.

### `05_redirection_and_descriptors/`
18. **`io_redirection_basics.sh`**: Standard input, output, and error redirection using descriptors.
19. **`process_substitution.sh`**: Using `<(command)` to treat output as a file path and avoid subshells.

### `ps/`
20. **`ulimit_demo.sh`**: Explains shell resource limits (file descriptors, max processes, etc.).

### `regex/`
21. **`TUTORIAL.md`**: Central index for consolidated regex scripts.

### `eval_in_bash/`
22. **`TUTORIAL.md`**: Central index for consolidated `eval` command scripts, including dynamic pipeline construction.

### `04_references/` 
23. **`tutorial_notes.txt`**: General notes on quotes, line numbers, find/replace, and more.
24. **`main_readme.txt`**: Comprehensive history and foundational notes.

### `data/` 
- Contains sample files like `f1` and `tt` used by the tutorial scripts.
- **`create_samples.sh`**: Run this from the root to (re)generate all sample data for manual exploration.

---

## Bash Array Tutorial (Specialized Deep Dive)

### `arrays/01_basics/`
1.  **`basic_arrays.sh`**: Declaration, initialization, length, and appending.
2.  **`associative_arrays.sh`**: Key-value stores using `declare -A`.

### `arrays/02_iteration/`
3.  **`for_loops_mastery.sh`**: Comprehensive guide to iterating through arrays.
4.  **`looping_arrays.sh`**: Best practices for iteration and word splitting prevention.
5.  **`array_filtering_logic.sh`**: Filtering array elements using a custom function.
6.  **`loop_conditions_and_expansion.sh`**: Loops with conditions and various expansion types.
7.  **`subshell_iteration_pitfalls.sh`**: How pipes and subshells affect variable persistence.

### `arrays/03_operations/`
8.  **`advanced_operations.sh`**: Slicing, concatenation, and pattern matching.
9.  **`array_deletion_demo.sh`**: `unset` and handling gaps in indices.

### `arrays/04_references/`
10. **`image_reference_examples.sh`**: Practical implementation of techniques from visual references.

---

## Building and Running

Ensure the scripts are executable and run them in your terminal:
- **Set Permissions:** `chmod +x */*.sh` and `chmod +x arrays/*/*.sh`
- **To Run:** `./01_input_and_output/basic_read.sh`, `./eval_in_bash/eval_demo.sh`, etc.

## Development Conventions
- **Readability:** All scripts use clear section headers and `echo` statements for formatted output.
- **Quoting:** Always use proper quoting (`""` or `''`) to handle spaces correctly.
