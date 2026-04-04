BEGIN{
	var=1
}

{
	print $0
	print "var\t" var
	var++
}

END{
	print var
	print "DONE"
}
