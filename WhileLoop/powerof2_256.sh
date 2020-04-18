#!/bin/bash -x

# While LOOP
# 1)  Write a program that takes a command-line argument n and prints a
#     table of the powers of 2 that are less than or equal to 2^n till 256 is
#      reached..

read -p "Enter N Value "  Number;

increment1=1;

check=1;

	while [ $increment1 -le $Number ]
	do
		
		check=$(( $check * 2 ));
	
		((increment1++));

	done

		increment2=1;

		power=1;

	while [ $increment2 -le 8 ]
	do

		power=$(( $power * 2 ));
	
		if [ $power -ge $check  ]; then 

			exit 1;
      
		else 

			echo "=======" $power;

		fi

		((increment2++));

	done
