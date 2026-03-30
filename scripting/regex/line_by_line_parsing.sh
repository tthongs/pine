#!/bin/bash

# Line-by-Line Regex Parsing
# Based on Core Concepts
# Description: Demonstrates how to iterate through a file and apply different regex patterns to each line.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create sample data
cat <<EOF > input.txt
User: Alice, Age: 25
Admin: Bob, Age: 40
InvalidData123
User: Charlie, Age: 30
EOF

header "1. Basic Regex Operator Logic (=~)"
note "The =~ operator returns 0 (success) if the string matches the pattern, or 1 (failure) otherwise."

if [[ "abc" =~ ^a ]]; then
    echo "Success: 'abc' starts with 'a' (exit code: $?)"
fi

if ! [[ "abc" =~ ^b ]]; then
    echo "Success: 'abc' does NOT start with 'b' (exit code: $? after negation)"
fi

header "2. Processing file line by line"
note "We use 'while read' and the =~ operator for regex matching within Bash."

while read -r line; do
    # Regex to find 'User: [Name], Age: [Number]'
    if [[ $line =~ User:\ ([a-zA-Z]+),\ Age:\ ([0-9]+) ]]; then
        echo "Found User: ${BASH_REMATCH[1]} (Age: ${BASH_REMATCH[2]})"
    
    # Regex to find 'Admin: [Name]'
    elif [[ $line =~ Admin:\ ([a-zA-Z]+) ]]; then
        echo "Found Admin: ${BASH_REMATCH[1]}"
    
    # Catch-all for non-matching lines
    else
        note "Skipping malformed line: $line"
    fi
done < input.txt

# Cleanup
rm input.txt
