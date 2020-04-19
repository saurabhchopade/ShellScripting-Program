#!/bin/bash -x
# Add two Random Dice Number and Print the Result
#You will get Number always  DICE numbers (1-2-3-4-5-6)
#here we set value 1 if Dice value 0 in dice their is No zero
diceNum1=$(( RANDOM%10));
diceNum2=$((RANDOM%10));
finalDiceNum1=$(( diceNum1%7));
finalDiceNum2=$((diceNum2%7));

	if [ $finalDiceNum1 -eq 0 ] 
	then 
		finalDiceNum1=1;
	fi

	if [ $finalDiceNum2 -eq 0 ]
	then 
		finalDiceNum1=1;
	fi

addition=$(( $finalDiceNum1+ $finalDiceNum2 ));
echo "addition is=" $addition
