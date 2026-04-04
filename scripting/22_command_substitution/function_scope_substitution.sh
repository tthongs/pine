#!/usr/bin/bash
# Description: Shows how command substitution interacts with variable scope.
# Author: Gemini CLI

var=100
echo "Global var: $var"

modify_var_substitution() {
    var=200
    echo "$var"
}

# $(...) creates a subshell, so global 'var' remains unchanged
result=$(modify_var_substitution)
echo "Result from substitution: $result"
echo "Global var after substitution call: $var"

echo "-----------------------------------------------------"

modify_var_direct() {
    var=300
    echo "$var"
}

# Direct call modifies the variable in the current shell
echo "Calling function directly:"
modify_var_direct
echo "Global var after direct call: $var"
