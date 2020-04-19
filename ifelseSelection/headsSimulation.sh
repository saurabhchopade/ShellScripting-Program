#!/bin/bash -x
#Write a program to simulate a coin flip and print out Heads or Tails accordingly.
#HERE 50% POSSIBLITIES OF GETTING NUMBER LESS THAN 5 OR GREATER THAN 5
flip=$(( RANDOM %10 ));

	if [ $flip -ge 5 ]
   then
		echo "Coin is Fliipping in the Air"; 
		sleep 3;
		echo "Yeahhh Heads";
	else
		echo "Coin is Fliipping in the Air";
		sleep 3;
		echo " Yeahhh Tails";
	fi


