#!/bin/bash

# Advanced Read: Timeouts and Character Limits
# Description: Demonstrates how to use timeouts and capture fixed numbers of characters.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Input with Timeout (-t)"
note "The script will wait only 5 seconds for a response."
if read -t 5 -p "Enter your favorite color (quick!): " color; then
    echo "Great, you chose $color."
else
    echo -e "\n\e[1;31mTime's up!\e[0m You were too slow."
fi

header "2. Capture Fixed Number of Characters (-n)"
note "Useful for single-key responses (Y/N). Captures input immediately without Enter."
read -n 1 -p "Do you like Bash scripting? (y/n): " response
echo -e "\nYou pressed: $response"

if [[ $response == "y" || $response == "Y" ]]; then
    echo "Awesome! Let's keep learning."
else
    echo "Oh, give it another chance!"
fi

header "3. Hidden Input (Silent Mode -s)"
note "Useful for passwords or sensitive data."
read -s -p "Enter a secret key (it won't show on screen): " secret
echo -e "\nSecret received."
