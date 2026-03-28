#!/bin/bash

# ==============================================================================
# ARRAY REFERENCE EXAMPLES
# ==============================================================================

# 1. SETUP: Example array
arr=("zero" "one" "two" "three" "four")


# ------------------------------------------------------------------------------
# 2. ACCESSING SPECIFIC ELEMENTS
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ACCESSING ELEMENTS                    "
echo "---------------------------------------"

# Accessing index 2 (the 3rd element)
echo "  \$arr[2]:   ${arr[2]}"

# Accessing first element via array name (implicit index 0)
echo "  \$arr:      $arr"

echo ""


# ------------------------------------------------------------------------------
# 3. ARRAY INFORMATION (LENGTH & INDICES)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " ARRAY INFO                            "
echo "---------------------------------------"

# Total number of elements
echo "  Length:    ${#arr[@]}"

# All existing indices
echo "  Indices:   ${!arr[@]}"

echo ""


# ------------------------------------------------------------------------------
# 4. NEGATIVE INDEXING (Last Elements)
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " NEGATIVE INDEXING (Last Items)        "
echo "---------------------------------------"

# Requires Bash 4.3+
echo "  arr[-1]:   ${arr[-1]}" # Last
echo "  arr[-2]:   ${arr[-2]}" # Second to last

echo ""


# ------------------------------------------------------------------------------
# 5. ARRAY SLICING
# ------------------------------------------------------------------------------

echo "---------------------------------------"
echo " SLICING: \${arr[@]:start:length}       "
echo "---------------------------------------"

# Slice 2 elements starting at index 0
echo "  Slice (0:2): ${arr[@]:0:2}"

# Slice 2 elements starting at index 2
echo "  Slice (2:2): ${arr[@]:2:2}"

echo ""
