#!/usr/bin/bash
# Description: Conditional execution of ls -l based on an argument.
# Author: Gemini CLI

arg1="$1"

if [[ $arg1 == "-l" ]] ; then
    echo "Argument -l detected. Running long format listing:"
    ls -l
else
    echo "Usage: $0 -l (to list in long format)"
fi
