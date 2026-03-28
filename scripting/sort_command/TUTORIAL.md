# Sort Command Tutorial Index

This directory focuses on sorting and organizing text data.

## Core Files

1. **`sort_basics.sh`**: Teaches basic sorting, field-based sorting (`-k`), human-readable size sorting (`-h`), and how to debug the sorting process.

## Key Takeaways
- **`-k`**: Specify which field (column) to sort by. Use `-k2,2` to sort *only* by the second field.
- **`-h`**: Correctly sorts sizes like `1K`, `2M`, and `1G`.
- **`--debug`**: Visualizes how `sort` interprets your keys.
- **`grep -v '^total'`**: Useful for cleaning up `ls -l` output before sorting.
