#!/usr/bin/bash
# Description: Comprehensive demonstration of Bash arrays, including indexed and associative arrays, 
# slicing, copying, and iteration.
# Author: Gemini CLI

header() {
    echo "-----------------------------------------------------"
    echo "STEP: $1"
    echo "-----------------------------------------------------"
}

header "Basic Indexed Array Operations"
declare -a arr=(a b c)
echo "First element: ${arr[0]}"
echo "Second element: ${arr[1]}"
echo "Third element: ${arr[2]}"

header "Printing Array Elements"
echo "First element (using \$arr): $arr"
echo "All elements (using \${arr[@]}): ${arr[@]}"

header "Array Metadata"
echo "Array length: ${#arr[@]}"
echo "Array indices: ${!arr[@]}"

header "Negative Indexing"
echo "Last element: ${arr[-1]}"
echo "Second to last: ${arr[-2]}"

header "Array Slicing"
echo "Slice 0:2 -> ${arr[@]:0:2}"
echo "Slice -2:2 -> ${arr[@]: -2:2}"

header "Iteration with Filtering"
for i in "${arr[@]}" ; do
    [[ $i == "b" ]] && continue
    echo "Processing element: $i"
done

header "Checking for Integers in an Array"
is_integer() {
    [[ "$1" =~ ^[0-9]+$ ]]
}

arr1=(a b 2 c 5 10 d)
for i in "${arr1[@]}" ; do
    if is_integer "$i" ; then
        echo "Found integer: $i"
    fi
done

header "IFS and Array Joining"
declare -a arr_join=(a b c)
IFS=,
echo "Joined with comma (IFS=,): ${arr_join[*]}"
unset IFS
echo "Joined with default IFS: ${arr_join[*]}"

header "Multi-word Elements"
declare -a ARR_MULTI=( A B 'C D F' )
echo "Full array: ${ARR_MULTI[@]}"
echo "Third element: ${ARR_MULTI[2]}"

header "Array Re-declaration and Slicing"
declare -a ARR_DYN=([0]="I" [1]="J" [2]="K" [3]="Z" [4]="a b c")
echo "Indices: ${!ARR_DYN[@]}"
echo "Slice 0:1: ${ARR_DYN[@]:0:1}"

header "String Slicing within Array Elements"
declare -a words=("pine" "vlsi" "scripting")
for i in "${words[@]}" ; do
    echo "Word: $i | First char: ${i:0:1} | Last char: ${i: -1}"
done

header "Copying and Appending Arrays"
declare -a A1=(a b c)
A2=(X Y Z "${A1[@]}")
echo "Initial A2: ${A2[@]}"
A2+=(1 2 3)
echo "After append: ${A2[@]}"
A2=(0 "${A2[@]}")
echo "After prepend: ${A2[@]}"

header "Associative Arrays"
declare -A assoc_arr
assoc_arr["foo"]="FOO"
assoc_arr["bar"]="BAR"
assoc_arr["baz"]="BAZ"

echo "Iterating over values:"
for i in "${assoc_arr[@]}" ; do
    echo "Value: $i"
done

echo "Iterating over keys and values:"
for key in "${!assoc_arr[@]}" ; do
    echo "Key: $key | Value: ${assoc_arr[$key]}"
done

header "Dynamic Array Creation"
declare -a squares
for i in {0..10} ; do
    squares[$i]=$(( i*i ))
done
echo "Squares array: ${squares[@]}"
