#!/bin/bash

# ==============================================================================
# getopts_parsing_demo.sh - Standard Flag Parsing with getopts
# ==============================================================================
# The 'getopts' built-in is the standard way to parse short, single-character 
# flags in Bash. It handles grouped flags (e.g., -uh) and invalid options.
# ==============================================================================

header() {
    echo -e "\n\033[1;34m>>> $1 <<<\033[0m"
}

# ------------------------------------------------------------------------------
# Example 1: Basic Flags
# ------------------------------------------------------------------------------
# Usage: ./getopts_parsing_demo.sh -u -h
header "1. Basic Flags (-u, -h)"

# 'uh' means the script accepts -u and -h as standalone flags.
while getopts 'uh' var; do
    case "$var" in
        u)
            echo "Current User: $USER"
            ;;
        h)
            echo "Displaying Help: This script accepts -u (user) and -h (help)."
            ;;
        *)
            echo "Invalid option provided."
            ;;
    esac
done

# Reset getopts internal index for the next example
OPTIND=1

# ------------------------------------------------------------------------------
# Example 2: Flags with Arguments and Silent Error Reporting
# ------------------------------------------------------------------------------
# Usage: ./getopts_parsing_demo.sh -v "some value"
header "2. Flags with Arguments and Silent Errors"

# ':v:' breakdown:
# - Leading ':' : Enables silent error reporting (Bash won't print its own errors).
# - 'v:'        : The 'v' flag requires an argument.
# - 'h'         : The 'h' flag is a standalone flag.
while getopts ':hv:' opt; do
    case "$opt" in
        h)
            echo "Help: Use -v <value> to provide a parameter."
            ;;
        v)
            echo "Value provided via -v: $OPTARG"
            ;;
        \?)
            echo "Error: Invalid option -$OPTARG"
            ;;
        :)
            echo "Error: Option -$OPTARG requires an argument."
            ;;
    esac
done

echo -e "\n\033[1;32mParsing Complete.\033[0m"
