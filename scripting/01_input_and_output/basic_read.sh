#!/usr/bin/bash

read -p "pass first number:" n1
read -p "pass second number:" n2

if [[ -z $n1 ]] ; then
	echo "first value is null, pass a valid integer value"
	exit
fi

if [[ -z $n2 ]] ; then
	echo "second value is null, pass a valid integer value"
	exit
fi


echo "adding $n1 and $n2"

result=$(expr $n1 + $n2)

echo "Sum is $result"
