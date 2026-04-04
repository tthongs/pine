#!/usr/bin/bash
# Description: Using find with process substitution and basename for clean output.
# Author: Gemini CLI

echo "Finding files and extracting basenames using process substitution:"

while IFS= read -r path ; do
    echo "Path: $path | Basename: $(basename "$path")"
done < <(find "$PWD" -maxdepth 1 -type f)
