#!/bin/bash

# IFS Scope and Persistence
# Description: Teaches the difference between global IFS changes and command-scoped changes.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

line="val1:val2:val3"

header "1. Global IFS Change (Risky)"
note "Changing IFS globally affects all subsequent commands."
OLD_IFS=$IFS
IFS=":"
echo "Current IFS is now colon."
for i in $line; do echo "Field: $i"; done
IFS=$OLD_IFS
note "Must manually restore OLD_IFS to avoid breaking the script."

header "2. Command-Scoped IFS (Preferred)"
note "Assigning IFS inline only affects the SINGLE command it precedes."
note "This is safer and doesn't require manual restoration."

# Using read with inline IFS assignment
IFS=":" read -r a b c <<< "$line"
echo "Parsed: $a, $b, $c"

note "Checking if global IFS is still default (space)..."
[[ "$IFS" == " "* ]] && echo "Global IFS remains default. Safe!"
