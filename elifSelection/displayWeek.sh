#!/bin/bash -x
#DiplayWeek

read -p "Enter day Number In week=" check;

	if [ $check -gt 7 ]
	then 
	
		echo "Enter Number less than 8"; 
   
	else
		
		if [ $check -eq 1 ]
      then
      
			echo "Monday";

		elif [ $check -eq 2 ]
  		then
      
			echo "tuesday";

		elif [ $check -eq 3 ]
      then

			echo "Wednesday";

		elif [ $check -eq 4 ]
		then
      
			echo "thursday";

		elif [ $check -eq 5 ]
      then

			echo "Friday";

		elif [ $check -eq 6 ]
      then

			echo "Saturday";

		elif [ $check -eq 7 ]
      then

			echo "Sunday";
		fi
       
	fi
