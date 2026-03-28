# Diff Command Tutorial Index

This directory focuses on comparing files and finding differences.

## Core Files

1. **`diff_command_demo.sh`**: Teaches basic file comparison, brief output, side-by-side view, and unified patches. Also covers troubleshooting invisible characters and comparing directory listings.

## Key Takeaways
- **`-q`**: Briefly reports if files are different or not.
- **`-y`**: Side-by-side view for easier visual comparison.
- **`-u`**: Unified format, standard for creating patches.
- **`-w`**: Ignore all whitespace differences.
- **Directory Listings**: Use `diff <(ls D1) <(ls D2)` to compare filenames across directories.
- **Recursive Diff**: Use `diff -r D1 D2` to compare file contents within directories recursively.
- **Invisible characters**: Trailing spaces can lead to "identical-looking" files being flagged as different.
