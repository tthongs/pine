#!/bin/bash

# Positional Parameters
# Based on Core Concepts
# Description: Demonstrates how to use positional parameters and set command

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Setting Positional Parameters"
note "You can manually set positional parameters using 'set --'"
set -- A B C D E
echo "Parameters are: $@"

header "2. Checking the number of arguments"
echo "Total number of arguments: $#"

header "3. Using shift"
note "The 'shift' command shifts positional parameters to the left."
shift 2
echo "Parameters after 'shift 2': $@"
echo "New total number of arguments: $#"
