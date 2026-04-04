# Terminal Formatting and UI Tutorial Index

This directory covers ANSI escape sequences and the `tput` command for creating rich terminal user interfaces.

## Core Files

1. **`ansi_color_codes.sh`**: Teaches how to use raw escape codes for text coloring and bolding.
2. **`hex_ascii_printf.sh`**: Shows how to print hexadecimal and ASCII characters using `printf`.
3. **`interactive_tput_demo.sh`**: Practical demonstration of cursor movement and screen manipulation.

## Terminal Control (Lecture Review)

### `tput` Command
- **`setaf [0-255]`**: Set Foreground Color.
- **`setab [0-255]`**: Set Background Color.
- **`cup [line] [column]`**: Move cursor to a specific position.
- **`bold` / `sgr0`**: Start bold / Reset all attributes.
- **`smul` / `rmul`**: Start / End underline.
- **`invis`**: Make the cursor/input invisible (useful for passwords).
- **`cols` / `lines`**: Get terminal width and height.

### ANSI Escape Sequences
- **Structure**: `\e[` (ESC) followed by codes like `31m` (Red) or `1m` (Bold).
- **Foreground [30-37, 39]**: 31=Red, 32=Green, 33=Yellow, 34=Blue, etc.
- **Background [40-47, 49]**: 41=Red, 42=Green, 44=Blue, etc.
- **Bright [90-97]**: High-intensity colors.
- **Styles**: 1=Bold, 3=Italic, 4=Underline, 5=Blinking, 7=Reverse, 9=Strikethrough.

### Hex and ASCII
- **`printf '%b' '\x41'`**: Prints character 'A' (Hex 41).
- **`printf '%b' '\x0A'`**: Prints New Line (LF).
- **`\e` / `\033` / `\x1B`**: Different ways to represent the Escape character.

### Advanced Input Logic
- **`tput invis`**: Hide input.
- **`stty -echo`**: Hide user input (legacy/alternative).

## Key Takeaways
- **Performance**: `tput` is generally more portable than hardcoding ANSI escape sequences.
- **`printf`**: Always prefer `printf` over `echo` for predictable output when using escape codes.
