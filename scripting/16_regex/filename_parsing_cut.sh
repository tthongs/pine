#!/usr/bin/bash
# Description: Demonstrates filename parsing using traditional tools like cut.
# Author: Gemini CLI

echo "Parsing filenames in the current directory (simulated format: name-date.ext):"

# This script assumes files are named like "project-2023-01-01.png"
for i in * ; do
    [[ -f "$i" ]] || continue
    ext=${i##*.}
    if [[ $ext =~ ^(png|jpg)$ ]] ; then
        # Use cut to extract parts
        name=$(echo "$i" | cut -d'-' -f1)
        date=$(echo "$i" | cut -d'-' -f2- | cut -d'.' -f1 | xargs)
        echo "Found Image -> Date: $date | Name: $name"
    fi
done
