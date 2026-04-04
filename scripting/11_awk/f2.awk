BEGIN{
	RS="\n\n"
	max=0
}
{
	print NR
	print NF
	for( i=1;i<=NF;i++) {
		if( length($i) > max ) {
			max=length($i)
			maxf=$i
		}
	}
	print max
	print maxf
}
