#! /bin/bash
ran=$(( $RANDOM%2 ))
if(( $ran == 0 ))
then
	echo "Heads"
else
	echo "Tails"
fi
