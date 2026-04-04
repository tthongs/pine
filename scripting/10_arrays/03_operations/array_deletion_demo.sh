#!/bin/bash

# ==============================================================================
# ARRAY DELETION DEMO: UNDERSTANDING UNSET AND RE-INDEXING
# ==============================================================================

# ------------------------------------------------------------------------------
# 1. INITIALIZE: Creating the array
# ------------------------------------------------------------------------------

arr=("000" "111" "222" "333" "444")

echo "---------------------------------------"
echo " INITIAL STATE                         "
echo "---------------------------------------"
echo "  Values:  ${arr[@]}"
echo "  Indices: ${!arr[@]}"
echo "  Length:  ${#arr[@]}"
echo ""


# ------------------------------------------------------------------------------
# 2. ACTION: Using 'unset' to delete an element
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ACTION: unset arr[2]                  "
echo "---------------------------------------"

unset 'arr[2]' # Quotes prevent globbing in some shells

echo "  Result: Index 2 has been removed."
echo ""


# ------------------------------------------------------------------------------
# 3. VERIFY: Seeing the gaps
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " STATE AFTER DELETION                  "
echo "---------------------------------------"

# Notice that index 2 is missing from the indices list.
echo "  Values:  ${arr[@]}"  # Shows: 000 111 333 444
echo "  Indices: ${!arr[@]}"  # Shows: 0 1 3 4
echo "  Length:  ${#arr[@]}"  # Shows: 4 (counts non-null items)
echo ""


# ------------------------------------------------------------------------------
# 4. RE-INDEXING: Closing the gaps
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ACTION: Re-indexing to close gaps     "
echo "---------------------------------------"

# This re-creates the array using only the current values.
arr=("${arr[@]}")

echo "  Indices after re-indexing: ${!arr[@]}" # Shows: 0 1 2 3
echo ""
