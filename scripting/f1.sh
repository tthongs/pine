#!/usr/bin/bash

#egrep '[0-9]{3}$' f1
cnt=1
while IFS= read -r line ; do
	#echo "$line"
	if [[ ($cnt -eq 2 || $cnt -eq 3) && $line =~ [0-9]{3,}$ ]] ; then
		echo "$cnt: $line"
	fi
	#cnt=$(( $cnt + 1 ))
	cnt=$( expr $cnt + 1)
done < f1
