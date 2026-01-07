


cnt=5
	while [[ $cnt -gt 1 ]] ; do
		echo $cnt
		#break
			while [[ $cnt -gt 4 ]] ; do
				#echo $cnt
					if [[ $cnt -gt 0 ]] ; then
						break
					fi
				echo $cnt
				cnt=$(expr $cnt - 1)
			done
		cnt=$(expr $cnt - 1)
	done

