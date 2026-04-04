#!/usr/bin/bash
# Description: Interactive tool to test strings against regex patterns using [[ =~ ]].
# Author: Gemini CLI

read -p "Enter a string to test: " str
read -p "Enter a regex pattern: " regex

echo "String: $str"
echo "Regex: $regex"

if [[ "$str" =~ $regex ]] ; then
    echo "Result: MATCH FOUND"
else
    echo "Result: NO MATCH"
fi
