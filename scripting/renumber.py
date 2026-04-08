
import re

file_path = '/home/tthongs/builds_tthongs/pine/scripting/GEMINI.md'

with open(file_path, 'r') as f:
    lines = f.readlines()

in_core_modules = False
current_number = 1

new_lines = []
for line in lines:
    if '## Core Learning Modules' in line:
        in_core_modules = True
        new_lines.append(line)
        continue
    
    if in_core_modules and '### `references/`' in line:
        in_core_modules = False
        new_lines.append(line)
        continue
    
    if in_core_modules:
        match = re.match(r'^(\d+)\. (\*\*`.+`\*\*:.*)', line)
        if match:
            new_lines.append(f"{current_number}. {match.group(2)}\n")
            current_number += 1
        else:
            new_lines.append(line)
    else:
        new_lines.append(line)

with open(file_path, 'w') as f:
    f.writelines(new_lines)

print(f"Renumbered up to {current_number - 1}")
