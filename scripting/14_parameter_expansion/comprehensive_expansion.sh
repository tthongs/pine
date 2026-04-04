#!/bin/bash

# Comprehensive Parameter Expansion
# Based on Core Concepts (Feb 2026)
# Description: Demonstrates all major Parameter Expansion techniques in Bash

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Length of Variable"
str="Hello Bash"
echo "String: '$str'"
echo "Length: ${#str}"

header "2. Default and Alternate Values"
# ${var:-word} : Use 'word' if 'var' is unset/null
echo "Using default: ${unset_var:-'This is a default'}"
# ${var:=word} : Assign 'word' to 'var' if unset/null
echo "Assigning default: ${assigned_var:='Assigned value'}"
echo "Now assigned_var is: $assigned_var"
# ${var:+word} : Use 'word' only if 'var' is set
existing="I exist"
echo "Alternate value: ${existing:+'Replacement value'}"

header "3. Error if Unset"
# ${var:?ERR} : Exit with ERR if 'var' is unset
# echo "${missing_var:?'Variable is not defined!'}" # This would exit the script

header "4. Pattern Removal (Left and Right)"
path="/home/pine/PINE/2026/UNIX_BASH/BASH/sedfile.tar.gz"
echo "Full path: $path"

# % (Smallest Right) and %% (Longest Right)
echo "Filename without smallest right extension: ${path%.*}"
echo "Base filename (longest right removed): ${path%%.*}"

# # (Smallest Left) and ## (Longest Left)
echo "Path without smallest left match: ${path#*/}"
echo "Filename only (longest left removed): ${path##*/}"

header "5. Slicing (Offset and Length)"
phone="+91-7790813110"
echo "Full phone: $phone"
echo "Offset 4 (Country code removed): ${phone:4}"
echo "Offset 4, Length 5: ${phone:4:5}"
echo "Last 7 chars: ${phone: -7}"

header "6. Search and Replace"
msg="use linux, linux or die"
echo "Original: $msg"
echo "Replace first: ${msg/linux/unix}"
echo "Replace all:   ${msg//linux/unix}"

header "7. Case Conversion"
case_str="HeLLo BaSH"
echo "Lowercase all: ${case_str,,}"
echo "Uppercase all: ${case_str^^}"
