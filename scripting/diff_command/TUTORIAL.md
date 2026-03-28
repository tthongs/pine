# Diff Command Tutorial Index

This directory focuses on comparing files and finding differences.

## Core Files

1. **`diff_command_demo.sh`**: Teaches basic file comparison, brief output, side-by-side view, and unified patches. Also covers troubleshooting invisible characters. (Based on `scr/Screenshot_20260328_220929.png` and `Screenshot_20260328_221100.png`).

## Key Takeaways
- **`-q`**: Briefly reports if files are different or not.
- **`-y`**: Side-by-side view for easier visual comparison.
- **`-u`**: Unified format, standard for creating patches.
- **`-w`**: Ignore all whitespace differences.
- **Invisible characters**: Trailing spaces can lead to "identical-looking" files being flagged as different.
