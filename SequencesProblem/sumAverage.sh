#!/bin/bash -x
#Write a program that reads 5 Random 2 Digit values , then find their
#Sum time value of num1 is less than 10 and that is not two digit so we set it as minimum 10 two digit
num1=$(( RANDOM%100 ));
num2=$(( RANDOM%100 ));
num3=$(( RANDOM%100 ));
num4=$(( RANDOM%100 ));
num5=$(( RANDOM%100 ));

	if [ $num1 -lt 10 ]
	then 
		num1=10;
	fi

	if [ $num2 -lt 10 ]
	then 
		num2=10;
	fi

	if [ $num3 -lt 10 ]
	then 
		num3=10;
	fi

	if [ $num4 -lt 10 ]
	then 
		num4=10;
	fi

	if [ $num5 -lt 10 ]
	then 
		num5=10;
	fi

sum=$(($num1+$num2+$num3+$num4+$num5));
average=$((sum/5));
echo "Sum is=" $sum;
echo "Average is=" $average;

