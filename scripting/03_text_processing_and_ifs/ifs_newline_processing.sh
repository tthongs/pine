#!/bin/bash

# IFS with Newline Processing
# Description: Demonstrates how to process data line by line using IFS.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Sample multi-line content
data="First Line
Second Line
Third Line"

header "1. Processing lines with IFS=\$'\\n'"
note "Setting IFS to a newline allows iterating over lines in a string."

(
    IFS=$'\n'
    for line in $data; do
        echo "Processing line: $line"
    done
)

header "2. Practical Example: Processing Command Output"
note "Iterating over directory contents line by line."

(
    IFS=$'\n'
    for item in $(ls -l | tail -n 3); do
        echo "LS line: $item"
    done
)
