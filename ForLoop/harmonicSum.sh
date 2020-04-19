#!/bin/bash -x
#   2. Write a program that takes a command-line argument n and prints the nth harmonic
#       number. Harmonic Number is of the form
read -p "Enter Value Of N=" num1;
addition=1;
echo "Hn=";
echo "1/1+" 

	for (( counter=2; counter<=$num1; counter++ ))
	do
		echo "1/"$counter;
		add=$( ( echo  "1/$counter" | bc -l ) );
		addition=$( ( echo " $addition+$add " | bc -l ) );
		if [ $counter -ne $num1 ]
		then          
			echo "+";
		fi
	done

echo "harmonic Sum=" $addition;






