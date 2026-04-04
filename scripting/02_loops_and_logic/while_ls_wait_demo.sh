#!/usr/bin/bash
# Description: Demonstrates a while loop that waits for text files to disappear.
# Author: Gemini CLI

echo "Monitoring for *.txt files... Loop will continue as long as they exist."

while ls *.txt 1> /dev/null 2> /dev/null ; do
    echo "Files still present. Waiting..."
    sleep 2
done

echo "No more .txt files found. Process complete."
