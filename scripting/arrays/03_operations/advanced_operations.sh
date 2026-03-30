#!/bin/bash

# ==============================================================================
# ADVANCED OPERATIONS: SLICING, CONCATENATION, AND PATTERN MATCHING
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. ARRAY SLICING
# ------------------------------------------------------------------------------

# Syntax: ${array[@]:start:length}
letters=(A B C D E F G H I)

echo "---------------------------------------"
echo " SLICING ARRAY                         "
echo "---------------------------------------"

# Slicing from index 2 to get 3 elements (C, D, E)
slice=("${letters[@]:2:3}")

echo "  Original: ${letters[@]}"
echo "  Slice (2:3): ${slice[@]}"
echo ""


# ------------------------------------------------------------------------------
# 2. ARRAY CONCATENATION
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " CONCATENATION (MERGING)               "
echo "---------------------------------------"

group1=(1 2 3)
group2=(4 5 6)

# Combine both into a new array
combined=("${group1[@]}" "${group2[@]}")

echo "  Group 1: ${group1[@]}"
echo "  Group 2: ${group2[@]}"
echo "  Combined: ${combined[@]}"
echo ""


# ------------------------------------------------------------------------------
# 3. SEARCH AND REPLACE IN ALL ELEMENTS
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " SEARCH AND REPLACE PATTERN            "
echo "---------------------------------------"

# Replace a pattern across all array elements
files=(file1.log file2.log data.csv log.txt)

# Replace '.log' with '.bak'
new_files=("${files[@]/.log/.bak}")

echo "  Original: ${files[@]}"
echo "  Updated:  ${new_files[@]}"
echo ""


# ------------------------------------------------------------------------------
# 4. RE-INDEXING (Closing Gaps)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " RE-INDEXING                           "
echo "---------------------------------------"

# Removing an element at a specific index leaves a "gap"
unset 'letters[0]' # Remove 'A'

echo "  After unset[0]: ${letters[@]}"
echo "  Current Indices: ${!letters[@]}"

# Re-index by creating a new array from existing values
letters=("${letters[@]}")

echo "  Indices after Re-indexing: ${!letters[@]}"
echo ""
