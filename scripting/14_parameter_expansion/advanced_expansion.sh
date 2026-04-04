#!/bin/bash

# Advanced Parameter Expansion
# Description: Demonstrates string replacement, slicing, and case manipulation.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

text="The quick brown fox jumps over the lazy dog"
echo "Original Text: '$text'"

header "1. Search and Replace"
note "Syntax: \${var/search/replace} - Replaces first match."
echo "First occurrence: \${text/dog/cat}"
echo "${text/dog/cat}"

note "Syntax: \${var//search/replace} - Replaces ALL matches."
echo "All spaces to underscores: \${text// /_}"
echo "${text// /_}"

header "2. String Slicing (Substring)"
note "Syntax: \${var:offset:length}"
echo "First 10 characters: \${text:0:10}"
echo "${text:0:10}"

echo "From index 10 to the end: \${text:10}"
echo "${text:10}"

header "3. Case Manipulation"
mixed="Bash Scripting"
echo "Mixed case: $mixed"

note "Syntax: \${var^^} - Convert to UPPERCASE."
echo "Uppercase: ${mixed^^}"

note "Syntax: \${var,,} - Convert to lowercase."
echo "Lowercase: ${mixed,,}"

header "4. Default Values"
# unset a variable to test
unset empty_var
note "Syntax: \${var:-default} - Use default if var is unset or null."
echo "Default value example: \${empty_var:-'Default User'}"
echo "${empty_var:-'Default User'}"
