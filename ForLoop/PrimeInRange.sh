#!/bin/bash -x
# 4)  Extend the program to take a range of number as input and output the Prime
# Numbers in that range.
read -p "Starting Number(Range Prime)=" startNum;
read -p "Ending Number(Range Prime)=" endNum;

	for (( counter=startNum; counter<endNum; counter++ ))
	do
		flag=0;
		for (( counter1=2; counter1< $counter; counter1++ ))
      do  
			prime=$(( $counter%$counter1 ));
			if [ $prime -eq  0 ];
       	then
				flag=1;
	     	else
       		printf "\n";
	      fi
		done

       	if [ $flag -eq 0 ];
        	then 
				  printf "\n \n \n";
              printf "=====";        
              echo "PRIME NUMBER" $counter;
              printf "======";
              printf "\n \n \n";
         else
			     printf "\n"; 
      	fi
	done




