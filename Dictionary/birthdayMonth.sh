#!/bin/bash -x
declare -A month
declare -A year
birthdayCount=0;
#GENERATING  THE DICE NUMBER BY USING RANDOM

	for(( records=1; records<=50; records++))
	do
		monthGenerate=$(( RANDOM % 10 ));
      yearGenerate=$((RANDOM%2));
		if [ $monthGenerate -gt 6 ];
		then
			monthGenerate=$(( $monthGenerate % 6 ));
		else  

			if [ $monthGenerate -eq 0 ]
		   then
				monthGenerate=1
			fi
		fi

		if [[ $yearGenerate -eq 1  ]]
		then
			monthGenerate=$(( $monthGenerate * 2 ));
		fi;

      month[ $records ]=$monthGenerate;

		if [[ $yearGenerate -eq 0 ]]
		then
         Y1=92;
			year[ $records ]=$Y1;
		else
			Y2=93;
			year[ $records ]=$Y2;
		fi;
	done

printf "\n \n \n";
echo "MONTH / YEAR==" ${month[@]} " / " ${year[@]};
printf "\n \n \n";
read -p  "ENTER MONTH NUMBER=" checkMonth;

	for i in ${month[@]}
	do
      if [[ $i  -eq  $checkMonth ]]
      then
     		 ((birthdayCount++))
      fi;
	done

echo "THERE ARE BirthDays=" $birthdayCount;  

