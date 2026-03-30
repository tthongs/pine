#!/bin/bash

# Parameter Expansion: Basename and Dirname
# Description: Demonstrates how to extract paths and filenames using built-in Bash string manipulation.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Setup a sample path
full_path="/usr/local/bin/script.sh"
pacman_path="/etc/pacman.d/mirrorlist"
echo "Original Path 1: $full_path"
echo "Original Path 2: $pacman_path"

header "1. Basename (Extracting Filename)"
note "Syntax: \${var##*/} - Deletes everything up to the last '/' (greedy front-trim)."
filename="\${full_path##*/}"
echo "Filename from Path 1: ${full_path##*/}"

filename2="\${pacman_path##*/}"
echo "Filename from Path 2: ${pacman_path##*/}"

header "2. Dirname (Extracting Directory)"
note "Syntax: \${var%/*} - Deletes the last '/' and everything after it (shortest back-trim)."
directory="\${full_path%/*}"
echo "Directory from Path 1: ${full_path%/*}"

header "3. Extracting Extensions"
note "Syntax: \${var##*.} - Extracts the file extension."
extension="${full_path##*.}"
echo "Extension: $extension"

note "Syntax: \${var%.*} - Removes the extension from the filename."
filename_no_ext="${filename%.*}"
echo "Filename without extension: $filename_no_ext"

header "4. Practical Loop Example: find and basename"
note "Iterating over files in \$PWD and comparing basename vs. parameter expansion."

# Creating a few test files
touch test_file_1.txt test_file_2.log

# Using process substitution to feed find output into a while loop
# This is more robust than a simple for loop for complex paths.
while IFS= read -r path; do
    # Only process regular files
    [[ -f "$path" ]] || continue

    echo "Full Path: \$path"
    
    # Method 1: External command (basename)
    echo "  Using basename: \$(basename \"\$path\")"
    
    # Method 2: Parameter Expansion (Faster)
    echo "  Using expansion: \${path##*/}"
    
done < <(find "\$PWD" -maxdepth 1)

# Cleanup
rm test_file_1.txt test_file_2.log
