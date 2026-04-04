#!/usr/bin/bash
# Description: Demonstrates local vs global variable scope in Bash functions.
# Author: Gemini CLI

inst="VLSI"

greet() {
    # local variable only exists within this function
    local inst="PINE_VLSI"
    echo "Inside greet: inst=$inst"
    name=$1
    echo "Hello $name"
}

goodbye() {
    # accessing global variable 'inst'
    name=$1
    echo "Inside goodbye: inst=$inst"
    echo "Goodbye $name"
}

echo "Initial global inst: $inst"
greet "pine"
goodbye "csh"
echo "Final global inst: $inst"
