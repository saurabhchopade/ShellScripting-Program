#!/bin/bash -x
	for (( ptrCounter=1; ptrCounter<=100; ptrCounter++ ))
	do
	read -p "Pin=" pinCode;
		pinCodePattern="^([0-9]*[a-zA-Z]){3,}[0-9]*$";
			 if [[ $pinCode =~ $pinCodePattern ]]
            then
               printf "\n\n\n";
               echo "Valid Pin";
               printf "\n\n\n";
            else
               printf "\n\n\n";
               echo "Invalid pin";
               printf "\n\n\n";
               fi;
	done
