# Arrays Tutorial Index

This directory covers indexed and associative arrays in Bash, used to manage collections of data.

## Core Folders

1. **`01_basics`**: Basic array declaration and access.
2. **`02_iteration`**: Looping through array indices and values.
3. **`03_operations`**: Advanced manipulations like deletion and slicing.
4. **`comprehensive_arrays.sh`**: A master script demonstrating indexing, slicing, copying, and associative arrays.

## Key Concepts

### **Indexed Arrays**
- **Declaration**: `arr=(val1 val2 val3)`.
- **Access**: `${arr[0]}`.
- **Length**: `${#arr[@]}`.

### **Associative Arrays (Bash 4.0+)**
- **Declaration**: `declare -A arr`.
- **Assignment**: `arr["key"]="value"`.
- **Access**: `${arr["key"]}`.

### **Iteration**
- **Values**: `for i in "${arr[@]}"`.
- **Indices**: `for i in "${!arr[@]}"`.

## Key Takeaways
- Always use quotes when expanding arrays (`"${arr[@]}"`) to preserve elements with spaces.
- Subshells in loops (like pipes) can cause array modifications to be lost in the parent shell.
