#! /bin/bash/ -x

echo "This problem displays the winner Heads or Tails"

flip=$(($RANDOM%2))

if [ $flip -eq 1 ]
then
	echo "HEAD"
else
	echo "TAIL"
fi
