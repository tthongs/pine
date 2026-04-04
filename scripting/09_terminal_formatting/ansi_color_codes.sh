#!/bin/bash

# ANSI Color Codes
# Based on Core Concepts
# Description: Demonstrates how to use ANSI escape codes with printf for formatting

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Using ANSI Escape Codes"
note "Format: \e[<style>;<color>m"

printf '\e[0;31mTHIS IS RED AND BOLD\e[m\n'
printf '\e[0;41mTHIS HAS RED BACKGROUND\e[m\n'
printf '\e[0;42mTHIS HAS GREEN BACKGROUND\e[m\n'
printf '\e[0;43mTHIS HAS YELLOW BACKGROUND\e[m\n'
printf '\e[0;44mTHIS HAS BLUE BACKGROUND\e[m\n'
printf '\e[0;45mTHIS HAS MAGENTA BACKGROUND\e[m\n'
printf '\e[0;46mTHIS HAS CYAN BACKGROUND\e[m\n'
