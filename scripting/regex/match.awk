BEGIN{
str = "this is awk match cmd."
m=match(str,"awk")
print RSTART
print RLENGTH
print m
  }
