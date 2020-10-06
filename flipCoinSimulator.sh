#!/bin/bash

head=1
tail=0
count=0
if [[ $count == 0 ]]
then
	while (( $count < 42 ))
	do
		flip_result=$((RANDOM%2))
		if [[ $flip_result == $head ]]
		then
			#((Hcount++))
			if [[ $Hcount == 21 ]]
			then
				echo "Head won 21 times by $(($Hcount - Tcount)) times more than Tail"
			fi
		((Hcount++))
		else
			if [[ $Tcount == 21 ]]
			then
				echo "Tail won 21 times by $((Tcount - $Hcount)) times more than Head"
			fi
		((Tcount++))
		fi
		((count++))
	done

        if [[ $Hcount == 21 && $Tcount == 21 ]]
        then
		echo "Both are tie Head=$Hcount and Tail=$Tcount"
        fi

fi
