#!/bin/sh

file = "C:\Users\Anjali\dtl\calc.sh"

if [ -r $file ]
then 
	echo "file has read access"
else
	echo "file does not have read access"
fi

if [ -w $file ]
then
	echo "file has write permission"
else 
	echo "file does not have read permission"
fi  

if [ -x $file ]
then
	        echo "file has execute access"
	else
		        echo "file does not have execute access"
		fi  

if [ -f $file ]
then
	        echo "normal file"
	else
		        echo "special file"
		fi  

if [ -d $file ]
then
	        echo "file is a directory"
	else
		        echo "file is not a directory"
		fi  


if [ -s $file ]
then 
	echo "File size is not zero"
else
	echo "File size is zero"
fi

if [ -e $file ]
then
	echo "file exists"
else
	echo "file does not exist"
fi

