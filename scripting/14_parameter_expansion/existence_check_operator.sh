#!/usr/bin/bash
# Description: Demonstrates the existence check operator (${var:?message}) in parameter expansion.
# Author: Gemini CLI

# Ensures a filename is passed as the first argument
file=${1:?Error: Usage: $0 <fileName>}

echo "File name provided: $file"

if [[ ! -f "$file" ]] ; then
    echo "The file '$file' does not exist."
    exit 1
else
    echo "Reading content of '$file':"
    cat "$file"
fi
