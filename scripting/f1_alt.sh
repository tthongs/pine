#!/usr/bin/bash
count=0

while IFS= read -r line ; do
    
    count=$((count + 1))

    if [ $count -eq 1 ]; then
        continue
    fi
    
    if [[ $line =~ [0-9]{3}$ ]]; then
        echo "$line"
    fi
    
done < f1