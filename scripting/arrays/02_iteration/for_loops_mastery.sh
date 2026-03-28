#!/bin/bash

# ==============================================================================
# FOR LOOPS MASTERY: A CLEAN GUIDE TO ARRAY ITERATION
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. SETUP: Define a test array
# ------------------------------------------------------------------------------

# We include spaces in elements to show why quoting "${array[@]}" is mandatory.
fruits=(
    "Green Apple" 
    "Ripe Banana" 
    "Red Cherry" 
    "Golden Mango"
)


# ------------------------------------------------------------------------------
# 2. METHOD A: Iterating by VALUES (Most Common)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD A: Iterating by Value          "
echo "---------------------------------------"

for fruit in "${fruits[@]}"; do
    echo "  > Item: $fruit"
done

echo "" # Blank line for terminal readability


# ------------------------------------------------------------------------------
# 3. METHOD B: Iterating by INDICES (For Position Access)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD B: Iterating by Index          "
echo "---------------------------------------"

for i in "${!fruits[@]}"; do
    echo "  > Index [$i] contains: ${fruits[$i]}"
done

echo ""


# ------------------------------------------------------------------------------
# 4. METHOD C: C-STYLE LOOP (Traditional)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD C: C-Style (Traditional)      "
echo "---------------------------------------"

len=${#fruits[@]}

for (( i=0; i<$len; i++ )); do
    echo "  > Position $i: ${fruits[$i]}"
done

echo ""


# ------------------------------------------------------------------------------
# 5. METHOD D: LOOPING AND MODIFYING
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " METHOD D: Modifying During Loop      "
echo "---------------------------------------"

prices=(10 20 30 40)

echo "  Before: ${prices[*]}"

for i in "${!prices[@]}"; do
    # Add 5 to each price using arithmetic expansion
    prices[$i]=$(( prices[$i] + 5 ))
done

echo "  After:  ${prices[*]}"
echo ""
