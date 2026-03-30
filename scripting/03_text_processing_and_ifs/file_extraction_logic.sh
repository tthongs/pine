#!/bin/bash

# Practical File Extraction Logic
# Description: Demonstrates how to iterate through files, filter by extension using regex, 
# and extract specific parts of filenames using 'cut'.

header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

touch Screenshot-20260328.png Screenshot-20260329.jpg Document-20260101.pdf README.txt "Holiday Photo - 2026-03-29.png"

header "1. Filtering and Extracting Filename Parts"
note "Convention: [Name]-[Date].[Extension]"

for i in Screenshot-*.png Screenshot-*.jpg; do
    [[ -f "$i" ]] || continue
    ext="${i##*.}"
    if [[ "$ext" =~ ^(png|jpg)$ ]]; then
        echo "Processing Image: $i"
        name=$(echo "$i" | cut -d'-' -f1)
        date=$(echo "$i" | cut -d'-' -f2- | cut -d'.' -f1 | xargs)
        echo "  Formatted Result: $date - $name"
    fi
done
header "2. Advanced Regex with Capturing Groups"
note "Using a single regex to validate format and extract parts simultaneously."
note "\${BASH_REMATCH[0]} contains the entire string that matched the regex."
note "Subsequent indices (1, 2, ...) contain the parts captured by (parentheses)."

# Pattern: [AnyChar] - [YYYY-MM-DD].[Extension]
regex='^(.*) - ([0-9]{4}-[0-9]{2}-[0-9]{2})\.(png|jpg)'

# Temporary test file matching the exact pattern
touch "Holiday Photo - 2026-03-29.png"

for i in *; do
    if [[ "$i" =~ $regex ]]; then
        echo "Match Found: $i"
        echo "  Full Match [\${BASH_REMATCH[0]}]: \${BASH_REMATCH[0]}"
        echo "  Captured Name [1]: \${BASH_REMATCH[1]}"
        echo "  Captured Date [2]: \${BASH_REMATCH[2]}"
        echo "  Captured Ext  [3]: \${BASH_REMATCH[3]}"

        note "You can re-order fields easily: \${BASH_REMATCH[2]} - \${BASH_REMATCH[1]}"
        echo "  Re-ordered: \${BASH_REMATCH[2]} - \${BASH_REMATCH[1]}"
    fi
done

# Cleanup
rm Screenshot-20260328.png Screenshot-20260329.jpg Document-20260101.pdf README.txt "Holiday Photo - 2026-03-29.png"

