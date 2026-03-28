
cnt=10

while [[ $cnt -gt 0 ]] ; do
	if [[ $cnt -gt 4 && $cnt -lt 8 ]] ;then
		cnt=$(expr $cnt - 1)
		continue
	fi
	echo $cnt
	cnt=$( expr $cnt - 1)
done


