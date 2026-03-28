#!/bin/bash

# Ulimit: Resource Limits for Shell and Processes
# Based on Screenshot_20260328_213351.png
# Demonstrates how to view and set resource limits.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic ulimit"
# Based on Screenshot_20260328_213351.png
note "Running 'ulimit' shows the current file size limit (often 'unlimited')."
ulimit

header "2. Comprehensive Resource Limits (ulimit -a)"
note "Running 'ulimit -a' shows all currently enforced resource limits."
ulimit -a

header "3. Key Resource Indicators"
echo "- Max User Processes (-u): Maximum number of processes the user can create."
echo "- Open Files (-n): Maximum number of file descriptors a process can have open."
echo "- Max Locked Memory (-l): Maximum amount of memory that can be locked into RAM."
echo "- Virtual Memory (-v): Maximum amount of virtual memory available to the shell."
echo "- Pipe Size (-p): Size of pipes (in 512-byte blocks)."

header "4. Setting Limits (Soft vs. Hard)"
note "A user can lower their limits. Only root can raise Hard limits."
# Example: ulimit -n 2048 (to set max open files to 2048)

echo "To see the 'Hard' limit: ulimit -Hn"
ulimit -Hn

echo "To see the 'Soft' limit: ulimit -Sn"
ulimit -Sn
