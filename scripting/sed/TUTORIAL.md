# Sed (Stream Editor) Tutorial Index

This directory covers the `sed` utility, an essential tool for parsing and transforming text.

## Core Files

1. **`sed_tutorial.sh`**: Comprehensive demonstration of deleting, printing, grouping, and in-place editing. (Based on `scr/Screenshot_20251123_210955.png` to `Screenshot_20251123_214519.png`).

## Key Takeaways
- **`-n` & `p`**: Suppress default output and only print matching lines.
- **`d`**: Delete matching lines.
- **`{;}`**: Group multiple commands together for a single pattern.
- **`-i`**: Edit the file directly (in-place). Use with caution!
- **`[[:digit:]]`**: Use POSIX character classes for more robust pattern matching.
