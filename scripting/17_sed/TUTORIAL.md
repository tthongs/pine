# Sed (Stream Editor) Tutorial Index

This directory covers the `sed` utility, an essential tool for parsing and transforming text.

## Core Files

1. **`sed_tutorial.sh`**: Comprehensive demonstration of deleting, printing, grouping, and in-place editing.

## Advanced Concepts (Lecture Review)

### Printing & Deletion
- **Last Line**: Use `sed -n '$p'` to target the last line.
- **In-place Backup**: Use `sed -ri.bk '/pattern/d'` to edit in-place with a backup.
- **Substitution Flags**: Targeting specific occurrences with numeric flags (e.g., `s/a/A/2`) or all occurrences with `g`.

### Addressing & Logic
- **Range Logic**: Printing ranges (e.g., `1,+2p`).
- **Step Processing**: `1~2p` for odd lines, `2~2p` for even lines.
- **Control Commands**: `q` (quit) can be used with exit statuses for flow control.

### Line & Buffer Manipulation
- **Structural Updates**: `a\` (append), `i\` (insert), and `c\` (change) for file updates.
- **Next-line Logic**: `n` (read next line into buffer) vs `N` (append next line to current buffer).

### Case Conversion in Substitution
- `\U` / `\L`: Convert rest of match to Upper/Lower case.
- `\u` / `\l`: Convert the very next character to Upper/Lower case.
- `\E`: End the case conversion range.

## Key Takeaways
- **Pattern Space (PS)**: The internal buffer where sed works on each line.
