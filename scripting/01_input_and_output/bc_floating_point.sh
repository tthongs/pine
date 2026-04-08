#!/bin/bash

# ==============================================================================
# bc_floating_point.sh - Bash Calculator (bc) for Floating-Point Arithmetic
# ==============================================================================
# Bash built-in arithmetic $(( )) only supports integers. For decimal
# calculations, use the external utility 'bc' (Basic Calculator).
# ==============================================================================

header() {
    echo -e "\n\033[1;34m>>> $1 <<<\033[0m"
}

note() {
    echo -e "\033[0;33mNote: $1\033[0m"
}

# 1. Basic Division (Integer Result)
header "1. Basic Integer Division with bc"
echo "4/2" | bc
echo "5/2" | bc
note "By default, bc performs integer division if no scale is specified."

# 2. Enabling the Math Library (-l)
header "2. Floating-Point Results with the Math Library (-l)"
echo "4/2" | bc -l
echo "5/2" | bc -l
note "The -l flag enables the standard math library and sets a high default precision."

# 3. Setting Precision with 'scale'
header "3. Custom Precision using 'scale'"
echo "scale=2; 5/2" | bc -l
echo "scale=4; 22/7" | bc -l
note "Use 'scale=X' to define the exact number of decimal places for the result."

# 4. Error Handling: Syntax Errors
header "4. Handling Syntax Errors"
echo "scale=; 5/2" | bc -l 2>&1
note "An improperly formatted scale command will result in a (standard_in) syntax error."

# 5. Alternative Input Method: Here-Strings (<<<)
header "5. Using Here-Strings (<<<) for Calculations"
bc -l <<< "scale=3; 10 / 3"
bc -l <<< "5 + 2.5"
note "Here-strings provide a cleaner syntax than piping echo into bc."

# 6. Locating bc on the System
header "6. Locating the bc Utility"
which bc
type -a bc

# Cleanup: No temporary data created in this script.
echo -e "\n\033[1;32mDone.\033[0m"
