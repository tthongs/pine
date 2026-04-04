# Learning Roadway - Project Roadmap

This roadway provides a centralized entry point to all educational materials in this project. 
It is automatically generated and updated to reflect the project's current state.

**To refresh this roadmap after adding new content, run:** 
```bash
./l_roadway/sync_roadway.sh
```

---

## Input And Output
- [**📘 Tutorial Guide**](../01_input_and_output/TUTORIAL.md)
- [**acknowledge_loop.sh**](../01_input_and_output/acknowledge_loop.sh): Demonstrates a simple while loop for repeating output or status checks.
- [**basic_read.sh**](../01_input_and_output/basic_read.sh): Demonstrates how to take user input using the 'read' command.
- [**printf_formatting_mastery.sh**](../01_input_and_output/printf_formatting_mastery.sh): Demonstrates advanced printf formatting for strings, numbers, and floats
- [**read_with_timeout.sh**](../01_input_and_output/read_with_timeout.sh): Demonstrates how to use timeouts and capture fixed numbers of characters.

## Loops And Logic
- [**📘 Tutorial Guide**](../02_loops_and_logic/TUTORIAL.md)
- [**eval_demo.sh**](../02_loops_and_logic/eval_demo.sh): Demonstrates dynamic command execution and variable manipulation.
- [**loop_control_continue.sh**](../02_loops_and_logic/loop_control_continue.sh): Teaches how to skip the rest of a loop's current iteration.
- [**nested_while_loops.sh**](../02_loops_and_logic/nested_while_loops.sh): Demonstrates how to use one while loop inside another for multi-dimensional iteration.
- [**while_loops_demo.sh**](../02_loops_and_logic/while_loops_demo.sh): Demonstrates infinite loops, finite counters, and waiting for files to appear.

## Text Processing And Ifs
- [**📘 Tutorial Guide**](../03_text_processing_and_ifs/TUTORIAL.md)
- [**file_extraction_logic.sh**](../03_text_processing_and_ifs/file_extraction_logic.sh): Demonstrates how to iterate through files, filter by extension using regex, 
- [**ifs_field_splitting.sh**](../03_text_processing_and_ifs/ifs_field_splitting.sh): Demonstrates how Bash uses IFS to split strings into tokens.
- [**ifs_newline_processing.sh**](../03_text_processing_and_ifs/ifs_newline_processing.sh): Demonstrates how to process data line by line using IFS.
- [**ifs_tab_separator.sh**](../03_text_processing_and_ifs/ifs_tab_separator.sh): Demonstrates how to handle tab-delimited data.
- [**ifs_variable_persistence.sh**](../03_text_processing_and_ifs/ifs_variable_persistence.sh): Teaches the difference between global IFS changes and command-scoped changes.
- [**line_by_line_parsing.sh**](../03_text_processing_and_ifs/line_by_line_parsing.sh): Demonstrates how to iterate through a file and apply different regex patterns to each line.
- [**list_files_only.sh**](../03_text_processing_and_ifs/list_files_only.sh): Demonstrates multiple ways to list regular files while excluding directories.
- [**regex_file_parsing.sh**](../03_text_processing_and_ifs/regex_file_parsing.sh): Demonstrates how to use grep with regular expressions to filter file content.
- [**tr_command_demo.sh**](../03_text_processing_and_ifs/tr_command_demo.sh): Lesson script.

## Redirection And Descriptors
- [**📘 Tutorial Guide**](../04_redirection_and_descriptors/TUTORIAL.md)
- [**io_redirection_basics.sh**](../04_redirection_and_descriptors/io_redirection_basics.sh): #!/bin/bash
- [**process_substitution.sh**](../04_redirection_and_descriptors/process_substitution.sh): #!/bin/bash

## Search And Metadata
- [**📘 Tutorial Guide**](../05_search_and_metadata/TUTORIAL.md)
- [**find_advanced_examples.sh**](../05_search_and_metadata/find_advanced_examples.sh): Demonstrates find with depth limits, permissions, and complex -exec commands
- [**find_basename_demo.sh**](../05_search_and_metadata/find_basename_demo.sh): Demonstrates how to apply 'basename' on the output of 'find' using various methods.
- [**find_mtime_exec.sh**](../05_search_and_metadata/find_mtime_exec.sh): Demonstrates parsing directory arguments and executing find

## Arguments And Parameters
- [**📘 Tutorial Guide**](../06_arguments_and_parameters/TUTORIAL.md)
- [**positional_parameters.sh**](../06_arguments_and_parameters/positional_parameters.sh): Demonstrates how to use positional parameters and set command
- [**shift_and_iteration.sh**](../06_arguments_and_parameters/shift_and_iteration.sh): Demonstrates how to iterate through arguments using shift

