#!/bin/bash

# Usage Functions and Heredocs
# Based on Core Concepts
# Description: Demonstrates how to define a usage function with heredocs

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

function usage() {
    cat << EOF
Welcome
This is a usage function
Usage: $0 [options]
EOF
}

header "1. Checking Arguments and Calling Usage"
if [[ $# -eq 0 ]]; then
    note "No arguments provided. Calling usage()..."
    usage
    echo "exiting"
    exit 1
fi

echo "Argument provided: $1"
