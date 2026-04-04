# Bash Scripting Tutorial (Clean & Comprehensive)

A collection of professional, well-commented example scripts for learning Bash scripting, organized by topic.

## 🛤️ Learning Roadway

For a structured, easy-to-navigate path through all materials in this project, please refer to the **[Learning Roadway (l_roadway)](./l_roadway/ROADMAP.md)**.

The roadway is automatically updated as new content is added. To manually refresh it, run:
```bash
./l_roadway/sync_roadway.sh
```

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

### `03_text_processing_and_ifs/` 
7. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator for tokenization.
8. **`ifs_tab_separator.sh`**: Handling tab-delimited data using specific IFS syntax.
9. **`ifs_newline_processing.sh`**: Iterating over data line-by-line using newline delimiters.
10. **`ifs_variable_persistence.sh`**: Understanding global vs. command-scoped variable changes.
11. **`regex_file_parsing.sh`**: Using `grep -E` for basic file content filtering and anchors.
12. **`line_by_line_parsing.sh`**: Advanced regex using the Bash `=~` operator and `BASH_REMATCH`.
13. **`tr_command_demo.sh`**: Practical implementation of character translation and deletion.
14. **`list_files_only.sh`**: Extracting only regular files from a directory.
15. **`file_extraction_logic.sh`**: Iterating files, regex filtering, and extracting filename parts using `cut`.

### `04_redirection_and_descriptors/`
16. **`io_redirection_basics.sh`**: Standard input, output, and error redirection using descriptors.
17. **`process_substitution.sh`**: Treating command output as a file path using `<(command)`.

### `05_search_and_metadata/`
18. **`find_basename_demo.sh`**: Find files and extract basename.
19. **`find_mtime_exec.sh`**: Use find with mtime to locate and delete old files.

### `06_arguments_and_parameters/`
20. **`positional_parameters.sh`**: Demonstrates setting and using positional parameters.
21. **`shift_and_iteration.sh`**: Iterating through arguments using the shift command.

### `07_functions_and_heredocs/`
22. **`usage_functions.sh`**: Creating usage functions with multi-line heredocs.

### `08_shell_options/`
23. **`set_command_options.sh`**: Toggling shell options like braceexpand and allexport.

### `09_terminal_formatting/`
24. **`ansi_color_codes.sh`**: Using ANSI escape codes for colored text output.
25. **`hex_ascii_printf.sh`**: Printing hexadecimal and ASCII values using printf and xxd.

### `10_arrays/`
26. **`basic_arrays.sh`**: Initializing and accessing array elements.
27. **`associative_arrays.sh`**: Using key-value pairs in Bash 4.0+.
28. **`looping_arrays.sh`**: Iterating over indices and values.

### `11_awk/`
29. **`advanced_awk_functions.awk`**: User-defined functions and ARGC/ARGV.
30. **`built-in_func.awk`**: Mastering length, index, and substr.

### `12_diff_command/`
31. **`diff_command_demo.sh`**: File comparison, brief/unified/side-by-side formats.

### `13_eval_in_bash/`
32. **`eval_demo.sh`**: Dynamic command execution and variable manipulation.

### `14_parameter_expansion/`
33. **`parameter_expansion_basics.sh`**: High-performance path/file extraction.
34. **`advanced_expansion.sh`**: String replacement, slicing, and case conversion.

### `15_ps/`
35. **`ulimit_demo.sh`**: Viewing and managing shell resource limits.

### `16_regex/`
36. **`TUTORIAL.md`**: Central index for consolidated regex scripts.

### `17_sed/`
37. **`sed_tutorial.sh`**: Stream editing mastery (printing, deleting, substituting).

### `18_sort_command/`
38. **`sort_basics.sh`**: Key-based and human-readable sorting.

### `19_time_command/`
39. **`time_basics.sh`**: Measuring execution duration and resource usage.

### `references/` 
- **`tutorial_notes.txt`**: General notes on quotes, line numbers, find/replace, and more.
- **`main_readme.txt`**: Comprehensive history and foundational notes.

### `data/` 
- **`create_samples.sh`**: Run this from the root to (re)generate all sample data for manual exploration.

---

## Building and Running

Ensure the scripts are executable and run them in your terminal:
- **Set Permissions:** `chmod 777 */*.sh` and `chmod 777 */*/*.sh`
- **To Run:** `./01_input_and_output/basic_read.sh`, `./14_parameter_expansion/advanced_expansion.sh`, etc.

## Development Conventions
- **Readability:** All scripts use clear section headers and `echo` statements for formatted output.
- **Self-Contained:** Tutorial scripts generate their own temporary data and cleanup after execution.
- **Performance:** Built-in shell features (like Parameter Expansion) are preferred over external tools for single-variable tasks.
