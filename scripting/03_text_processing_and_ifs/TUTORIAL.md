# Text Processing and IFS Tutorial Index

This directory covers Internal Field Separator (IFS) manipulation and advanced text parsing techniques.

## Core Files

1. **`ifs_field_splitting.sh`**: Basics of the Internal Field Separator.
2. **`ifs_tab_separator.sh`**: Using tabs as delimiters.
3. **`ifs_newline_processing.sh`**: Processing file content line by line using IFS.
4. **`ifs_variable_persistence.sh`**: Demonstrates IFS scope and persistence.
5. **`regex_file_parsing.sh`**: Using regex for basic file content filtering.
6. **`line_by_line_parsing.sh`**: Advanced file parsing and conditional logic.
7. **`tr_command_demo.sh`**: Practical implementation of the tr command.
8. **`list_files_only.sh`**: Extracting only regular files from a directory.
9. **`file_extraction_logic.sh`**: Practical logic for filtering by extension and parsing names.

## Key Takeaways
- **IFS**: Control how Bash splits strings into tokens.
- **read -r**: Always use -r to prevent backslashes from being interpreted.
- **Parameter Expansion**: Built-in shell features are faster than external commands.
- **Regex**: Use [[ $var =~ pattern ]] for internal Bash pattern matching.
