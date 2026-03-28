#!/bin/bash

# Process Substitution
# Based on Screenshot_20260328_212838.png
# Demonstrates how to treat the output of a command as a file.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Process Substitution"
# Based on Screenshot_20260328_212838.png
# <(command) creates a temporary named pipe or /dev/fd/ entry.
note "Using cat <(command) to read output as if it were a file."
cat <(echo "This is from a subshell")

header "2. Practical Example: Diffing Command Outputs"
note "Process substitution is great for commands that expect file paths (like diff)."
diff <(echo "Line A") <(echo "Line B") || echo "Differences found (as expected)"

header "3. Comparison with Pipes"
note "Unlike pipes, process substitution allows multiple command outputs to be handled as files."
# example: join <(sort file1) <(sort file2)

header "4. Solving the Subshell Variable Problem"
# Based on Screenshot_20260328_214528.png
note "When you pipe to a while loop, it runs in a subshell. Use process substitution to avoid this."

a=10
echo "Initial value: a=$a"

# This loop runs in the CURRENT shell because it uses redirection from a process substitution.
while IFS= read -r line; do
    ((a++))
    echo "  Inside loop: a=$a (processing: $line)"
done < <(echo -e 'a\nb')

echo "After loop (with process substitution): a=$a"
note "The value is 12 because we avoided the subshell!"

header "5. Example from Screenshot"
echo "The command 'cat <(find /etc -type f)' runs 'find' and passes its output stream"
echo "to 'cat' as if it were a file path."
# cat <(find /etc -type f 2>/dev/null | head -n 5)
