#!/usr/bin/bash
# Description: Demonstrates basic arithmetic using the 'let' command.
# Author: Gemini CLI

echo "Demonstrating arithmetic with 'let':"

let age=20
echo "Age set to: $age"

# In Bash let, we use 1 for true, 0 for false
let hasLicense=1 
echo "Has license (boolean 1=true): $hasLicense"

# Compound expression
let "canDrive = (age >= 18 && hasLicense)"
echo "Can drive (result of evaluation): $canDrive"

if (( canDrive )); then
    echo "Status: Eligible to drive."
else
    echo "Status: Not eligible to drive."
fi
