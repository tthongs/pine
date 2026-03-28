#!/bin/bash

# ==============================================================================
# LOOP CONDITIONS AND EXPANSION: BASED ON SCREENSHOT_20260321_165545.PNG
# ==============================================================================

# 1. SETUP: Example array
arr=("a" "b" "c" "d")


# ------------------------------------------------------------------------------
# 2. LOOP WITH CONDITION: Skipping an element
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " LOOP WITH 'continue' CONDITION        "
echo "---------------------------------------"

# This loop iterates through the values and skips "b"
for i in "${arr[@]}"; do
    [[ $i == "b" ]] && continue
    echo "  Processing item: $i"
done

echo ""


# ------------------------------------------------------------------------------
# 3. COMPARING EXPANSIONS: Values vs. Indices
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " COMPARING EXPANSIONS                  "
echo "---------------------------------------"

# Printing all values
echo "  echo \"\${arr[@]}\":     ${arr[@]}"

# Printing all indices (keys)
echo "  echo \"\${!arr[@]}\":    ${!arr[@]}"

echo ""


# ------------------------------------------------------------------------------
# 4. PRINTF FORMATTING: Vertical Output
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " USING printf FOR NEWLINES             "
echo "---------------------------------------"

# printf "%s\n" will print each element on a new line.
printf "  > %s\n" "${arr[@]}"

echo ""
