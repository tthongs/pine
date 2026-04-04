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
3. **`acknowledge_loop.sh`**: A simple while loops for repeating terminal output.
4. **`let_arithmetic_basics.sh`**: Using the `let` command for arithmetic and logic.

### `02_loops_and_logic/` 
5. **`while_loops_demo.sh`**: Finite counters, infinite loops, and waiting for file-existence events.
6. **`nested_while_loops.sh`**: Multi-dimensional iteration (multiplication tables and patterns).
7. **`loop_control_continue.sh`**: Using `continue` to skip iterations and `break` to exit loops.
8. **`arithmetic_expansion_demo.sh`**: Comparison using `[[ ]]` and `(( ))`.
9. **`case_statement_files.sh`**: Extension and existence checks with `case`.
10. **`infinite_loop_demo.sh`**: Creating infinite loops using `:`.
11. **`conditional_ls_demo.sh`**: Simple argument-based command flags.
12. **`boolean_logic_tests.sh`**: Logic operators (`&&`, `||`, `!`) and `test`.
13. **`string_testing_demo.sh`**: Focuses on `-z` and `-n` string tests.
14. **`while_ls_wait_demo.sh`**: Monitoring filesystem events with `while`.
15. **`command_switcher_case.sh`**: CLI menu pattern using `case`.
16. **`c_style_for_loops.sh`**: C-style `for` loops, nested structures, and logic flags.

### `03_text_processing_and_ifs/` 
17. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator for tokenization.
18. **`ifs_tab_separator.sh`**: Handling tab-delimited data using specific IFS syntax.
19. **`ifs_newline_processing.sh`**: Iterating over data line-by-line using newline delimiters.
20. **`ifs_variable_persistence.sh`**: Understanding global vs. command-scoped variable changes.
21. **`regex_file_parsing.sh`**: Using `grep -E` for basic file content filtering and anchors.
22. **`line_by_line_parsing.sh`**: Advanced regex using the Bash `=~` operator and `BASH_REMATCH`.
23. **`tr_command_demo.sh`**: Practical implementation of character translation and deletion.
24. **`list_files_only.sh`**: Extracting only regular files from a directory.
25. **`file_extraction_logic.sh`**: Iterating files, regex filtering, and extracting filename parts using `cut`.
26. **`extension_stripping_demo.sh`**: Efficient extension removal using parameter expansion.

### `04_redirection_and_descriptors/`
27. **`io_redirection_basics.sh`**: Standard input, output, and error redirection using descriptors.
28. **`process_substitution.sh`**: Treating command output as a file path using `<(command)`.
29. **`process_substitution_while.sh`**: Maintaining variable state in `while` loops.

### `05_search_and_metadata/`
30. **`find_basename_demo.sh`**: Find files and extract basename.
31. **`find_mtime_exec.sh`**: Use find with mtime to locate and delete old files.
32. **`find_process_substitution.sh`**: Combining `find` with process substitution.

### `06_arguments_and_parameters/`
33. **`positional_parameters.sh`**: Demonstrates setting and using positional parameters.
34. **`shift_and_iteration.sh`**: Iterating through arguments using the shift command.
35. **`positional_params_list.sh`**: Detailed list of special positional variables.
36. **`shift_multi_dir_find.sh`**: Advanced `shift` for directory-based cleanup tasks.
37. **`args_regex_handling.sh`**: Filtering arguments with regex.

### `07_functions_and_heredocs/`
38. **`usage_functions.sh`**: Creating usage functions with multi-line heredocs.
39. **`function_scope_demo.sh`**: Understanding `local` vs. global variables.
40. **`function_arguments_iteration.sh`**: Passing and iterating over multiple function arguments.

### `08_shell_options/`
41. **`set_command_options.sh`**: Toggling shell options like braceexpand and allexport.

### `09_terminal_formatting/`
42. **`ansi_color_codes.sh`**: Using ANSI escape codes for colored text output.
43. **`hex_ascii_printf.sh`**: Printing hexadecimal and ASCII values using printf and xxd.

### `10_arrays/`
44. **`comprehensive_arrays.sh`**: Master script for indexed and associative arrays.

### `11_awk/`
45. **`advanced_awk_functions.awk`**: User-defined functions and ARGC/ARGV.
46. **`built-in_func.awk`**: Mastering length, index, and substr.

### `12_diff_command/`
47. **`diff_command_demo.sh`**: File comparison, brief/unified/side-by-side formats.

### `13_eval_in_bash/`
48. **`eval_demo.sh`**: Dynamic command execution and variable manipulation.
49. **`dynamic_eval_demo.sh`**: Interactive command building with `eval`.

### `14_parameter_expansion/`
50. **`parameter_expansion_basics.sh`**: High-performance path/file extraction.
51. **`advanced_expansion.sh`**: String replacement, slicing, and case conversion.
52. **`existence_check_operator.sh`**: Enforcing required variables with `${var:?}`.

### `15_ps/`
53. **`ulimit_demo.sh`**: Viewing and managing shell resource limits.

### `16_regex/`
54. **`interactive_regex_match.sh`**: User-driven regex matching tool.
55. **`filename_parsing_cut.sh`**: Extracting file metadata using basic regex and `cut`.
56. **`bash_rematch_capture.sh`**: Advanced group capturing using `BASH_REMATCH`.

### `17_sed/`
57. **`sed_tutorial.sh`**: Stream editing mastery (printing, deleting, substituting).

### `18_sort_command/`
58. **`sort_basics.sh`**: Key-based and human-readable sorting.

### `19_time_command/`
59. **`time_basics.sh`**: Measuring execution duration and resource usage.

### `21_subshells_and_processes/`
60. **`export_scope_demo.sh`**: Demonstrates variable inheritance across processes.
61. **`pid_basics.sh`**: Tracking process IDs with `$$` and `$BASHPID`.
62. **`subshell_variable_scope.sh`**: Pipeline-induced isolation of variable changes.
63. **`pipeline_subshell_scope.sh`**: Further subshell isolation examples.

### `22_command_substitution/`
64. **`cmd_substitution_basics.sh`**: Fundamentals of capturing command output.
65. **`function_scope_substitution.sh`**: Capturing function output and subshell scope side-effects.

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
