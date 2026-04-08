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

# Example Usage:
# ./getopts_parsing_demo.sh -u
# ./getopts_parsing_demo.sh -h
# ./getopts_parsing_demo.sh -uh

header "Parsing Flags with getopts"

# 'uh' means the script accepts -u and -h.
# A colon after a letter (e.g., 'u:h') would mean -u requires an argument.
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

echo -e "\n\033[1;32mParsing Complete.\033[0m"
