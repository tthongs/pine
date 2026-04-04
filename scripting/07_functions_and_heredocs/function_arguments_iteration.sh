#!/usr/bin/bash
# Description: Demonstrates passing and iterating over multiple arguments in functions.
# Author: Gemini CLI

greet() {
    echo "--- GREETINGS ---"
    for i in "$@" ; do
        echo "Hello, $i"
    done
}

goodbye() {
    echo "--- GOODBYES ---"
    for i in "$@" ; do 
        echo "Goodbye, $i"
    done
    return 0
}

greet a b c
goodbye d e f
greet {1..3}
goodbye {X..Z}

echo "Last return code: $?"
