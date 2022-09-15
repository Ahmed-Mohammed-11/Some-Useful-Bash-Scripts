#!/bin/zsh
if test -e $1 
then 
	echo "this file/folder exists"
else 
	echo "this file/folder doesn't exist"
fi