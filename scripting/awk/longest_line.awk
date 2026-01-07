BEGIN{
  max = 0
  maxstr=$0
  }
  {
    if(length($0)>max){
      max=length($0)
      maxstr=$0
      }
    }

END{
      print "longest string length is : " max
      print "the string is : " maxstr
      }

