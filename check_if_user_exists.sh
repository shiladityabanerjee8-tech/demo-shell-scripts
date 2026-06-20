#!/bin/bash

<<info
this shell script checks if user exists
info

read -p "enter the username you wish to check" username

count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')
if [ $count == 0 ];
then
	echo "User doesnot exist"
else
	echo "User exists"
fi



 

