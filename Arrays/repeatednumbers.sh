#!/bin/bash -x

declare -a  numbers
declare -a storeDoubleNum
count=0;
start=$1; #Argument From Command Line
end=$2;

	for (( index1=start; index1<=end; index1++ ))
	do
			divNumber=$(( $index1 % 11 ));
         if [[ $divNumber -eq 0 ]]
			then
				storeDoubleNum[((count++))]=$(($index1));
		
			fi
	done
printf "\n \n \n";
echo "Double Numbers=" ${storeDoubleNum[@]};
printf "\n \n \n";

