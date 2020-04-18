#!/bin/bash -x
count1=0;
count2=0;
count3=0;
count4=0;
count5=0;
count6=0;

declare -A  diceStore

#GENERATING  THE DICE NUMBER BY USING RANDOM

	for(( rollDice=0; rollDice<=66;rollDice++))
	do

		diceNum=$(( RANDOM % 10 ));

		if [ $diceNum -gt 6 ];
		then

			diceNum=$(( $diceNum % 6 ));

		else  

			if [ $diceNum -eq 0 ]
		   then

				diceNum=1
			fi
		fi

# COUNTING THE  PERTICULAR DICE  NUMBER ARRIVED 

printf "\n \n \n ";

		if [[ $count1 -ne 11 ]] && [[ $count2 -ne 11 ]] && [[ $count3 -ne 11 ]] && [[ $count4 -ne 11 ]] && [[ $count5 -ne 11 ]] && [[ $count6 -ne 11 ]] 
		then


		if [[ $diceNum -eq 1 ]]
		then

			diceStore[$rollDice]="$diceNum";

			((count1++));

		elif [[ $diceNum -eq 2 ]]
      then

         diceStore[$rollDice]="$diceNum";
			
			((count2++));

		elif [[ $diceNum -eq 3 ]]
      then

         diceStore[$rollDice]="$diceNum";

			((count3++));

      elif [[ $diceNum -eq 4 ]]
      then

         diceStore[$rollDice]="$diceNum";

			((count4++));
      
		elif [[ $diceNum -eq 5 ]]
      then

         diceStore[$rollDice]="$diceNum";

			((count5++));

      else [[ $diceNum -eq 6 ]]
      

         diceStore[$rollDice]="$diceNum";
			
			((count6++));

		fi

	fi

	done



echo "DICE STore=" ${diceStore[@]};




declare -a minMax

min=500;
max=0;
minMax[1]="$count1";
minMax[2]="$count2";
minMax[3]="$count3";
minMax[4]="$count4";
minMax[5]="$count5";
minMax[6]="$count6";

#  FOR THE FIND MIX MAX VALUES BY USING COUNTER

	for(( arrayIndex=1; arrayIndex<=6; arrayIndex++ ))
	do



		if [[ ${minMax[arrayIndex]} -ge $max ]]

		 then

			max=${minMax[arrayIndex]};
         maxNumber=$arrayIndex;
		fi;



		if [[ ${minMax[arrayIndex]} -le $min ]]

       then

			min=${minMax[arrayIndex]};
         minNumber=$arrayIndex;
      fi;

	done

printf "\n \n";


echo "MIN COUNT IS=" $min " OF NUMBER==============" $minNumber;

printf "\n \n";

echo "MAX COUNT IS=" $max " OF NUMBER==============" $maxNumber;
