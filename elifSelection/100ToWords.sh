#!/bin/bash -x

read -p "Enter Number in terms of 100 =" check;

	if [ $check -eq 1 ]
   then

		echo "Unit";

	elif [ $check -eq 100 ]
   then

		echo "hundred";

	elif [ $check -eq 1000 ]
   then
   
		echo "Thousand";

	elif [ $check -eq 10000 ]
   then

		echo "Ten Thousand";

	elif [ $check -eq 100000 ]
   then

		echo "Hundred thousand";

	elif [ $check -eq 1000000 ]
   then

		echo "One Million";

	elif [ $check -eq 10000000  ]
   then

		echo "Ten Milliom";
   
	else

		echo "Cash Cannot be  Dispence";

	fi
       
       
