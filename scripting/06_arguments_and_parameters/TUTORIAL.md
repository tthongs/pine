# Arguments and Parameters Tutorial Index

This directory focuses on how Bash scripts receive and process external data.

## Core Files

1. **`positional_parameters.sh`**: Teaches `$0`, `$1`, `$#`, and `$@` logic.
2. **`shift_and_iteration.sh`**: Demonstrates how to iterate through an unknown number of arguments.
3. **`positional_params_list.sh`**: Lists all special positional variables ($0-$9, $@, $#, etc.).
4. **`shift_multi_dir_find.sh`**: Advanced use of `shift` to process multiple directory arguments for cleanup.
5. **`args_regex_handling.sh`**: Demonstrates filtering positional arguments using regex patterns.
6. **`getopts_parsing_demo.sh`**: Standard short-flag parsing with the 'getopts' built-in.
7. **`manual_flag_parsing.sh`**: Manually parsing arguments with 'for' loops and 'case'.

## Key Concepts

### **Positional Parameters**
- **`$0`**: The script name.
- **`$1`, `$2`, ...**: The first, second, etc., arguments.
- **`$#`**: The total count of arguments passed.
- **`$@`**: All arguments as a quoted list.

### **The `shift` Command**
- Used to "consume" the first argument and shift all others left.
- Essential for processing lists of files or directories passed to a script.

## Practical Logic
- **`while [[ "$#" -ne 0 ]]`**: A common loop pattern for processing all arguments until none are left.

## Key Takeaways
- Always validate the number of arguments (`$#`) at the start of your script.
- Provide a `usage()` function to help users understand what parameters are expected.
