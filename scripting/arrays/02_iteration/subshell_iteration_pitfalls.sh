#!/bin/bash

# Subshell Iteration Pitfalls
# Demonstrates how pipes and explicit subshells affect variable persistence.

# Set up some formatting
header() { echo -e "\n\e[1;34m=== $1 ===\e[0m"; }
note() { echo -e "\e[1;33mNote:\e[0m $1"; }

header "1. The Pipe Subshell Problem"
a=10
echo "Initial value: a=$a"

# Piping to a while loop starts the loop in a subshell.
# Any changes made to 'a' inside the loop will NOT persist outside.
echo -e "item1\nitem2" | while IFS= read -r line; do
    ((a++))
    echo "  Inside loop: a=$a (processing: $line)"
done

echo "After piped loop: a=$a"
note "The value remained 10 because the loop ran in a subshell."

header "2. Solution: Process Substitution"
# Process substitution <(...) allows the loop to run in the current shell.
while IFS= read -r line; do
    ((a++))
    echo "  Inside loop: a=$a (processing: $line)"
done < <(echo -e "item3\nitem4")

echo "After process substitution: a=$a"
note "The value is now 12 because the loop ran in the current shell."

header "3. Explicit Subshells"
a=10
echo "Initial value: a=$a"

# Parentheses (...) create an explicit subshell.
(
    echo "  Inside explicit subshell: a=$a"
    ((a++))
    echo "  Modified inside subshell: a=$a"
)

echo "After explicit subshell: a=$a"
note "Changes inside (...) are lost when the subshell exits."

header "4. Subshell Impact on Arrays"
# This is particularly critical for populating arrays.
my_array=()
echo -e "apple\nbanana" | while read -r fruit; do
    my_array+=("$fruit")
done

echo "Array length after piped loop: ${#my_array[@]}"
note "The array is empty because it was populated inside a subshell."

# Correct way using process substitution:
while read -r fruit; do
    my_array+=("$fruit")
done < <(echo -e "cherry\ndate")

echo "Array length after process substitution: ${#my_array[@]}"
echo "Elements: ${my_array[*]}"
