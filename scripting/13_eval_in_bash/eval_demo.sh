#!/bin/bash

# The eval Command
# Description: Demonstrates dynamic command execution and variable manipulation.

header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Dynamic Execution"
cmd="echo Hello World"
eval "$cmd"

header "2. Dynamic Variable Access (Pointers)"
real_var="Secret Content"
ptr="real_var"
eval "echo Value found via eval: \$${ptr}"

header "3. Advanced Indirect Access"
foo=10; x=foo; y=\$x
eval echo $y

header "4. Constructing Pipelines"
read -p "Enter cmd (ls): " c1; read -p "Switch (-l): " s1; read -p "Pattern (total): " p1
cmd="$c1 $s1 | grep $p1"
eval "$cmd"

header "5. SECURITY WARNING"
note "Never use eval on untrusted input. It is highly susceptible to shell injection."
