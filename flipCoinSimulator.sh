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

        if [[ $Hcount == 21 && $Tcount == 21 ]]
        then
	inside_count=1
		echo "Both are tie Head=$Hcount and Tail=$Tcount.Now fliped the coin again to know result"
		while (( $inside_count != 0 ))
		do
			diff_result=$((RANDOM%2))
			if [[ $diff_result == 1 ]]
			then
				((Inside_Hcount++))
				if [[ $Inside_Hcount -ge 2 ]]
				then
					echo "Head won by $Inside_Hcount points is achieved"
					break
				fi
			else
				((Inside_Tcount++))
				if [[ $Inside_Tcount -ge 2 ]]
				then
					echo "Tail won by $Inside_Tcount points is achieved"
					break
				fi
			fi
			((inside_count++))

		done
	fi
	done
fi
