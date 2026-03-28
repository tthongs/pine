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

header "3. Advanced Indirect Access and Escaping"
note "Using eval to resolve multiple levels of variable references."
foo=10
x=foo
y=\$x

echo "Variable y contains the literal string: $y"
note "Executing 'eval echo \$y' resolves \$y to \$foo, then \$foo to 10."
eval echo $y

note "Another variation: eval echo \\\$\${pointer_var}"
a=10
b=a
eval echo \$$b

header "4. Special Variables and Literal Symbols"
note "Distinguishing between literal '\$' and special variables like '\$\$' (PID)."
echo "Literal string: \$\$x (where PID is concatenated with 'x')"
echo "$$x"
echo "The current Process ID (PID) is: $$"

header "5. Dynamic Variable Assignment"
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

header "5. Constructing Commands from Parts"
note "Building a command by combining strings for the command and its switches."
read -p "Enter first command (e.g., ls): " c1
read -p "Enter its first switch (e.g., -l): " s1
read -p "Enter its second switch (e.g., -h): " s2

# Construct the command string
cmd="$c1 $s1 $s2"
echo "Constructed command: $cmd"

note "Executing the constructed command with eval."
eval "$cmd"

header "6. Advanced Construction with Pipes"
note "You can even build entire pipelines dynamically."
read -p "Enter pattern to match (e.g., total): " p1

# Building a command that pipes to egrep
# Note the use of single quotes for the assignment to prevent early expansion if needed
cmd="$c1 $s1 $s2 | egrep $p1"
echo "Constructed pipeline: $cmd"

note "Executing the constructed pipeline with eval."
eval "$cmd"

header "7. SECURITY WARNING"
note "eval is dangerous! If 'pointer' contained '; rm -rf /', eval would execute it."
note "Always prefer BASH arrays or indirect expansion (\${!var}) over eval when possible."
