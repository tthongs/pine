#!/usr/bin/bash

read -n1 -p "press y to list home dir files or press n to do nothing:"

if [[ $REPLY == "y" ]] ;  then
	ls ~
else
	echo
	echo "do nothing"
fi


