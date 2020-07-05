#!/bin/bash

if [ $# -ne 2 ]; then
	echo "INPUT 2 ARGUMENTS"
	exit 1
fi

let z="$1" &> "/dev/null"
if [ "$?" -gt "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1

elif [ "$1" -eq "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1

elif [ "$1" -eq "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1

elif [ "$1" -lt "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1
fi

let z="$2" &> "/dev/null"

if [ "$?" -gt "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1

elif [ "$2" -eq "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit 1
elif [ "$2" -lt "0" ]; then
	echo "INPUT NATURAL NUMBER"
	exit
fi

if [ "$1" -lt "$2" ]; then
	a=$2
	b=$1
else
	a=$1
	b=$2
fi

x=$(( a % b ))

while [ ! "$x" == "0" ];
do
	a=$b
	b=$x

	if [[ $b -eq 0 ]]; then 
		break;
	else
		x=$(( a % b ))
	fi
done

echo "The greatest common divisor of $1 and $2 is" $b




