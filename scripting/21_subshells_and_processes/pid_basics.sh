#!/usr/bin/bash
# Description: Demonstrates process IDs ($$, $BASHPID) and the process forest.
# Author: Gemini CLI

echo "Main Script PID (\$): $$"
echo "Main Script BASHPID: $BASHPID"

echo "-----------------------------------------------------"
echo "Showing process tree for current process:"
ps -f --forest

echo "-----------------------------------------------------"
echo "Entering a subshell ( ( ... ) ):"
(
    echo "Subshell PID (\$): $$ (Still parent's PID)"
    echo "Subshell BASHPID: $BASHPID (New PID for subshell)"
    echo "Subshell Level: $BASH_SUBSHELL"
    ps -f --forest
)
