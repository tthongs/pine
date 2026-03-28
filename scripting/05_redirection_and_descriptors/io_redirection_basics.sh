#!/bin/bash

# I/O Redirection and File Descriptors
# Explains standard input, output, and error redirection.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create a temporary file for demonstration
TEMP_FILE="sample_data.txt"
echo -e "Line 1: Hello\nLine 2: World\nLine 3: Bash" > "$TEMP_FILE"

header "1. Standard Input (stdin) - Descriptor 0"
# 'cat < file' and 'cat 0< file' are equivalent.
note "Using '<' to redirect stdin from a file."
cat < "$TEMP_FILE"

note "Using '0<' explicitly (descriptor 0 is stdin)."
cat 0< "$TEMP_FILE"

note "Using '0<' with grep to count matches."
# Example: egrep -i "bash" 0< file | wc
grep -i "bash" 0< "$TEMP_FILE" | wc -l

header "2. Standard Output (stdout) - Descriptor 1"
# '>' is equivalent to '1>'.
note "Redirecting stdout to a new file (overwrites)."
echo "Fresh content" > output.txt
cat output.txt

note "Saving intermediate results to a temporary file."
grep -i "bash" 0< "$TEMP_FILE" > temp_results.txt
wc -l temp_results.txt

note "Appending to a file using '>>'."
echo "Appended content" >> output.txt
cat output.txt

header "3. Standard Error (stderr) - Descriptor 2"
# '2> /dev/null' suppresses error messages.
note "Running a command that fails (listing a non-existent file)."
ls /non_existent_path

note "Suppressing the error message using '2> /dev/null'."
ls /non_existent_path 2> /dev/null
echo "Error was suppressed, exit code was: $?"

note "Command example: find /etc -type f 2> /dev/null"
# (Skipping execution to avoid long output, but explaining it.)
echo "The command 'find /etc -type f 2> /dev/null' finds all files in /etc,"
echo "but hides all 'Permission denied' errors by redirecting stderr (2) to /dev/null."

header "4. Combining Redirects"
note "Redirecting both stdout and stderr to the same file."
ls /etc/passwd /non_existent_path > all_output.txt 2>&1
# Or in modern Bash: &> all_output.txt
cat all_output.txt

header "5. Redirecting stderr to stdout"
note "The command 'find /etc -type f 2>&1' merges stderr (2) into stdout (1)."
# This is useful when you want to pipe BOTH errors and normal output to the next command.
find /etc -maxdepth 1 -type f 2>&1 | head -n 5

# Cleanup
rm "$TEMP_FILE" output.txt all_output.txt
