#!/usr/bin/bash

read -p "Welcome, pls provide dir path to find a file :" p
echo "you have provided path as: $p"

[[ ! -d $p ]] && echo "dir $p not found, exit" && exit 1


read -p "Type the file type (e.g f/d/l) :" typ
echo "you have provided type as: $typ"

[[ ! $typ =~ ^[fdl]$ ]] && echo "provide file type as f/d/l only,exit" && exit 1

read -p "pass name of file/dir/link :"  name

read -p "OK to proceed y/n " rep

[[ $rep == "n" ]] && exit 0

if [[ $rep == "y" ]] ; then
	find $p -type $typ -name $name
fi




