#!/bin/bash

# Shift and Iteration
# Based on Core Concepts
# Description: Demonstrates how to iterate through arguments using shift

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Check if arguments are provided, otherwise set defaults
if [[ $# -eq 0 ]]; then
    set -- "Arg1" "Arg2" "Arg3"
    note "No arguments provided. Setting default: $@"
fi

header "1. Iterating through arguments"
echo "Let's process args: $@"
while [[ $# -ne 0 ]]; do
    echo "Processing: $1"
    shift
done

note "After iteration, the number of arguments is: $#"
