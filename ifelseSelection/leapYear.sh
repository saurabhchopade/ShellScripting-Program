#!/bin/bash -x
#Write a program that takes a year as input and outputs the Year is a Leap Year or not
#a Leap Year. A Leap Year checks for 4 Digit Number, Divisible by 4 and not 100 unless
#divisible by 400.
read -p "Enter the year=" leap;

	if [ $leap -gt 1000 ] && [ $leap -lt 10000 ]
	then 
		
		if [ $(( $leap%4)) -eq 0 ] && [ $(($leap%400)) ]  && [ $(( $leap%100 )) ];
      then                  
			echo "leap year";                
		else
			echo "this Not Leap year";    
		fi
	else          
		echo "year should be in a four Digit";
	fi                    

            


