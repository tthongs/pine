BEGIN{
print "This awk program is calculating the length of each record"
}
{
print "length of:" $0 " : "length($0)
}

