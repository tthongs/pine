: '
x=1
while [[ $x -gt 0 ]] ; do
#echo "this is infinite"
	echo "$x"
	x=$((x+1))
	sleep 1
done
'
: '
cnt=1
while ls f10 &> /dev/null && [[ $cnt -lt 11 ]] ; do
	echo "f10 is present"
	sleep 1
	cnt=$(expr $cnt + 1)
done
'
cnt=1
while ls f10 &>/dev/null; do
  echo "f10 is present"
  sleep .5
  if [[ $cnt -gt 10 ]]; then
    #exit
    break
  fi
  cnt=$(expr $cnt + 1)
done

echo "end of script"
