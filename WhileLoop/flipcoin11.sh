#!/bin/bash -x
# While LOOP
# Extend the Flip Coin problem till either Heads or Tails wins 11 times.
increment1=1;
heads=0;
tails=0;

	while [ $increment1 -le 25 ]
	do
		coin=$(( RANDOM%10 ));
		if [ $coin -le 4 ]; then 
			sleep 1;
			echo "@@@@@@@  Heads";
			((heads++));
		else 
 			sleep 1;
			 echo "@@@@@@@  Tails";
         ((tails++));
		fi

		if [ $heads -eq 11 ]; then  
			echo "Heads Win";         
			exit 1;
		fi

		if [ $tails -eq 11 ]; then  
			echo "tails Win";
			exit 1;
		fi
		
		((increment1++));
	done
