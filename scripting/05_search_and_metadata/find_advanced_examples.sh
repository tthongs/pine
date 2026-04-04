#!/bin/bash

# Advanced Find Examples
# Based on Core Concepts (Feb 2026)
# Description: Demonstrates find with depth limits, permissions, and complex -exec commands

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Find by Depth Limits"
note "Use -maxdepth and -mindepth to control the search range."
# Find all shell scripts but only in the current directory (depth 1)
find . -maxdepth 1 -name "*.sh"

header "2. Find by Permissions"
note "Use -perm to find files with specific access rights."
# Find all executable files
find . -maxdepth 2 -type f -perm -111 -name "*.sh"

header "3. Find by Size"
note "Use -size for space management."
# Find files larger than 10k (using lowercase k for kilobytes)
find . -type f -size +1k

header "4. Advanced -exec with Parenthesis and Variables"
note "You can run complex logic inside -exec."
# List full path and base filename for each .awk file
find awk -name "*.awk" -exec bash -c 'p="{}"; echo "Path: $p | Base: ${p##*/}"' \;

header "5. Finding by mtime (Modification Time)"
note "Use -mtime for age-based searches."
# Find files modified more than 365 days ago (dry run)
find . -type f -mtime +365 -exec echo "Old file: {}" \;

header "6. Interactive Execution with -ok"
note "The -ok flag works like -exec but prompts for confirmation."
# Example (uncomment to test manually):
# find . -name "temp*" -ok rm {} \;
