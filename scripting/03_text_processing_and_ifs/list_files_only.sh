#!/bin/bash

# Extracting Only File Names
# Description: Demonstrates multiple ways to list regular files while excluding directories.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Setup: Create a mix of files and directories
mkdir -p demo_dir1 demo_dir2
touch file1.txt file2.log .hidden_file

header "1. Using 'find' (The Professional Way)"
note "find is the most precise tool for filtering by type."
# -maxdepth 1: Stay in current dir
# -type f: Regular files only
# -not -path '*/.*': Skip hidden files (optional)
find . -maxdepth 1 -type f -not -path '*/.*' -printf "%P\n"

header "2. Using 'ls -p' and 'grep'"
note "ls -p adds a '/' to directories, which we then filter out."
ls -p | grep -v /

header "3. Using a Pure Bash Loop"
note "This uses the [[ -f ]] test to check if an item is a regular file."
for f in *; do
    if [[ -f "$f" ]]; then
        echo "Found file: $f"
    fi
done

# Cleanup
rm file1.txt file2.log .hidden_file
rm -rf demo_dir1 demo_dir2
