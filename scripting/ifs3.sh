#!/usr/bin/bash
printf "%q\n" "$IFS"
: '
cnt=10
while [ $cnt -gt 0 ]  ; do
	echo "$cnt"
	cnt=$(expr $cnt - 1)
done
'


while IFS= read -r line ; do
	echo "$line"
done < f1
printf "%q\n" "$IFS"
