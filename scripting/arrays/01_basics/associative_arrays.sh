#!/bin/bash

# ==============================================================================
# ASSOCIATIVE ARRAYS: KEY-VALUE STORES (Bash 4.0+)
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. DECLARATION (MANDATORY)
# ------------------------------------------------------------------------------

# For associative arrays, 'declare -A' (uppercase A) is REQUIRED.
declare -A server_info


# ------------------------------------------------------------------------------
# 2. KEY-VALUE ASSIGNMENT
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ASSIGNING KEY-VALUE PAIRS             "
echo "---------------------------------------"

# Assign individual values by key
server_info[hostname]="web-server-01"
server_info[ip]="192.168.1.100"
server_info[status]="online"

echo "  Hostname: ${server_info[hostname]}"
echo "  IP Address: ${server_info[ip]}"
echo ""


# ------------------------------------------------------------------------------
# 3. BULK ASSIGNMENT
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " BULK ASSIGNMENT                       "
echo "---------------------------------------"

# Define multiple pairs at once
declare -A ports=( 
    [http]=80 
    [https]=443 
    [ssh]=22 
)

echo "  Port for HTTPS: ${ports[https]}"
echo ""


# ------------------------------------------------------------------------------
# 4. ITERATING THROUGH KEYS
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " LOOPING THROUGH KEYS                  "
echo "---------------------------------------"

# Always use quotes to safely handle keys with spaces
for service in "${!ports[@]}"; do
    echo "  > Service: $service, Port: ${ports[$service]}"
done

echo ""


# ------------------------------------------------------------------------------
# 5. CHECKING FOR KEY EXISTENCE
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " KEY EXISTENCE CHECK                   "
echo "---------------------------------------"

if [[ -v ports[ftp] ]]; then
    echo "  FTP key exists."
else
    echo "  FTP key NOT found."
fi

echo ""
