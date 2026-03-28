#!/bin/bash

# Nested While Loops
# Based on Core Concepts
# Description: Demonstrates how to use one while loop inside another for multi-dimensional iteration.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Multiplication Table (3x3)"
note "The outer loop controls rows, the inner loop controls columns."

i=1
while [[ $i -le 3 ]]; do
    j=1
    while [[ $j -le 3 ]]; do
        echo -n "$((i * j)) "
        j=$((j + 1))
    done
    echo "" # New line after each row
    i=$((i + 1))
done

header "2. Pattern Printing"
note "Changing the inner loop's condition based on the outer loop's value."

row=1
while [[ $row -le 5 ]]; do
    col=1
    while [[ $col -le $row ]]; do
        echo -n "*"
        col=$((col + 1))
    done
    echo ""
    row=$((row + 1))
done

echo "End of nested loops demo."
