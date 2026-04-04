#!/usr/bin/bash
# Description: Demonstrates how to strip file extensions using parameter expansion.
# Author: Gemini CLI

echo "Listing .sh files and their names without extensions:"

for i in *.sh ; do
    [[ -e "$i" ]] || continue
    echo "Original: $i | Stripped: ${i%.sh}"
done

echo "-----------------------------------------------------"
echo "Example: Renaming .perl files to .pl (simulation)"
# for i in *.perl ; do
#     mv "$i" "${i%.perl}.pl"
# done
echo "Done."
