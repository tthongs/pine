#!/usr/bin/bash
# Description: Demonstrates arithmetic expansion using (( )) and [[ ]] for comparisons.
# Author: Gemini CLI

header() {
    echo "-----------------------------------------------------"
    echo "RUNNING: $1"
    echo "-----------------------------------------------------"
}

a=10
b=9

header "Comparison using [[ ]]"
if [[ $a -gt $b ]] ; then
    echo "a ($a) is greater than b ($b)"
else
    echo "Comparison failed"
fi

header "Comparison using Arithmetic Expansion (( ))"
if ((a > b)) ; then
    echo "a ($a) is greater than b ($b)"
else
    echo "Comparison failed"
fi
