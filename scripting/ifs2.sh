#!/usr/bin/bash
printf "%q\n" "$IFS"
IFS=$'\n'
printf "%q\n" "$IFS"
cnt=1
for line in $(cat f1) ; do
	#echo "$cnt:$line"
 	mod=$(expr $cnt % 2)
	if [[ $mod -eq 0 ]] ; then
		echo "$cnt:$line"
	fi
	cnt=$(expr $cnt + 1)
done
