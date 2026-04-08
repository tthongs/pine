#!/usr/bin/bash
# Description: Demonstrates string testing using [[ ]] and the test command.
# Author: Gemini CLI

# var is undefined here
if [[ -n $var ]] ; then
    echo "Variable 'var' is set: $var"
else
    echo "Variable 'var' is null or unset"
fi

n=4
echo "Checking if n ($n) is greater than 2:"

if ( test $n -gt 2 ); then
    echo "test command: OK"
else
    echo "test command: NOK"
fi

if [[ $n -gt 2 ]] ; then
    echo "[[ ]] command: OK"
else
    echo "[[ ]] command: NOK"
fi
