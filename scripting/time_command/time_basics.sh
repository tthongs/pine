#!/bin/bash

# The time Command: Measuring Performance
# Description: Demonstrates how to use 'time' to measure the execution duration of commands and scripts.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Usage"
note "Prefix any command with 'time' to see how long it takes to run."
time sleep 1

header "2. Understanding the Output"
note "time typically provides three metrics:"
echo "- real: The total 'wall clock' time elapsed (start to finish)."
echo "- user: CPU time spent in user-mode (your code's work)."
echo "- sys:  CPU time spent in kernel-mode (system calls like I/O)."

header "3. Measuring a Logic Block"
note "Using 'time' with a subshell to measure multiple commands."
time (
    echo "Starting heavy work..."
    for i in {1..100000}; do :; done # Empty loop for CPU work
    sleep .5
    echo "Done."
)

header "4. Shell Built-in vs. Binary"
note "Most shells have a built-in 'time', but there is also a system binary at /usr/bin/time."
note "The binary often supports more detailed formatting with the -v flag."

# We'll run the binary version if it exists
if [[ -x /usr/bin/time ]]; then
    echo "Running /usr/bin/time -p (POSIX output):"
    /usr/bin/time -p sleep .2
else
    note "/usr/bin/time binary not found, skipping."
fi

header "5. Practical Tip: Capturing Time to a File"
note "Redirection with 'time' can be tricky because it outputs to stderr."
# Using a subshell to redirect everything
{ time ls /etc > /dev/null; } 2> time_output.txt
echo "Time report saved to time_output.txt:"
cat time_output.txt

# Cleanup
rm time_output.txt
