#!/usr/bin/bash
# Description: Demonstrates dynamic command execution using the eval command.
# Author: Gemini CLI

echo "Enter details to build a command (e.g., ls, -l, -a, .sh):"

read -p "Base command (e.g., ls): " c1
read -p "First switch (e.g., -l): " s1
read -p "Second switch (e.g., -a): " s2
read -p "Pattern to match (e.g., .sh): " p1

# Constructing the command string
cmd="$c1 $s1 $s2 | grep $p1"

echo "Constructed command: $cmd"
echo "Executing..."

eval "$cmd"
