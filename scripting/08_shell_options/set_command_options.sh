#!/bin/bash

# Set Command Options
# Based on Core Concepts
# Description: Demonstrates how to use set for shell options like braceexpand and allexport

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Brace Expansion (braceexpand)"
note "Brace expansion is usually on by default. You can disable it with 'set +o braceexpand'."
echo "Default brace expansion: " {1..3}

set +o braceexpand
echo "After turning off brace expansion: " {1..3}

set -o braceexpand
echo "After turning on brace expansion: " {1..3}

header "2. Auto Export (allexport)"
note "When allexport is on, all defined variables are automatically exported to the environment."
set -o allexport
var_auto_exported="I am available in subshells!"
bash -c 'echo "Subshell sees: $var_auto_exported"'

set +o allexport
var_not_exported="I am NOT available in subshells!"
bash -c 'echo "Subshell sees (should be empty): $var_not_exported"'
