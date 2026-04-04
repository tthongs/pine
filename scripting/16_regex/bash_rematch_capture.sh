#!/usr/bin/bash
# Description: Uses Bash's built-in BASH_REMATCH to capture groups from a regex.
# Author: Gemini CLI

# Regex with capture groups: (name) - (date).(ext)
regex='^(.*) - ([0-9]{4}-[0-9]{2}-[0-9]{2})\.(png|jpg)'

echo "Searching for files matching pattern: 'Name - YYYY-MM-DD.ext'"

for i in * ; do
    if [[ "$i" =~ $regex ]] ; then
        echo "Full match: $i"
        echo "Reformatted: ${BASH_REMATCH[2]} | Title: ${BASH_REMATCH[1]}"
    fi
done
