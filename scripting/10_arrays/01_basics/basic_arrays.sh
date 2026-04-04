#!/bin/bash

# ==============================================================================
# BASIC ARRAYS: DECLARATION AND INITIALIZATION
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. INDIVIDUAL ASSIGNMENT
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " INDIVIDUAL ASSIGNMENT                 "
echo "---------------------------------------"

# Explicit declaration (optional for indexed arrays)
declare -a fruits

# Assigning values one by one
fruits[0]="Apple"
fruits[1]="Banana"

echo "  Index 0: ${fruits[0]}"
echo "  Index 1: ${fruits[1]}"
echo ""


# ------------------------------------------------------------------------------
# 2. BULK ASSIGNMENT (THE COMMON WAY)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " BULK ASSIGNMENT                       "
echo "---------------------------------------"

# Assign multiple values at once using parentheses
colors=("Red" "Green" "Blue" "Yellow")

echo "  All Colors:  ${colors[@]}"
echo ""


# ------------------------------------------------------------------------------
# 3. LENGTH AND INDICES
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ARRAY INFO                            "
echo "---------------------------------------"

# Total number of elements
echo "  Total colors:  ${#colors[@]}"

# All indices currently in use
echo "  All indices:   ${!colors[@]}"
echo ""


# ------------------------------------------------------------------------------
# 4. APPENDING TO AN ARRAY
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " APPENDING VALUES                      "
echo "---------------------------------------"

# Use += to add new elements to the end
colors+=("Orange" "Purple")

echo "  Updated colors: ${colors[*]}"
echo ""
