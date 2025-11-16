#!/usr/bin/bash
#
#
:'this is 
a multi line comment'

for i in {0..9} {a..z} {A..Z}; do
  printf "char is %s\n" $i
  printf "ascii: %d\n" "'$i"
done
