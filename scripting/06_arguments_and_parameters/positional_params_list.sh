#!/usr/bin/bash
# Description: Lists various positional parameters and special variables.
# Author: Gemini CLI

echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
echo "Third Argument: $3"
echo "Total Count: $#"
echo "All Arguments (\$@): $@"
echo "All Arguments (\$*): $*"
echo "Tenth Argument (if exists): ${10}"
