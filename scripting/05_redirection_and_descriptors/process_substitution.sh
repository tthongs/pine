#!/bin/bash

# Process Substitution
# Demonstrates how to treat the output of a command as a file.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Process Substitution"
# <(command) creates a temporary named pipe or /dev/fd/ entry.
note "Using cat <(command) to read output as if it were a file."
cat <(echo "This is from a subshell")

header "2. Practical Example: Diffing Command Outputs"
note "Process substitution is great for commands that expect file paths (like diff or wc)."
# Example: wc <(egrep -i "bash" file)
wc -l <(echo -e "Line 1\nLine 2")

header "3. Sorting Multiple Command Outputs"
note "You can pass MULTIPLE process substitutions to a single command."
# Example: sort -k9,9 <(ls -l d1) <(ls -l d2)
# Here we'll simulate sorting two lists:
sort <(echo -e "cat\ndog") <(echo -e "bird\napple")
note "The command above combined the results of two commands and sorted them together."

header "4. Solving the Subshell Variable Problem"
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

header "5. Command Example"
echo "The command 'cat <(find /etc -type f)' runs 'find' and passes its output stream"
echo "to 'cat' as if it were a file path."
# cat <(find /etc -type f 2>/dev/null | head -n 5)
