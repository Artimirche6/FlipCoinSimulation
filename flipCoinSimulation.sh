#! /bin/bash/ -x

read -p " Enter number of times the Coin is Flip : " num

head=0
tail=0

for((i=1; i<=$num; i++))
do
	echo "This problem displays the winner Heads or Tails"

	flip=$(($RANDOM%2))

	if [ $flip -eq 1 ]
	then
		echo "HEAD"
		head=$(($head+1))
	else
		echo "TAIL"
		tail=$(($tail+1))
	fi
done

echo " Number of HEAD = " $head
echo " Number of TAIL = " $tail
