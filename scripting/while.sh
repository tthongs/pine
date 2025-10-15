
x=1
while [[ $x -gt 0 ]] ; do
#echo "this is infinite"
	echo "$x"
	x=$((x+1))
	sleep 1
done
