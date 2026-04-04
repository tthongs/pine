#!/usr/bin/bash
# Description: Further demonstration of subshell scope using pipelines.
# Author: Gemini CLI

a=10
echo "Initial a=$a"

echo "Piping data into a while loop..."
echo -e 'line1\nline2' | while IFS= read -r line ; do
    ((a++))
    echo "Loop: line=$line | a=$a"
done

echo "Final a in parent shell: $a"
echo "Note: The pipe | creates a subshell for the while loop, isolating 'a'."
