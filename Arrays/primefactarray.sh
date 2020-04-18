#!/bin/bash -x

declare -a pfArray;


count=0;

read -p "Enter Number To prime Factorization" num;

forLastPrint=$num;

	for (( primer=2; primer<=30; primer++))
	do
		
		flag=0;
		
		for (( counter=2; counter<$primer; counter++ ))
		do

			prime=$(( $primer%$counter ));
         
			if [ $prime -eq 0 ]; then 
         
				flag=1;

			fi                   

		done
	
		if [ $flag -eq 0 ]; then 

			for (( var =1; var<=100 ; var++ ))
         do

				checking=$(( $num%$primer ));
             
				if [ $checking -eq 0 ]; then

					num=$(($num/$primer));
                                 
					echo "==============" $primer;
                            

         	pfArray[((count++))]=$primer;
 
				else
	
					break              
                            
				fi

			done
 
			fi 

	done

printf "\n \n";

echo "PRIME FACTORS OF "$forLastPrint" ARE=" ${pfArray[@]};




