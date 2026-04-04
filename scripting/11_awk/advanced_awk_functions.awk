#!/usr/bin/awk -f

# Advanced AWK Functions and Arguments
# Based on Core Concepts (Jan 2026)
# Description: Demonstrates user-defined functions, ARGC/ARGV, and custom logic

BEGIN {
    header("1. Argument Count and Values (ARGC/ARGV)")
    print "ARGC (Argument Count):", ARGC
    for (i = 0; i < ARGC; i++) {
        print "ARGV[" i "]:", ARGV[i]
    }

    header("2. User Defined Functions")
    # Calling a custom function
    printName("Utkarsh", "Mishra")

    header("3. Custom String Index Logic (gindex)")
    str = "abcabc"
    char = "c"
    print "Finding all occurrences of '" char "' in '" str "':"
    gindex(str, char)

    header("4. Math and Loops in Functions")
    print "Sum of numbers from 1 to 5:", sum_range(1, 5)
    
    header("5. Ternary Operator")
    n = 10
    print n, "is", (n % 2 == 0 ? "Even" : "Odd")
}

# --- Functions ---

function header(text) {
    print "\n=== " text " ==="
}

function printName(fn, ln) {
    print "Full name :", fn, ln
}

# Custom logic to find all indexes of a substring
function gindex(str, sub,    i) {
    for (i = 1; i <= length(str); i++) {
        if (substr(str, i, length(sub)) == sub) {
            print "Found at index:", i
        }
    }
}

function sum_range(start, end,    i, s) {
    for (i = start; i <= end; i++) {
        s += i
    }
    return s
}
