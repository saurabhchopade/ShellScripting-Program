#!/bin/bash -x
#   Write a program that takes a input and determines if the number is a prime.
read -p "Enter Number (check Prime)=" primeNum;
check=primeNum/2;
flag=0;

	for (( counter=2; counter< $check; counter++ ))
	do		
		echo $counter;
		prime=$(( $primeNum%$counter ));

		if [ $prime -eq 0 ]
      then
			flag=1;
		fi
	done

	if [ $flag -eq 0 ]
   then
		echo "Prime Number"
	else
		echo "Not Prime Number";
  fi





