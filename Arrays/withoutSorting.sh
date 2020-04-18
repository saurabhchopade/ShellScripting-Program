#!/bin/bash -x

lastMax=0;
secondMax=0;

firstMin=1000;
secondMin=1000;
SM=0;

declare -a randomArray

	for(( arrayIndex=1; arrayIndex<=10; arrayIndex++ ))
	do
      
		arrayElement=$(( RANDOM%1000 ));

		randomArray[((arrayIndex))]="$arrayElement";


		if [[ $arrayElement -ge $lastMax ]]

		 then
			
			secondMax=$lastMax;

			lastMax=$arrayElement;

		fi;

		if [[ $arrayElement -lt $firstMin ]]

       then

			secondMin=$firstMin;

			firstMin=$arrayElement;

      fi;

	done

	printf "\n \n";

	echo "Element In Array=" ${randomArray[@]};

	printf "\n \n";

	echo "First Mininum Number=====" $firstMin;

   printf "\n \n";

	echo "Second Minimum Element===" $secondMin;

   printf "\n \n";
	
	echo "First Max Element========" $lastMax;

	printf "\n \n";

	echo "Second Max Element=======" $secondMax;

	



