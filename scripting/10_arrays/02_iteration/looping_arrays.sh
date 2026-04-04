#!/bin/bash

# ==============================================================================
# LOOPING ARRAYS: BEST PRACTICES FOR ITERATION
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. SETUP: Array with spaces to test robustness
# ------------------------------------------------------------------------------

fruits=(
    "Gala Apple" 
    "Red Grape" 
    "Yellow Pear" 
    "Blueberry"
)


# ------------------------------------------------------------------------------
# 2. METHOD 1: ITERATING OVER VALUES (MOST COMMON)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD 1: Iterating Over Values       "
echo "---------------------------------------"

# ALWAYS use "${fruits[@]}" with double quotes to prevent word splitting.
for fruit in "${fruits[@]}"; do
    echo "  > Processing: $fruit"
done

echo "" # Blank line for readability


# ------------------------------------------------------------------------------
# 3. METHOD 2: ITERATING OVER INDICES (FOR POSITION)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD 2: Iterating Over Indices      "
echo "---------------------------------------"

# Using "${!fruits[@]}" gives the list of numeric keys.
for i in "${!fruits[@]}"; do
    echo "  > Index $i: ${fruits[$i]}"
done

echo ""


# ------------------------------------------------------------------------------
# 4. METHOD 3: C-STYLE FOR LOOP (TRADITIONAL)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD 3: C-Style Loop                "
echo "---------------------------------------"

# Useful if you need exact control over the counter.
for (( i=0; i<${#fruits[@]}; i++ )); do
    echo "  > Position $i: ${fruits[$i]}"
done

echo ""