## Functions And Heredocs
- [**📘 Tutorial Guide**](../07_functions_and_heredocs/TUTORIAL.md)
- [**usage_functions.sh**](../07_functions_and_heredocs/usage_functions.sh): Demonstrates how to define a usage function with heredocs

## Shell Options
- [**📘 Tutorial Guide**](../08_shell_options/TUTORIAL.md)
- [**set_command_options.sh**](../08_shell_options/set_command_options.sh): Demonstrates how to use set for shell options like braceexpand and allexport

## Terminal Formatting
- [**📘 Tutorial Guide**](../09_terminal_formatting/TUTORIAL.md)
- [**ansi_color_codes.sh**](../09_terminal_formatting/ansi_color_codes.sh): Demonstrates how to use ANSI escape codes with printf for formatting
- [**hex_ascii_printf.sh**](../09_terminal_formatting/hex_ascii_printf.sh): Demonstrates how to print Hex and ASCII characters and use xxd
- [**interactive_tput_demo.sh**](../09_terminal_formatting/interactive_tput_demo.sh): Demonstrates tput for screen manipulation and formatting

## Arrays
- [**📘 Tutorial Guide**](../10_arrays/TUTORIAL.md)
- [**associative_arrays.sh**](../10_arrays/01_basics/associative_arrays.sh): #!/bin/bash
- [**basic_arrays.sh**](../10_arrays/01_basics/basic_arrays.sh): #!/bin/bash
- [**array_filtering_logic.sh**](../10_arrays/02_iteration/array_filtering_logic.sh): #!/bin/bash
- [**for_loops_mastery.sh**](../10_arrays/02_iteration/for_loops_mastery.sh): #!/bin/bash
- [**loop_conditions_and_expansion.sh**](../10_arrays/02_iteration/loop_conditions_and_expansion.sh): #!/bin/bash
- [**looping_arrays.sh**](../10_arrays/02_iteration/looping_arrays.sh): #!/bin/bash
- [**subshell_iteration_pitfalls.sh**](../10_arrays/02_iteration/subshell_iteration_pitfalls.sh): #!/bin/bash
- [**advanced_operations.sh**](../10_arrays/03_operations/advanced_operations.sh): #!/bin/bash
- [**array_deletion_demo.sh**](../10_arrays/03_operations/array_deletion_demo.sh): #!/bin/bash
- [**image_reference_examples.sh**](../10_arrays/04_references/image_reference_examples.sh): #!/bin/bash

## Awk
- [**📘 Tutorial Guide**](../11_awk/TUTORIAL.md)
- [**advanced_awk_functions.awk**](../11_awk/advanced_awk_functions.awk): Demonstrates user-defined functions, ARGC/ARGV, and custom logic
- [**built-in.awk**](../11_awk/built-in.awk): Lesson script.
- [**built_in_func.awk**](../11_awk/built_in_func.awk): Lesson script.
- [**f2.awk**](../11_awk/f2.awk): Lesson script.
- [**f4.awk**](../11_awk/f4.awk): Lesson script.
- [**find.sh**](../11_awk/find.sh): #!/usr/bin/bash
- [**for.awk**](../11_awk/for.awk): Lesson script.
- [**for_field.awk**](../11_awk/for_field.awk): Lesson script.
- [**for_fields.awk**](../11_awk/for_fields.awk): Lesson script.
- [**indx.awk**](../11_awk/indx.awk): Lesson script.
- [**length.awk**](../11_awk/length.awk): Lesson script.
- [**longest_line.awk**](../11_awk/longest_line.awk): Lesson script.
- [**match.awk**](../11_awk/match.awk): Lesson script.
- [**matchrecurring.awk**](../11_awk/matchrecurring.awk): Lesson script.
- [**matchrecurringsubstr.awk**](../11_awk/matchrecurringsubstr.awk): Lesson script.
- [**1advice.awk**](../11_awk/practice_awk/1advice.awk): Lesson script.
- [**run.sh**](../11_awk/run.sh): Lesson script.
- [**var.awk**](../11_awk/var.awk): Lesson script.

## Diff Command
- [**📘 Tutorial Guide**](../12_diff_command/TUTORIAL.md)
- [**diff_command_demo.sh**](../12_diff_command/diff_command_demo.sh): #!/bin/bash

