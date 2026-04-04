#!/usr/bin/bash
# Description: Simple demonstration of an infinite loop using the : (null) command.
# Author: Gemini CLI

echo "Starting infinite loop. Press [CTRL+C] to stop."

while : ; do
    echo "This loop will run forever... (sleeping for 1 second)"
    sleep 1
done
