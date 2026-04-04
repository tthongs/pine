#!/bin/bash

# Hex ASCII and Printf
# Based on Core Concepts
# Description: Demonstrates how to print Hex and ASCII characters and use xxd

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Printing Hex values as characters"
note "You can use '%b' with '\xNN' to print Hex characters."
printf '%b' '\x41' '\x0A'

header "2. Piping to xxd"
note "You can inspect the hex dump of a string using xxd."
printf '%b' '\x41' '\x0A' | xxd

header "3. Printing character and newline"
printf '%b\n' '\x41'

header "4. Printing direct characters to xxd"
printf 'A\n' | xxd
