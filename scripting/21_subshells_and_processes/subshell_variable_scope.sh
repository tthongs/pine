#!/usr/bin/bash
# Description: Demonstrates that subshells created by pipelines have their own scope.
# Author: Gemini CLI

a=100
echo "Initial value of 'a' in parent: $a"

echo "Running a pipeline that modifies 'a' in a while loop (subshell):"

printf "%d\n" {1..3} | while read val ; do
    ((a++))
    echo "Inside loop subshell: a=$a | PID=$BASHPID | Subshell Level=$BASH_SUBSHELL"
done

echo "Final value of 'a' in parent: $a (Unchanged because loop was a subshell)"
