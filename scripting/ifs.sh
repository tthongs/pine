#!/usr/bin/bash

IFS=$'\t'
str="a b c:d e"

for i in $str ; do
	echo $i
done
