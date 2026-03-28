#!/bin/bash

# Sed Tutorial: Deleting, Printing, and Grouping
# Demonstrates common sed operations.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create sample file 'f2' for patterns
cat <<EOF > f2
a
12c
b
c
1
d
e
f
EOF

header "1. Grouping Commands with {;}"
note "Group {p;=} prints the matching line AND its line number."
note "Example: sed -rn '/^[[:digit:]]+$/{p;=}' f2"
sed -rn '/^[[:digit:]]+$/{p;=}' f2

note "Order matters inside the group: {=;p} prints line number FIRST."
sed -rn '/^[[:digit:]]+$/{=;p}' f2

header "2. Pattern-based Deleting and Printing"
cat <<EOF > f1
Pine academy 345
Pine academy 567
pine academy 123
pine academy 129
pine academy 12
pine academy 1
EOF

note "Deleting lines ending with '9' using /pattern/d."
sed -r '/9$/d' f1

note "Printing only lines ending with '9' using -n and /pattern/p."
sed -rn '/9$/p' f1

header "3. In-Place Editing (-i)"
note "Using -i to modify the file directly (BE CAREFUL!)."
echo "Before: $(cat f1 | grep '9$')"
sed -ri '/9$/d' f1
echo "After sed -ri (lines ending in 9 should be gone):"
cat f1

# Cleanup
rm f1 f2
