#!/bin/bash -x
read -p "Enter The Value Of N (It give power of 2 upto 2 restTo N)=" num1;
check=1;

	for (( calc=1; calc <= num1; calc++ ))
	do
		check=$(( $check * 2 ));
	done

printf "\n";
echo "2 The Power $num1 is=" $check;
printf "\n";

	for (( counter=1; counter<= 10; counter++ ))
	do
		power=1;
		for (( counter1=1; counter1 <= $counter ; counter1++ ))
		do
			power=$(( $power * 2 ));
		done

		if [ $power -gt $check ]
      then 
			exit 1;
   	else
			echo $power;
		fi;
	done






