#! /bin/bash 

declare -A dict
declare -A dict1
declare -A Dict1
declare -A dict2
echo "---------------Singlet-----------------"
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
		#echo "Heads"
		dict[ $(( i++ )) ]='h'
	else
		(( tc++ ))
		#echo "Tails"
		dict[ $(( i++ )) ]='t'
	fi
	(( t++ ))
done
echo "Combination--->"${dict[@]}
hp=$(echo $(( $hc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
#echo "Head percentaege $hp"

tp=$(echo $(( $tc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
#echo "Tail percentaege $tp"
Dict1=( ["hp"]=$hp ["tp"]=$tp )
echo "Keys---------->" ${!Dict1[@]}
echo "Percentage---->" ${Dict1[@]}

echo "-------------------------------------------"
echo "----------------Doublet-------------------"
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

echo "--------------------------------------------"
echo "------------------Triplet-----------------"
t=0
hhhc=0
hhtc=0
hthc=0
httc=0
thhc=0
thtc=0
tthc=0
tttc=0
while(( $t <= 10 ))
do
	ran2=$(( $RANDOM%8 ))
	case $ran2 in
		0)(( hhhc++ ))
		   dict2[ $(( l++ )) ]='hhh'
			;;
		1)(( hhtc++ ))
                   dict2[ $(( l++ )) ]='hht'
                        ;;
		2)(( hthc++ ))
                   dict2[ $(( l++ )) ]='hth'
                        ;;
		3)(( httc++ ))
                   dict2[ $(( l++ )) ]='htt'
                        ;;
		4)(( thhc++ ))
                   dict2[ $(( l++ )) ]='thh'
                        ;;
		5)(( tthc++ ))
                   dict2[ $(( l++ )) ]='tth'
                        ;;
		6)(( thtc++ ))
                   dict2[ $(( l++ )) ]='tht'
                        ;;
		7)(( tttc++ ))
                   dict2[ $(( l++ )) ]='ttt'
                        ;;
		*) echo "--"
	esac
	(( t++ ))
done
echo "Combination--->" ${dict2[@]}

hhhp=$(echo $(( $hhhc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
hhtp=$(echo $(( $hhtc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
hthp=$(echo $(( $hthc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
http=$(echo $(( $httc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
thhp=$(echo $(( $thhc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
thtp=$(echo $(( $thtc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
tthp=$(echo $(( $tthc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
tttp=$(echo $(( $tttc * 100 )) 11 | awk '{printf"%.2f", $1 / $2}')
Dict1=( ["hhhp"]=$hhhp ["hhtp"]=$hhtp ["hthp"]=$hthp ["http"]=$http ["thhp"]=$thhp ["thtp"]=$thtp ["tthp"]=$tthp ["tttp"]=$tttp )
echo "Keys---------->" ${!Dict1[@]}
echo "Percentage---->" ${Dict1[@]}
Dict1=( ["hp"]=$hp ["tp"]=$tp ["hhp"]=$hhp ["htp"]=$htp ["thp"]=$thp ["ttp"]=$ttp ["hhhp"]=$hhhp ["hhtp"]=$hhtp ["hthp"]=$hthp ["http"]=$http ["thhp"]=$thhp ["thtp"]=$thtp ["tthp"]=$tthp ["tttp"]=$tttp )
