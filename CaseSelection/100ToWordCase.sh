#!/bin/bash -x
#Read a Number 1, 10, 100, 1000, etc and display unit, ten, hundred,...
read -p " Enter Value Like (eg-1000) =" cash;

	case $cash in
	1)
		echo "Unit ";
		;;
	10)
		echo "Ten";
		;;
	100)
		echo  "Hundred";
		;;
	1000)
		echo "Thousand";
		;;
	10000)
		echo "ten Thousand";
		;;
	100000)
		echo "Hundred thousand"
		;;
	1000000)
		echo "One million";
		;;
	10000000)
		echo "Ten Million";
		;;	
	esac

   check=$(( $cash%10 ));
	if [ $check -eq 0 ];
	then 
		echo " ";
   else
		echo "Enter Valid Cash ";
	fi;




