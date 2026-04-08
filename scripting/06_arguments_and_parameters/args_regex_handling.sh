#!/usr/bin/bash
# Description: Parses arguments and uses regex matching within a loop.
# Author: Gemini CLI

echo "Number of arguments: $#"
echo "Full argument string: $@"

for i in "$@" ; do
    echo "Processing: $i"
    if [[ $i =~ ^f.*\.txt$ ]] ; then
        echo "Match found: File starts with 'f' and ends with '.txt'"
        # touch "$i" # Uncomment to actually create the file
    fi
done
