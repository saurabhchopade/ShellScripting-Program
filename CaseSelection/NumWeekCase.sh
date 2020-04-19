#!/bin/bash -x
#Read a Number and Display the week day (Sunday, Monday,...)
read -p "Enter Day Number =" dayNum;
	case $dayNum in
	1)
		echo "Monday";
		;;
	2)
		echo  "Tuesday";
		;;
	3)
		echo "Wednesday";
		;;
	4)
		echo "Thursday"
		;;
	5)
		echo "Friday"
		;;
	6)
		echo "saturday";	
		;;
	7)
      echo "Sunday";
		;;
	esac

	if [ $dayNum -gt 7 ]
   then 
             echo "Week Conatain 7 days Enter another Number";
   fi




