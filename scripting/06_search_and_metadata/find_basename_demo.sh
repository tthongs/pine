#!/bin/bash

# Find and Basename Demonstration
# Description: Demonstrates how to apply 'basename' on the output of 'find' using various methods.
# This script follows the project's specifications for readability and modularity.

# Helper functions for formatting (Standard Specifications)
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Subroutine to update/process a list of files to their basenames
# This is the "subroutine" requested to handle the update of file paths to basenames.
update_basename_list() {
    local target_dir="$1"
    header "Running Subroutine: update_basename_list on $target_dir"
    
    note "Method: Using 'find -exec basename {} \;' (Standard)"
    find "$target_dir" -maxdepth 1 -exec basename {} \;
}

# Setup sample data for demonstration
header "0. Setup Sample Environment"
mkdir -p demo_data/sub_folder
touch demo_data/file1.txt demo_data/file2.log demo_data/sub_folder/nested.sh
echo "Created sample files in 'demo_data/'"

header "1. Using '-exec basename {} \;' (Direct)"
note "The most robust way as 'find' handles each path natively."
find demo_data -maxdepth 1 -exec basename {} \;

header "2. Using GNU 'find -printf \"%f\n\"' (Fastest)"
note "Avoids spawning a new process for every file. Very efficient on Linux."
find demo_data -maxdepth 1 -printf "%f\n"

header "3. Using 'xargs -L 1 basename'"
note "Efficient for large numbers of files, though sensitive to spaces if not using -0."
find demo_data -maxdepth 1 | xargs -L 1 basename

header "4. Using a 'while' loop (Flexible)"
note "Best when you need to perform additional logic on each filename."
find demo_data -maxdepth 1 | while read -r line; do
    name=$(basename "$line")
    echo "Processed: $name"
done

# Calling the subroutine
update_basename_list "demo_data"

# Cleanup
rm -rf demo_data
header "Cleanup Complete"
