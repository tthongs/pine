#!/usr/bin/bash
#
#
:'this is 
a multi line comment'

for i in {a..z}; do
  printf "char is %s\n" $i
  printf "ascii: %d\n" "'$i"
done
