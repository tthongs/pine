#!/bin/bash

# Acknowledge Loop
# Description: Demonstrates a simple while loop for repeating output or status checks.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Repeating Output"
note "This loop runs 5 times to 'acknowledge' a process."

count=1
while [[ $count -le 5 ]]; do
    echo "Acknowledge received: Message #$count"
    ((count++))
    sleep .2
done

header "2. Infinite Pulse (Controlled)"
note "A common pattern for background monitors, here stopping after 3 pulses."

i=1
while :; do
    echo "Pulse... $i"
    sleep .3
    ((i++))
    [[ $i -gt 3 ]] && break
done

echo "Loop finished."
