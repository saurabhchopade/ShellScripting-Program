#!/bin/bash -x
#Write a program that takes day and month from the command line and prints true if

#day of month is between March 20 and June 20, false otherwise.

echo "Your Date Should in This Format {{{{{  May20 capital small alloweded }}}} mm-date  ";

read -p "Enter Your Date=" check;

dateCheck=`date -d"${check}" +%m%d`

start="Mar 20";
end="Jun 20";

minDate=`date -d"${start}" +%m%d`
maxDate=`date -d"${end}" +%m%d`

	if [  $dateCheck -ge $minDate ] && [ $dateCheck -le $maxDate ]
	then 

		echo "True";

	else

		echo "false";

	fi

