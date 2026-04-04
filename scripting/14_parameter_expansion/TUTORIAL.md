# Parameter Expansion Tutorial Index

This directory focuses on Bash Parameter Expansion—the most efficient way to manipulate strings and paths entirely within the shell.

## Core Files

1. **`parameter_expansion_basics.sh`**: Teaches high-performance basename and dirname equivalents using `${var##*/}` and `${var%/*}`.
2. **`advanced_expansion.sh`**: Demonstrates search-and-replace, string slicing (substrings), case conversion, and handling default values.

## Key Takeaways
- **Pattern Removal (Front)**:
  - `${var#pattern}`: Shortest match.
  - `${var##pattern}`: Longest match (e.g., `basename`).
- **Pattern Removal (Back)**:
  - `${var%pattern}`: Shortest match (e.g., `dirname`).
  - `${var%%pattern}`: Longest match.
- **Search/Replace**: `${var/find/replace}` (first) and `${var//find/replace}` (all).
- **Substrings / Slicing**: `${var:offset:length}`.
- **Case**: `${var^^}` (UPPER) and `${var,,}` (lower).
- **Length**: `${#var}` returns the number of characters.
- **Performance**: Always prefer these built-ins over external commands like `sed`, `awk`, `basename`, or `dirname` when working with single variables inside loops.
