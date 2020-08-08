#!/bin/bash -x
isHead=0
isTail=1

head_count=0
tail_count=0

win_difference=0

echo "Welcome to flip coin Program"

Check_flip=$((RANDOM%2))


if [ $Check_flip == 0 ]
then
	echo "head"
else
	echo "tails"
fi

for((i=0;i<20;i++))
do
    Check_flip=$((RANDOM%2))
	
	if [ $Check_flip -eq $isHead ]
	then
	      head_count=$((head_count+1))
    elif [ $Check_flip -eq $isTail ]
	then
	      tail_count=$((tail_count+1))
	fi
	
	if [ $head_count -eq 21 ]
	then
	     while [ $win_difference -ne 2 ]
		 do
		    tail_count=$((tail_count+1))
			win_difference=$((head_count-tail_count))
		 done
		 break
	elif [ $tail_count -eq 21 ]
	then
	     while [ $win_difference -ne 2 ]
		 do
		    head_count=$((head_count+1))
			win_difference=$((tail_count-head_count))
		 done
		 break
	fi
	
done

echo "Head occured $head_count times"
echo "Tail occured $tail_count times"