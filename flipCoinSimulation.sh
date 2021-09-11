#! /bin/bash/ -x

echo "This problem displays the winner Heads or Tails"

head=0
tail=0

while [ $head -le 21 ] && [ $tail -le 21 ]
do
	flip=$(($RANDOM%2))

	if [ $flip -eq 1 ]
	then
		echo "HEAD"
		head=$(($head+1))
	else
		echo "TAIL"
		tail=$(($tail+1))
	fi

echo " Number of HEAD = " $head
echo " Number of TAIL = " $tail


if [ $head -eq $tail ]
then
	echo " Match Tie"
	continue
else	
	if [ $head -gt $tail ]
	then
		echo " HEAD WON "
		win=$(($head-$tail))
		echo " Head Won by $win Times"
	else
		echo " TAIL WON "
                win=$(($tail-$head))
                echo " Tail Won by $win Times"
	fi
fi

done
