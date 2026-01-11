BEGIN{
	max=0
}
{
	if( length($0) > max ) {
		max=length($0)
		max_string=$0
	}
}
END{
	print "longest record :" max_string
	print "longest string length is " max
}

