#! /bin/bash 

declare -A dict
declare -A dict1
declare -A Dict1
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
echo "Combination--->"${dict[@]}
hp=$(echo $(( $hc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
echo "Head percentaege $hp"

tp=$(echo $(( $tc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
echo "Tail percentaege $tp"

echo "-------------------------------------------"
t=0
hhc=0
htc=0
thc=0
ttc=0
j=0
while(( $t <= 10 ))
do
	ran1=$(( $RANDOM%4 ))
	case $ran1 in
		0) (( hhc++ ))
		   dict1[ $(( j++ )) ]='hh'
			;;
		1) (( htc++ ))
                   dict1[ $(( j++ )) ]='ht'
                        ;;
		2) (( thc++ ))
                   dict1[ $(( j++ )) ]='th'
                        ;;
		3) (( ttc++ ))
                   dict1[ $(( j++ )) ]='tt'
                        ;;
		*) echo "--"
			;;

	esac
	(( t++ ))
done
echo "Combination--->" ${dict1[@]}
hhp=$(echo $(( $hhc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
htp=$(echo $(( $htc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
thp=$(echo $(( $thc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
ttp=$(echo $(( $ttc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
Dict1=( ["hhp"]=$hhp ["htp"]=$htp ["thp"]=$thp ["ttp"]=$ttp )
echo "Keys---------->" ${!Dict1[@]}
echo "Percentage---->" ${Dict1[@]}
