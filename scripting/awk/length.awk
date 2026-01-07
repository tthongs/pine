BEGIN{
  print " this awk script returns the lenghth of each line in a file."

  

  print "length of : " $0 ": " length($0)

}
