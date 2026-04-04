#!/usr/bin/bash
# Description: Demonstrates how exported variables carry over to child processes.
# Author: Gemini CLI

echo "Parent shell: Setting and exporting variable B"
export B=100
echo "Value of B in parent: $B"

echo "Spawning a child shell to access B:"
bash -c 'echo "Value of B inside child: $B"'
