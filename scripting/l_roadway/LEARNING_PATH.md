# Learning Path (Based on Class Notes)

This path follows the chronological and topical structure found in the `scr/README.txt` and `references/main_readme.txt` files, providing a step-by-step guide through the UNIX and Bash curriculum.

## Phase 1: UNIX Fundamentals (Sept 2025)

### Session 1: Introduction to UNIX & File System
- **Topics:** OS intro, Terminal, `pwd`, `ls`, `mkdir`, `rm`, `cd`, Home directory.
- **Reference:** `README.txt` (14th - 17th Sep)
- **Materials:** 
  - [**05_search_and_metadata**](../05_search_and_metadata)

### Session 2: Shell Basics & Environment
- **Topics:** Quotes (weak/strong), `.bashrc`, `alias`, Shell types, Redirection (`>`, `>>`), Variables.
- **Reference:** `README.txt` (21st Sep)
- **Materials:**
  - [**01_input_and_output**](../01_input_and_output)
  - [**04_redirection_and_descriptors**](../04_redirection_and_descriptors)

### Session 3: Permissions & File Structure
- **Topics:** Root directory, `sudo`, regular files vs directories, `chmod`, Octal permissions, `umask`.
- **Reference:** `README.txt` (24th - 27th Sep)
- **Materials:**
  - [**05_search_and_metadata**](../05_search_and_metadata)

## Phase 2: Text Processing & Editors (Oct 2025)

### Session 4: GVIM Mastery
- **Topics:** Command vs Insert mode, Navigation (`hjkl`), Delete/Yank/Paste, Search.
- **Reference:** `README.txt` (4th - 10th Oct)
- **Materials:**
  - [**references/tutorial_notes.txt**](../references/tutorial_notes.txt)

### Session 5: Core Utilities
- **Topics:** `wc`, `cat`, `cut`, `tr`, `sort`, `uniq`, Pipes (`|`).
- **Reference:** `README.txt` (15th - 18th Oct)
- **Materials:**
  - [**03_text_processing_and_ifs/tr_command_demo.sh**](../03_text_processing_and_ifs/tr_command_demo.sh)
  - [**18_sort_command**](../18_sort_command)

### Session 6: Regular Expressions (Regex)
- **Topics:** Literal chars, Character sets `[]`, Meta-chars `.`, Anchors `^ $`, Modifiers `* + ?`.
- **Reference:** `README.txt` (Oct 2025)
- **Materials:**
  - [**16_regex**](../16_regex)
  - [**03_text_processing_and_ifs/regex_file_parsing.sh**](../03_text_processing_and_ifs/regex_file_parsing.sh)

## Phase 3: Advanced Scripting & Tools (Nov 2025 - Jan 2026)

### Session 7: Bash Programming Logic
- **Topics:** `if/elif/else`, Integer vs String comparisons, Logical operators `&& ||`, Loops (`while`, `until`).
- **Reference:** `README.txt` (Nov 2025)
- **Materials:**
  - [**02_loops_and_logic**](../02_loops_and_logic)

### Session 8: The Stream Editor (sed)
- **Topics:** Pattern space, Print `p`, Delete `d`, Substitute `s`, Line addressing.
- **Reference:** `README.txt` (12th - 26th Nov)
- **Materials:**
  - [**17_sed**](../17_sed)

### Session 9: AWK Programming & Functions
- **Topics:** User-defined functions, `ARGV`, loops, ternary operator, `printf` justification.
- **Reference:** `README.txt` (Jan 2026)
- **Materials:**
  - [**11_awk/advanced_awk_functions.awk**](../11_awk/advanced_awk_functions.awk)
  - [**01_input_and_output/printf_formatting_mastery.sh**](../01_input_and_output/printf_formatting_mastery.sh)

## Phase 4: Advanced Shell Features & Revision (Feb - March 2026)

### Session 10: Advanced Find & File Management
- **Topics:** `maxdepth`, `perm`, `size`, `exec` logic, `mtime`/`ctime`, `tar`/`gzip`.
- **Reference:** `README.txt` (Feb 2026)
- **Materials:**
  - [**05_search_and_metadata/find_advanced_examples.sh**](../05_search_and_metadata/find_advanced_examples.sh)

### Session 11: Parameter Expansion Mastery
- **Topics:** Length, default/alternate values, pattern removal, slicing, search/replace.
- **Reference:** `README.txt` (28th Feb 2026)
- **Materials:**
  - [**14_parameter_expansion/comprehensive_expansion.sh**](../14_parameter_expansion/comprehensive_expansion.sh)

### Session 12: Terminal Control & Subshells
- **Topics:** `tput`, ANSI escape sequences, `eval`, process substitution `<()`, pid logic.
- **Reference:** `README.txt` (March 2026)
- **Materials:**
  - [**09_terminal_formatting/interactive_tput_demo.sh**](../09_terminal_formatting/interactive_tput_demo.sh)
  - [**13_eval_in_bash**](../13_eval_in_bash)

---
**Note:** To refresh the links in this roadway, run `./l_roadway/sync_roadway.sh`.