## Eval In Bash
- [**📘 Tutorial Guide**](../13_eval_in_bash/TUTORIAL.md)
- [**eval_demo.sh**](../13_eval_in_bash/eval_demo.sh): Demonstrates dynamic command execution and variable manipulation.

## Parameter Expansion
- [**📘 Tutorial Guide**](../14_parameter_expansion/TUTORIAL.md)
- [**advanced_expansion.sh**](../14_parameter_expansion/advanced_expansion.sh): Demonstrates string replacement, slicing, and case manipulation.
- [**comprehensive_expansion.sh**](../14_parameter_expansion/comprehensive_expansion.sh): Demonstrates all major Parameter Expansion techniques in Bash
- [**parameter_expansion_basics.sh**](../14_parameter_expansion/parameter_expansion_basics.sh): Demonstrates how to extract paths and filenames using built-in Bash string manipulation.

## Ps
- [**📘 Tutorial Guide**](../15_ps/TUTORIAL.md)
- [**GEMINI.md**](../15_ps/GEMINI.md): Project Overview: Process Scripting (ps)
- [**ulimit_demo.sh**](../15_ps/ulimit_demo.sh): #!/bin/bash

## Regex
- [**📘 Tutorial Guide**](../16_regex/TUTORIAL.md)
- [**alpha_hash_n.sh**](../16_regex/alpha_hash_n.sh): #!/usr/bin/bash
- [**array_filtering_logic.sh**](../16_regex/array_filtering_logic.sh): #!/bin/bash
- [**file_extraction_logic.sh**](../16_regex/file_extraction_logic.sh): Demonstrates how to iterate through files, filter by extension using regex, 
- [**interactive_regex_tester.sh**](../16_regex/interactive_regex_tester.sh): Demonstrates how to take user input for both a string and a regex pattern to test matches.
- [**line_by_line_parsing.sh**](../16_regex/line_by_line_parsing.sh): Demonstrates how to iterate through a file and apply different regex patterns to each line.
- [**match.awk**](../16_regex/match.awk): Lesson script.
- [**matchrecurring.awk**](../16_regex/matchrecurring.awk): Lesson script.
- [**regex_file_parsing.sh**](../16_regex/regex_file_parsing.sh): Demonstrates how to use grep with regular expressions to filter file content.
- [**sed_tutorial.sh**](../16_regex/sed_tutorial.sh): #!/bin/bash
- [**sort_emails.sh**](../16_regex/sort_emails.sh): Lesson script.

## Sed
- [**📘 Tutorial Guide**](../17_sed/TUTORIAL.md)
- [**sed_tutorial.sh**](../17_sed/sed_tutorial.sh): #!/bin/bash

## Sort Command
- [**📘 Tutorial Guide**](../18_sort_command/TUTORIAL.md)
- [**sort_basics.sh**](../18_sort_command/sort_basics.sh): #!/bin/bash

## Time Command
- [**📘 Tutorial Guide**](../19_time_command/TUTORIAL.md)
- [**time_basics.sh**](../19_time_command/time_basics.sh): Demonstrates how to use 'time' to measure the execution duration of commands and scripts.

## Assignments and Exercises
- [**alt_print_ascii_all.sh**](../assignments/ascii/alt_print_ascii_all.sh) (assignments/ascii)
- [**print_all_ascii.sh**](../assignments/ascii/print_all_ascii.sh) (assignments/ascii)
- [**print_ascii.sh**](../assignments/ascii/print_ascii.sh) (assignments/ascii)
- [**sort_emails.sh**](../assignments/email_grep/sort_emails.sh) (assignments/email_grep)
- [**first_line.sh**](../assignments/first_line_shebang/first_line.sh) (assignments/first_line_shebang)
- [**lines_grep.sh**](../assignments/lines_grep/lines_grep.sh) (assignments/lines_grep)
- [**grep1to11.sh**](../assignments/ranges_grep/grep1to11.sh) (assignments/ranges_grep)
- [**alpha_hash_n.sh**](../assignments/read_ifs_file/alpha_hash_n.sh) (assignments/read_ifs_file)
- [**alpha_hash.sh**](../assignments/read_ifs_file/alpha_hash.sh) (assignments/read_ifs_file)
- [**q1.sh**](../assignments/sed_cmd/q1.sh) (assignments/sed_cmd)
- [**q2.sh**](../assignments/sed_cmd/q2.sh) (assignments/sed_cmd)
- [**q3.sh**](../assignments/sed_cmd/q3.sh) (assignments/sed_cmd)
- [**q4.sh**](../assignments/sed_cmd/q4.sh) (assignments/sed_cmd)

