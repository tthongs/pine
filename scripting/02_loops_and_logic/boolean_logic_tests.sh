#!/usr/bin/bash
# Description: Demonstrates boolean logic, status codes, and the test command.
# Author: Gemini CLI

header() {
    echo "--- $1 ---"
}

s=
s1="abc"

header "Logical AND with [[ ]]"
if [[ -z "$s" && -n "$s1" ]] ; then
    echo "Success: s is empty AND s1 is not empty"
fi

header "Short-circuit evaluation"
[[ -z "$s" && -n "$s1" ]] && echo "Exit code: $? | Logic holds true"

header "True/False chaining"
true && echo "TRUE branch reached" || echo "FALSE branch reached"
false && echo "TRUE branch reached" || echo "FALSE branch reached"

header "File size check"
[[ ! -s f1 ]] && echo "File f1 is missing or empty" || echo "File f1 exists and is not empty"

header "Using the 'test' command"
test -z "$s" -a -n "$s1" 
echo "Test command exit code: $?"

header "Arithmetic comparison in [[ ]] vs (( ))"
a=10
b=20
if [[ $a -eq 10 && $b -eq 20 ]] ; then
    echo "[[ ]] check: true"
fi

if (( a == 10 && b == 20 )) ; then
    echo "(( )) check: true"
fi
