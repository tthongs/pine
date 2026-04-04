#!/bin/bash

# Interactive Tput Demo
# Based on Core Concepts (Feb 2026)
# Description: Demonstrates tput for screen manipulation and formatting

# Variables for common formatting
bold=$(tput bold)
red=$(tput setaf 1)
green=$(tput setaf 2)
yellow=$(tput setaf 3)
blue=$(tput setaf 4)
reset=$(tput sgr0)

# Clear the screen
tput clear

# Position the cursor and print a welcome message
# tput cup <row> <col>
tput cup 2 30
echo "${bold}${blue}=== WELCOME TO BASH TUTORIAL ===${reset}"

tput cup 4 20
echo "${yellow}Screen size: $(tput lines) lines x $(tput cols) columns${reset}"

# Simulating a secure login prompt
tput cup 6 20
echo -n "${bold}${red}Enter Secret Password: ${reset}"

# Make input invisible for security
tput invis
read -r password
tput sgr0 # Restore normal visibility and style

tput cup 8 20
if [[ "$password" == "12345" ]]; then
    echo "${green}Access Granted! Welcome to the system.${reset}"
else
    echo "${red}Incorrect Password. Access Denied.${reset}"
fi

tput cup 10 0
echo "Press any key to exit..."
read -n 1
tput clear
