#!/usr/bin/bash
# Description: Demonstrates basic command substitution using $(command).
# Author: Gemini CLI

echo "Assigning command output to a variable:"
current_user=$(whoami)
echo "The user is: $current_user"

echo "Nesting command substitution:"
echo "Current directory contains $(ls | wc -l) files."

declare -f myf
myf() {
    echo "hello from function"
}

echo "Capturing function output:"
func_out=$(myf)
echo "Function output: $func_out"
