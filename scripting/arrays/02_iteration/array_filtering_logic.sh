#!/bin/bash

# ==============================================================================
# ARRAY FILTERING LOGIC: BASED ON SCREENSHOT_20260321_172913.PNG
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. HELPER FUNCTION: is_integer
# ------------------------------------------------------------------------------
# Checks if the first argument is a positive integer using a regular expression.

is_integer() {
    # [[ "$1" =~ ^[0-9]+$ ]] returns 0 (true) if it matches, 1 (false) otherwise.
    [[ "$1" =~ ^[0-9]+$ ]]
    return $?
}


# ------------------------------------------------------------------------------
# 2. SETUP: Mixed content array
# ------------------------------------------------------------------------------

arr1=(a b 2 c 5 10 d)


# ------------------------------------------------------------------------------
# 3. ACTION: Filtering the array for integers
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " FILTERING ARRAY FOR INTEGERS          "
echo "---------------------------------------"

echo "  Original Array: ${arr1[@]}"
echo "  Integers Found:"

for i in "${arr1[@]}"; do
    if is_integer "$i"; then
        echo "    > $i"
    fi
done

echo ""


# ------------------------------------------------------------------------------
# 4. BONUS: File presence check (based on screenshot)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " FILE PRESENCE CHECK                   "
echo "---------------------------------------"

# Checking if a specific file exists (using a placeholder for $1 from the image)
target_file="GEMINI.md"

if ls "$target_file" 2> /dev/null; then
    echo "  File '$target_file' is present."
else
    echo "  File '$target_file' is NOT present."
fi

echo ""
