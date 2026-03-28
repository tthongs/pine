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

header "4. Practical Loop Example"
note "Filtering for files in current directory and using parameter expansion."
for f in *; do
    if [[ -f "$f" ]]; then
        # This is safe even if the file name has spaces
        echo "Processing: ${f##*/} (Type: ${f##*.})"
    fi
done
