#!/bin/bash

# Learning Roadway Synchronization Script
# Based on Core Concepts
# Description: Automatically organizes and indexes all project materials into the l_roadway directory.

# Configuration
ROADWAY_DIR="l_roadway"
ROADMAP_FILE="$ROADWAY_DIR/ROADMAP.md"
EXCLUDE_DIRS="l_roadway data .git scr in_dev to_be_organized plans assignments data references lectures Guides_unix"
SPECIAL_DIRS="assignments"

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "Refreshing Learning Roadway"

# 1. Cleanup old symlinks
note "Removing old symlinks in $ROADWAY_DIR..."
find "$ROADWAY_DIR" -maxdepth 1 -type l -delete

# 2. Initialize ROADMAP.md
note "Initializing $ROADMAP_FILE..."
cat << EOF > "$ROADMAP_FILE"
# Learning Roadway - Project Roadmap

This roadway provides a centralized entry point to all educational materials in this project. 
It is automatically generated and updated to reflect the project's current state.

**To refresh this roadmap after adding new content, run:** 
\`\`\`bash
./$ROADWAY_DIR/sync_roadway.sh
\`\`\`

---

EOF

# 3. Discover and Link Educational Modules
note "Scanning project for materials..."

# Function to process a directory
process_dir() {
    local dir="$1"
    local dir_name=$(basename "$dir")
    
    # Skip if excluded
    for ex in $EXCLUDE_DIRS; do
        [[ "$dir_name" == "$ex" ]] && return
    done
    
    # Check if there are relevant files (.sh, .awk, .md, .pdf)
    local files=$(find "$dir" -maxdepth 2 \( -name "*.sh" -o -name "*.awk" -o -name "*.md" -o -name "*.pdf" \) ! -name "TUTORIAL.md" ! -name "ROADMAP.md" ! -name "sync_roadway.sh" | sort)
    
    if [[ -n "$files" || -f "$dir/TUTORIAL.md" ]]; then
        # Formatting directory name for display
        local display_name=$(echo "$dir_name" | sed 's/^[0-9][0-9]_//' | tr '_' ' ' | sed 's/\b\(.\)/\u\1/g')
        echo "## $display_name" >> "$ROADMAP_FILE"
        
        # Create symlink for the directory
        ln -snf "../$dir" "$ROADWAY_DIR/$dir_name"
        echo "Indexed: $dir_name"
        
        if [[ -f "$dir/TUTORIAL.md" ]]; then
            echo "- [**📘 Tutorial Guide**](../$dir/TUTORIAL.md)" >> "$ROADMAP_FILE"
        fi
        
        # List significant files
        while IFS= read -r file; do
            [[ -z "$file" ]] && continue
            local base_file=$(basename "$file")
            local rel_path=$(realpath --relative-to="$ROADWAY_DIR" "$file")
            
            # Extract description
            local desc=$(grep -i "# Description:" "$file" | cut -d':' -f2- | sed 's/^ //')
            if [[ -z "$desc" ]]; then
                # Try to get the first line comment if no Description tag
                desc=$(head -n 2 "$file" | grep "^#" | tail -n 1 | sed 's/^# //')
            fi
            [[ -z "$desc" ]] && desc="Lesson script."
            
            echo "- [**$base_file**]($rel_path): $desc" >> "$ROADMAP_FILE"
        done <<< "$files"
        echo "" >> "$ROADMAP_FILE"
    fi
}

# Process numbered directories (01_, 02_, etc.)
for d in [0-9][0-9]_*; do
    if [[ -d "$d" ]]; then
        process_dir "$d"
    fi
done

# Process special named directories
for d in $SPECIAL_DIRS; do
    if [[ -d "$d" ]]; then
        process_dir "$d"
    fi
done

# Process assignments specifically
if [[ -d "assignments" ]]; then
    echo "## Assignments and Exercises" >> "$ROADMAP_FILE"
    ln -snf "../assignments" "$ROADWAY_DIR/assignments"
    echo "Indexed: assignments"
    find assignments -maxdepth 2 \( -name "*.sh" -o -name "*.md" \) | sort | while read -r f; do
        rel_f=$(realpath --relative-to="$ROADWAY_DIR" "$f")
        echo "- [**$(basename "$f")**]($rel_f) ($(dirname "$f"))" >> "$ROADMAP_FILE"
    done
    echo "" >> "$ROADMAP_FILE"
fi

header "Roadway Updated Successfully"
note "New roadmap generated at: $ROADMAP_FILE"
note "You can now explore all materials via the $ROADWAY_DIR directory."
