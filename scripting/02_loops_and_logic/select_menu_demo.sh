#!/bin/bash

# ==============================================================================
# select_menu_demo.sh - Creating Interactive Menus with 'select'
# ==============================================================================
# The 'select' command provides a simple way to generate numbered menus 
# for user interaction. It uses the PS3 variable as the prompt.
# ==============================================================================

header() {
    echo -e "\n\033[1;34m>>> $1 <<<\033[0m"
}

# 1. Simple Script Selector
header "1. Simple File/Script Selector"
PS3="Select a script to run (or Ctrl+C to exit): "

# Glob files into the menu
select f in *.sh; do
    if [[ -n "$f" ]]; then
        echo "Executing: $f"
        # In a real scenario, you'd run it: bash "$f"
        # For this demo, we'll just break after a selection.
        break
    else
        echo "Invalid selection: $REPLY"
    fi
done

# 2. Advanced Menu-Driven Calculator
header "2. Interactive Calculator using select and bc"

calc() {
    read -p "Enter number 1: " n1
    read -p "Enter number 2: " n2
    # Using bc with a here-string for floating-point calculation
    echo -e "\033[1;32mResult: $n1 $1 $n2 = $(bc -l <<< "scale=3; $n1 $1 $n2")\033[0m"
}

PS3="Select an operation: "
options=("add" "sub" "mult" "div" "quit")

select opt in "${options[@]}"; do
    case "$opt" in
        "add")
            calc "+" ;;
        "sub")
            calc "-" ;;
        "mult")
            calc "*" ;;
        "div")
            calc "/" ;;
        "quit")
            echo "Exiting calculator."
            break ;;
        *)
            echo "Invalid response: $REPLY" ;;
    esac
done

echo -e "\n\033[1;32mDemo Complete.\033[0m"
