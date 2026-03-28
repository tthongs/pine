#!/bin/bash

# While Loops and File-Existence Checks
# Based on Core Concepts
# Description: Demonstrates infinite loops, finite counters, and waiting for files to appear.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Simple Numeric Counter (While Loop)"
note "Incrementing a variable inside a loop."
x=1
while [[ $x -le 5 ]] ; do
    echo "Iteration: $x"
    x=$((x+1))
    sleep .2
done

header "2. Waiting for a File with While"
note "This loop checks for a file and breaks if it appears OR a timeout occurs."
# Create a background process that will create the file after 2 seconds
( sleep 2; touch f10_tmp ) &

cnt=1
while [[ ! -f f10_tmp ]]; do
    echo "Waiting for 'f10_tmp' to appear... (attempt $cnt/10)"
    sleep .5
    if [[ $cnt -ge 10 ]]; then
        note "Timeout reached. File did not appear in time."
        break
    fi
    cnt=$((cnt + 1))
done

if [[ -f f10_tmp ]]; then
    echo "Success: 'f10_tmp' has been detected!"
    rm f10_tmp
fi

header "3. Infinite Loop Pattern"
note "You can use ':' or 'true' to create an infinite loop. Use 'break' to exit."
while true; do
    echo "Running... (press Ctrl+C if this wasn't just a demo)"
    note "Exiting immediately for the safety of the tutorial."
    break
done

echo "End of script."
