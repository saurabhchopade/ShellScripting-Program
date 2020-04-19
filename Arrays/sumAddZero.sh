#!/bin/bash 
declare -a  numbers
numbers[1]="0";
numbers[2]="-1";
numbers[3]="2";
numbers[4]="-3";
numbers[5]="1";
numbers[6]="0";
numbers[7]="4";
numbers[8]="2";
numbers[9]="0";
numbers[10]="-1";
tripletCount=0;
num=5;

	for (( index1=1; index1 <=num; index1++ ))
	do
		for (( index2=$((index1+1)); index2 <=num; index2++ ))
		do
		
			for(( index3=$((index2+1)); index3<=num; index3++ ))
			do
            if [ $index1 -ne $((num-1)) ]
            then
               addition1=0;
					addition2=0;
					addition1=$(( ${numbers[index1]} +  ${numbers[index2]} )); 
               addition2=$(( $addition1 + ${numbers[index3]}));			
					if [[ $addition2 -eq 0 ]]
					then							
						printf "\n \n \n";
						echo "============ TRIPLET ADDITION ZERO>>" ${numbers[index1]} "= " ${numbers[index2]} "= " ${numbers[index3]};				
						printf "\n \n \n ";
						((tripletCount++));

					fi; 
				fi;			   
			done
		done
	done
echo "TRIPLET COUNT=" $tripletCount;
