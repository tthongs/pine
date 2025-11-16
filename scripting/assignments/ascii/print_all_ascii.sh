#!/usr/bin/bash
#
#
:'this is 
a multi line comment'

for i in {0..9}; do
  printf "char is %s\n" $i
  printf "ascii: %d\n" "'$i"
done
for i in {a..z}; do
  printf "char is %s\n" $i
  printf "ascii: %d\n" "'$i"
done
for i in {A..Z}; do
  printf "char is %s\n" $i
  printf "ascii: %d\n" "'$i"
done
