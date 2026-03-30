#!/bin/bash

# The eval Command
# Based on Core Concepts
# Description: Demonstrates dynamic command execution and variable manipulation.

# Helper functions for formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. Basic Dynamic Execution"
note "eval treats its arguments as a command string."
cmd="echo Hello World"
echo "Variable cmd contains: '$cmd'"
eval "$cmd"

header "2. Dynamic Variable Access (The Pointer Pattern)"
note "Accessing a variable when its name is stored in another variable."
real_var="I am the secret content"
pointer="real_var"

echo "The pointer variable contains the name: $pointer"
# This would just echo 'real_var'
echo "Normal access: $pointer"

# eval allows us to get the value of the variable NAMED in 'pointer'
eval "echo Value found via eval: \$$pointer"

header "3. Dynamic Variable Assignment"
note "You can also set variables dynamically."
var_prefix="user"
var_id="101"
new_value="Alice"

# Constructing: user101=Alice
eval "${var_prefix}${var_id}=\"$new_value\""

echo "Variable 'user101' was created with value: $user101"

header "4. Handling Complex Quoting"
note "eval is often used when a command contains nested quotes or redirects."
# This complex string would fail if run directly as $complex_cmd
complex_cmd="echo 'It\'s a beautiful day' > eval_test.txt"
eval "$complex_cmd"
cat eval_test.txt

# Cleanup
rm eval_test.txt

header "5. SECURITY WARNING"
note "eval is dangerous! If 'pointer' contained '; rm -rf /', eval would execute it."
note "Always prefer BASH arrays or indirect expansion (\${!var}) over eval when possible."
