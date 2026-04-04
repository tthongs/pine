BEGIN{
str = "this is awkawkawk match cmd."
m=match(str,"(awk)+")
print RSTART
print RLENGTH
print m
print substr(str,RSTART,RLENGTH)
  }
