#!/usr/bin/bash
# Description: Uses shift to iterate through directories and find old files.
# Author: Gemini CLI

usage() {
    echo "Usage: $0 dir1 [dir2 ... dirN]"
}

if [[ "$#" -eq 0 ]] ; then
    usage
    exit 1
fi

echo "Starting search in provided directories..."

while [[ "$#" -ne 0 ]] ; do
    target_dir="$1"
    echo "-----------------------------------------------------"
    echo "Parsing directory: $target_dir"
    
    if [[ ! -d "$target_dir" ]]; then
        echo "Warning: Directory '$target_dir' does not exist."
    else
        echo "Searching for files older than 365 days in $target_dir..."
        # find "$target_dir" -type f -mtime +365 -exec rm -i {} \;
        find "$target_dir" -type f -mtime +365
    fi
    shift
done
