#!/bin/bash -x
# While LOOP
# 4)  Write a Program where a gambler starts with Rs 100 and places Re 1 bet
# until he/she goes broke i.e. no more money to gamble or reaches the
# goal of Rs 200. Keeps track of number of times won and number of bets
increment1=1;
amount=100;
betmade=0;
count=0;

	while [ $increment1 -le 100 ]
   do
		read -p "Bet Amount" bet;

      if [ $bet -le $amount ]    
      then 
			((betmade++));
			read -p "Enter (WIN/Lose) w|l =" result;
         yes="w";
         
			if [ "$result" == "$yes" ]
         then 
				((count++));
            winamount=$(( $bet * 2 ));
            amount=$(( $amount+$bet ));
            echo "amount after Winning =" $amount;
         else
            amount=$(( $amount-$bet ));
            echo "Amount after loosing = " $amount;
         fi

		else
         echo "Make small bet than $amount ";
      fi

      if [ $amount -eq 0 ]
      then
      	echo "Winning Bets======" $count;
         printf " \n ";
         echo "Bet Count=========" $betmade;
         exit 1;
      fi
      ((increment1++));
	done 
