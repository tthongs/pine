BEGIN{
}
{
	#print $1,$2,$3,$4
	if (0) {
		for(i=1;i<=NF;i++) {
			printf "%s " , $i
		}
		print "" 
	}

	for(i=2;i<=NF;i=i+2) {
		printf "%s " , $i
	}
	print ""
}
