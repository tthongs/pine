#!/bin/bash

# Basic User Input (read)
# Based on Core Concepts
# Description: Demonstrates how to take user input using the 'read' command.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Input and Variable Assignment"
# Using -p to provide a prompt directly
read -p "Enter your first name: " name
echo "Hello, $name!"

header "2. Reading Multiple Values"
note "You can read multiple variables at once; 'read' splits input by IFS (usually space)."
read -p "Enter two numbers (separated by space): " n1 n2

# Basic validation
if [[ -z $n1 || -z $n2 ]]; then
    note "Validation: One or both values are empty. Exiting."
    exit 1
fi

header "3. Performing Arithmetic with expr"
note "The 'expr' command is a classic way to do math in Bash."
echo "Adding $n1 and $n2..."
result=$(expr "$n1" + "$n2")
echo "The Sum is: $result"

header "4. Modern Arithmetic (( ))"
note "In modern Bash, $(( )) is preferred over 'expr'."
echo "The sum calculated using modern syntax is: $((n1 + n2))"
