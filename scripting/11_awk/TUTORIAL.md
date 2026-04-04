# AWK Programming Tutorial Index

AWK is a powerful, field-oriented programming language designed for text processing and data extraction.

## Core Files

1. **`advanced_awk_functions.awk`**: Demonstrates user-defined functions and custom logic.
2. **`built_in_func.awk`**: mastering `length`, `index`, and `substr`.
3. **`match.awk`** & **`matchrecurring.awk`**: Regex-based field matching.

## AWK Fundamentals (Lecture Review)

### Architecture
- **3-Block Structure**: `BEGIN { ... }` (before processing), `MAIN { ... }` (implicit, for each line), and `END { ... }` (after processing).
- **Records & Fields**: `$0` represents the full line, while `$1, $2, ...` represent individual fields.

### Built-in Variables
- **`NR`**: Current record number (line count).
- **`NF`**: Number of fields in the current record.
- **`FS` / `OFS`**: Input/Output Field Separators (defaults to space/tab).

### Key Functions
- **String Manipulation**: `length()`, `index()`, `substr()`, `split()`.
- **Substitution**: `sub()`, `gsub()`, and `gensub()` for targeted pattern replacement.

### Pattern Matching & Logic
- **Regex Matches**: `$0 ~ /regex/` (matches) and `$1 !~ /regex/` (does not match).
- **Control Flow**: Full support for `if/else`, `for`, `while`, `break`, and `continue`.
- **Associative Arrays**: Use strings as keys (e.g., `arr["key"] = 1`).

## Key Takeaways
- **Efficiency**: AWK is often much cleaner than `sed` or `grep` when you need to perform logic based on specific columns or fields.
- **Case Sensitivity**: Toggle `IGNORECASE=1` for case-insensitive processing.
