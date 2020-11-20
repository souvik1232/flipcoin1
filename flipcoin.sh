#! /bin/bash
declare -A dict
t=0
i=0
hc=0
tc=0
while(( $t <= 10 ))
do
	ran=$(( $RANDOM%2 ))
	if(( $ran == 0 ))
	then
		(( hc++ ))
		echo "Heads"
		dict[ $(( i++ )) ]='h'
	else
		(( tc++ ))
		echo "Tails"
		dict[ $(( i++ )) ]='t'
	fi
	(( t++ ))
done
echo ${dict[@]}
hp=$(echo $(( $hc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
echo "Head percentaege $hp"

tp=$(echo $(( $tc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
echo "Tail percentaege $tp"

