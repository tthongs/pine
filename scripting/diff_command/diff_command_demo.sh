#!/bin/bash

# Diff Command: Comparing Files
# Based on Screenshot_20260328_220929.png
# Demonstrates how to find differences between two files.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

# Create two sample files with slight differences
cat <<EOF > f1
Apple
Banana
Cherry
EOF

cat <<EOF > f2
Apple
Blueberry
Cherry
Dragonfruit
EOF

header "1. Basic Diff"
# Based on Screenshot_20260328_220929.png
note "Running 'diff f1 f2' shows which lines need to change to make them identical."
diff f1 f2

header "2. Brief Output (-q)"
note "Using -q only reports whether the files differ, not the actual lines."
diff -q f1 f2

header "3. Side-by-Side Output (-y)"
note "Using -y shows the differences in two columns."
diff -y f1 f2

header "4. Unified Format (-u)"
note "Unified format is commonly used for creating 'patches'."
diff -u f1 f2

header "5. Invisible Differences (Trailing Spaces/Hidden Characters)"
# Based on Screenshot_20260328_221100.png
note "Sometimes files look identical but diff reports a difference."
# Creating two files that LOOK the same but have different trailing characters
echo "a" > f1_clean
echo "a " > f2_space # Has a trailing space

note "If we just cat them, they look identical:"
cat f1_clean
cat f2_space

note "But diff sees the difference:"
diff f1_clean f2_space

note "Use 'diff -w' to ignore ALL whitespace, or 'cat -A' to see hidden characters."
diff -w f1_clean f2_space && echo "Files match when ignoring whitespace (-w)."

header "6. Comparing Directory Listings"
# Based on Screenshot_20260328_221925.png
note "You can use process substitution to compare the contents of two directories."
mkdir -p D1 D2
touch D1/f1 D1/f2 D2/f1 D2/f2

echo "D1 contains: $(ls D1)"
echo "D2 contains: $(ls D2)"

note "Comparing listings: diff <(ls D1) <(ls D2)"
diff <(ls D1) <(ls D2) && echo "Listings match."

note "Adding a file to D1 and comparing again..."
touch D1/f3
diff <(ls D1) <(ls D2)

header "7. Recursive Directory Diff (-r)"
note "The -r flag compares files and subdirectories recursively."
diff -r D1 D2

# Cleanup
rm f1 f2 f1_clean f2_space
rm -rf D1 D2
