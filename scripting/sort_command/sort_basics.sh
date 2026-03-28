#!/bin/bash

# Sort Command Basics
# Based on Screenshot_20251025_231422.png and Screenshot_20251025_234012.png
# Demonstrates key-based sorting, debugging, and human-readable size sorting.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create a sample file 'f1' for sorting
cat <<EOF > f1
Pine academy 345
Pine academy 567
pine academy 123
pine academy 129
pine academy 12
pine academy 1
EOF

header "1. Sorting with --debug and Keys (-k)"
# Based on Screenshot_20251025_231422.png
note "Using --debug shows how sort identifies keys and compares lines."
echo "Command: sort --debug -k2,2 -k1,1 f1"
sort --debug -k2,2 -k1,1 f1

note "Sorting by the second field, then the first."
sort -k2,2 -k1,1 f1

header "2. Human-Readable Sorting (-h)"
# Based on Screenshot_20251025_234012.png
note "Sorting by sizes with human suffixes (K, M, G) using -h."
# Creating dummy 'ls -lh' style output
cat <<EOF > sizes.txt
0 Sep 27 22:34 newfile 1.2K
0 Oct  4 21:37 f9 500
0 Nov 10 10:00 bigfile 2.5M
0 Nov 11 11:00 smallfile 100K
EOF

note "Sorting by the 5th column in reverse human-readable order."
echo "Command: sort -h -r -k5 sizes.txt"
sort -h -r -k5 sizes.txt

# Cleanup
rm f1 sizes.txt
