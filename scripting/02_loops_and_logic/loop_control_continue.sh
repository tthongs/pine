#!/bin/bash

# Loop Control: The Continue Statement
# Based on Core Concepts
# Description: Teaches how to skip the rest of a loop's current iteration.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Skipping Specific Numbers"
note "This loop skips even numbers using 'continue'."

num=0
while [[ $num -lt 10 ]]; do
    num=$((num + 1))
    
    # Check if number is even
    if [[ $((num % 2)) -eq 0 ]]; then
        note "Skipping even number: $num"
        continue
    fi
    
    echo "Processing odd number: $num"
done

header "2. Filtering Files in a Directory"
note "Skipping hidden files starting with '.' in a loop."

# Create some temporary files for demonstration
touch file1 file2 .hidden_file file3

for f in *; do
    # Skip if it's a hidden file
    if [[ $f == .* ]]; then
        note "Skipping hidden file: $f"
        continue
    fi
    
    # Skip directories or our script itself
    if [[ -d "$f" || "$f" == "*.sh" ]]; then
        continue
    fi

    echo "Found regular file: $f"
done

# Cleanup
rm file1 file2 .hidden_file file3

header "3. Break vs. Continue"
note "'continue' skips to the NEXT iteration; 'break' exits the loop ENTIRELY."
note "This example stops at 5 using 'break'."

i=1
while [[ $i -le 10 ]]; do
    if [[ $i -eq 5 ]]; then
        echo "Found 5! Breaking out of loop."
        break
    fi
    echo "i = $i"
    i=$((i + 1))
done

echo "End of loop control demo."
