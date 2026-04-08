#!/bin/bash

# ==============================================================================
# manual_flag_parsing.sh - Hand-Coding Argument Parsing
# ==============================================================================
# While 'getopts' is preferred, you can manually iterate over arguments 
# using a 'for' loop and 'case' statements for simple scenarios.
# ==============================================================================

# Example Usage:
# ./manual_flag_parsing.sh -h
# ./manual_flag_parsing.sh -u -h

help_function() {
    printf "This is the help function for manual parsing.\n"
}

# Iterate over all positional parameters "$@"
for i in "$@"; do
    case "$i" in
        -h)
            help_function
            ;;
        -u)
            echo "Current User: $USER"
            ;;
        *)
            echo "Invalid argument: $i"
            ;;
    esac
done

echo "Manual Parsing Complete."
