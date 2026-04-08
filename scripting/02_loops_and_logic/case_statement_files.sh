#!/usr/bin/bash
# Description: Demonstrates using a case statement to check file extensions and presence.
# Author: Gemini CLI

header() {
    echo "-----------------------------------------------------"
    echo "CHECKING FILES: $@"
    echo "-----------------------------------------------------"
}

if [[ $# -eq 0 ]]; then
    echo "Usage: $0 file1 file2 ..."
    exit 1
fi

header "$@"

for i in "$@" ; do
    case $i in
    *.txt)
        if [[ -f $i ]] ; then
            echo "$i: Existing text file"
        else
            echo "$i: Non-existing text file"
        fi
        ;;
    *.sh)
        if [[ -f $i ]] ; then
            echo "$i: Existing shell script"
        else
            echo "$i: Non-existing shell script"
        fi
        ;;
    *)
        echo "$i: Unknown file type"
        ;;
    esac
done
