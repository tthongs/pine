# Regular Expressions (Regex) Consolidation

This directory contains a collection of scripts that demonstrate different aspects of regular expression usage across Bash, `grep`, `sed`, and `awk`.

## Core Tutorial Scripts
1. **`regex_file_parsing.sh`**: Basic `grep -E` patterns, character classes, and anchors.
2. **`line_by_line_parsing.sh`**: Using the Bash `=~` operator to capture and process groups.

## Specialized Tools
3. **`sed_tutorial.sh`**: Deletion, printing, and substitution with `sed` using patterns.
4. **`match.awk`** & **`matchrecurring.awk`**: Regex usage inside `awk` for field-based matching.

## Practical Examples & Logic
5. **`sort_emails.sh`**: Validating email formats with complex regex.
6. **`array_filtering_logic.sh`**: Using patterns to filter elements in an array.
7. **`alpha_hash_n.sh`**: Processing alphanumeric patterns.

## Key Takeaways
- **`grep -E`**: Extended Regular Expressions (EREs) are standard for most searches.
- **`=~`**: Powerful for internal Bash string matching and capturing results in `BASH_REMATCH`.
- **Anchors (`^`, `$` )**: Essential for matching the beginning or end of lines.
- **Character Classes**: Use `[0-9]` or `[[:digit:]]` for robust digit matching.
