#!/bin/bash

head=1
tail=0
flip_result=$((RANDOM%2))
if [[ $flip_result == $head ]]
then
	echo "Head - $flip_result is winner"
else
	echo "Tail - $flip_result is winner"
fi
