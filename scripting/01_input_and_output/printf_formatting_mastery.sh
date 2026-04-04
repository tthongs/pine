#!/bin/bash

# Printf Formatting Mastery
# Based on Core Concepts (Jan 2026)
# Description: Demonstrates advanced printf formatting for strings, numbers, and floats

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. String Formatting (Justification and Width)"
# Default is Right Justify (%6s)
printf "Right Justify (6): [%6s]\n" "pine"
# Left Justify using negative width (%-6s)
printf "Left Justify (6):  [%-6s]\n" "pine"

header "2. String Precision (Truncation)"
# Only print the first 4 characters
printf "Truncate to 4:     [%.4s]\n" "pinepine"
# Width of 12, but truncate to 4
printf "Width 12, Trunc 4: [%12.4s]\n" "pinepine"

header "3. Integer Formatting (Padding)"
# Pad with zeros
printf "Pad with 0s (10):  [%010d]\n" 25
# Space padding
printf "Pad with spaces:   [%10d]\n" 25

header "4. Floating Point Precision"
# Default precision (usually 6)
printf "Default float:     [%f]\n" 12.37
# Custom precision (2 decimal places)
printf "Float (2 dec):     [%.2f]\n" 12.37

header "5. Practical Example: Table Printing"
printf "\n| %-10s | %-10s | %5s |\n" "First" "Last" "Age"
printf "| %-10s | %-10s | %5d |\n" "Utkarsh" "Mishra" 25
printf "| %-10s | %-10s | %5d |\n" "Pine" "User" 100
