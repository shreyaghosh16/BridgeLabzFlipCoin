#!/bin/bash -x

echo "Welcome to flip coin Program"

Check_flip=$((RANDOM%2))


if [ $Check_flip == 0 ]
then
	echo "head"
else
	echo "tails"
fi