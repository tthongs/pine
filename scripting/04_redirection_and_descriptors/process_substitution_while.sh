#!/usr/bin/bash
# Description: Demonstrates process substitution combined with a while loop.
# Author: Gemini CLI

echo "Reading from a process substitution output:"

a=10
while IFS= read -r line ; do
    ((a++))
    echo "Value of a: $a | Line content: $line"
done < <(echo -e 'line_A\nline_B')

echo "Final value of a (in parent shell): $a"
