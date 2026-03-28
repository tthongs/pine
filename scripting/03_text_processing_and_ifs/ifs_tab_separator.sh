#!/bin/bash

# IFS with Tab Separators
# Description: Demonstrates how to handle tab-delimited data.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create a tab-separated string using $'...' syntax
line=$'Name\tAge\tCity'
echo "Original line (with tabs): $line"

header "1. Correctly specifying a Tab in IFS"
note "In Bash, use \$'\\t' to represent a literal tab character."

(
    IFS=$'\t'
    for item in $line; do
        echo "Column: $item"
    done
)

header "2. Reading multiple columns"
note "Using read with a tab delimiter."
IFS=$'\t' read -r name age city <<< "$line"
echo "Extracted -> Name: $name, Age: $age, City: $city"
