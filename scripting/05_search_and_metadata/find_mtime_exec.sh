#!/bin/bash

# Find with Mtime and Exec
# Based on Core Concepts
# Description: Demonstrates parsing directory arguments and executing find

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

usage() {
    echo "Usage: $0 dirN [dirN...]"
}

header "1. Argument Parsing and Validation"
if [[ $# -eq 0 ]] ; then
    usage
    echo "exiting"
    exit 1
fi

while [[ "$#" -ne 0 ]] ; do
    echo "parsing $1"
    # Checking if directory exists
    if [[ ! -d "$1" ]]; then
        echo "dir $1 does not exist"
        shift
        continue
    fi
    
    note "Executing find to prompt deletion of files older than 365 days in $1"
    # Using echo to demonstrate what it would do, instead of actual rm -i to prevent script hanging
    echo "Command that would run: find \"$1\" -type f -a -mtime +365 -exec rm -i {} \\;"
    # Actual command is commented out for safety during automated testing:
    # find "$1" -type f -a -mtime +365 -exec rm -i {} \;
    
    shift
done
