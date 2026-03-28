#!/bin/bash

# Internal Field Separator (IFS) Basics
# Description: Demonstrates how Bash uses IFS to split strings into tokens.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

line="apple:banana:cherry:date"
echo "Original line: $line"

header "1. Default Splitting (Fails)"
note "By default, Bash splits on whitespace (space, tab, newline)."
for item in $line; do
    echo "Item: $item"
done

header "2. Splitting with Custom IFS (:)"
note "We temporarily set IFS to ':' to parse the string."
# Using a subshell or temporary assignment
(
    IFS=":"
    for item in $line; do
        echo "Found: $item"
    done
)

header "3. Using 'read' with custom IFS"
note "This is the most common way to parse delimited data."
IFS=":" read -r f1 f2 f3 f4 <<< "$line"
echo "Field 1: $f1"
echo "Field 3: $f3"
