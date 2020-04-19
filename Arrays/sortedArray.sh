#!/bin/bash -x
declare -a randomArray

	for(( arrayIndex=1; arrayIndex<=10; arrayIndex++ ))
	do
   	arrayElement=$(( RANDOM%1000 ));
		randomArray[((arrayIndex))]="$arrayElement";
	done

	for (( index1=1; index1<=10; index1++ ))
	do

		for (( index2=1;index2<=10;index2++  ))
		do
      	echo "+++++++++++++" ${randomArray[index1]};
			if [[ ${randomArray[index2]} -lt ${randomArray[index1]} ]]
			then
				temp=${randomArray[index1]};
				randomArray[((index1))]=${randomArray[index2]};
				randomArray[((index2))]=$temp;
				echo "+++++++++++++" ${randomArray[index1]};

			fi;	
		done;
	done;
#Array Sorted In decending Order
printf "\n \n";
echo "Sorted Array But In Reverse Fashion=" ${randomArray[@]};
printf "\n \n";
echo "Seccond largest Element= "${randomArray[2]};
printf "\n \n";
echo "Second Smallest Element="${randomArray[9]};
printf "\n \n";

	



