#!/bin/bash -x
# Use Random to get Dice Number between 1 to 6

singleNum=$(( RANDOM % 10 ));

	if [ $singleNum -gt 6 ];
	then

		store=$(( $singleNum % 6 ));
 		
		echo $store;    

	else  

		if [ $singleNum -eq 0 ]
  		then

			single=1
		
			echo $single;
		
		else 	
	
			echo $singleNum;
          	
		fi

	fi


