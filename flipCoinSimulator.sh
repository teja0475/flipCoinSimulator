#!/bin/bash

head=1
tail=0
count=0
if [[ $count == 0 ]]
then
	while (( $count < 43 ))
	do
		flip_result=$((RANDOM%2))
		if [[ $flip_result == $head ]]
		then
			((Hcount++))
		else
			((Tcount++))
		fi
	((count++))
	done
	echo "Head value $head won for $Hcount times"
	echo "Tail value $tail won for $Tcount times"
fi
