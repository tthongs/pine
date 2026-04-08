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
# Example 3: Validating Option Arguments
# ------------------------------------------------------------------------------
# Usage: ./getopts_parsing_demo.sh -f "-h" (Trigger error)
header "3. Validating that Arguments are not Flags"

OPTIND=1
while getopts ':hf:l:' opt; do
    case "$opt" in
        h)
            echo "help" ;;
        f)
            # Regex check to ensure the argument doesn't look like another flag
            if [[ $OPTARG =~ ^(-h|-l)$ ]]; then
                echo "Illegal value of -f: $OPTARG"
                continue
            else
                echo "f is $OPTARG"
            fi
            ;;
        l)
            echo "l: $OPTARG" ;;
        \?)
            echo "var: $opt"
            echo "invalid option: $OPTARG"
            ;;
        :)
            echo "var : $opt"
            echo "pass valid value to $OPTARG"
            ;;
    esac
done

echo -e "\n\033[1;32mParsing Complete.\033[0m"
