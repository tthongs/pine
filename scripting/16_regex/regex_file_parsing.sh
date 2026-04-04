#!/bin/bash

# Regex File Parsing
# Based on Core Concepts
# Description: Demonstrates how to use grep with regular expressions to filter file content.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create sample data
cat <<EOF > regex_data.txt
apple
12345
banana789
99redballoons
_underscore
NoDigitsHere
EOF

header "1. Basic Grep (Literal Match)"
note "Finding the literal string 'apple'."
grep "apple" regex_data.txt

header "2. Matching Digits only"
note "Using the [0-9] character class to find lines containing ONLY numbers."
grep -E "^[0-9]+$" regex_data.txt

header "3. Lines Starting with Numbers"
note "Using '^' anchor to find lines that begin with a digit."
grep -E "^[0-9]" regex_data.txt

header "4. Lines Containing at least one Letter"
note "Using the [a-zA-Z] class."
grep -E "[a-zA-Z]" regex_data.txt

header "5. Inverse Matching (-v)"
note "Finding lines that do NOT contain any digits."
grep -vE "[0-9]" regex_data.txt

# Cleanup
rm regex_data.txt
