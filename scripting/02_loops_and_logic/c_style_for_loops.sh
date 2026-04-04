#!/bin/bash

# C-Style For Loops and Nested Logic
# Based on Core Concepts
# Description: Demonstrates C-style for loops, nested structures, and logic flags.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Nested C-Style For Loops"
note "Demonstrating the double parentheses syntax for loop control and logic flags."

# Original logic refactored for clarity
for ((i=1; i<=4; i++)); do
    flag=0
    echo "Outer Loop (i=$i):"
    for ((k=1; k<=$i; k++)); do
        # Use a flag to print the outer loop index only once per inner loop sequence
        if [[ $flag -eq 0 ]]; then
            echo "  Value: $i (First iteration of k)"
        else
            echo "  Value: (Subsequent iteration k=$k)"
        fi
        ((flag++))
    done
done

header "2. Simple Numeric Range"
note "A standard 0 to N iteration using C-style syntax."
for ((i=0; i<3; i++)); do
    echo "Iteration: $i"
done

note "C-style loops are often preferred when numeric ranges or complex increments are needed."
