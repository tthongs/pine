#!/bin/bash

# Interactive Regex Tester
# Description: Demonstrates how to take user input for both a string and a regex pattern to test matches.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "Interactive Regex Matcher"
note "This script allows you to test any string against a Regular Expression pattern."

read -p "Pass a string: " str
read -p "Pass a regex: " regex

echo "String passed : $str"
echo "Regex passed  : $regex"

if [[ "$str" =~ $regex ]]; then
    echo -e "\e[1;32mMatch found!\e[0m"
else
    echo -e "\e[1;31mNo match.\e[0m"
fi

header "Pro Tip"
note "In Bash, do NOT wrap the regex variable in quotes inside [[ ]] if you want it to be treated as a pattern."
note "Example: [[ \$str =~ \$regex ]] works, but [[ \$str =~ \"\$regex\" ]] does a literal string match."
