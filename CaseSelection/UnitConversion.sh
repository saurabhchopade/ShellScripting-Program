
#!/bin/bash -x

#  Write a program that takes User Inputs and does Unit Conversion of

#  different Length units
#  1. Feet to Inch 3. Inch to Feet
#  2. Feet to Meter 4. Meter to Feet

echo "1. Feet to Inch ";
echo "2. Feet to Meter";
echo "3. Inch to Feet ";
echo "4. Meter to Feet";

read -p "Select One option" option;

	case $option in

	1)
		read -p "Feet=" feet;
      ans1=$( ( echo " $feet * 12 " | bc -l ) ) ;
      echo "Feet to Inch=" $ans1;
		;;

	2)
		read -p "Feet=" feet;
      ans2=$( ( echo " $feet / 3.281 " | bc -l ) );
      echo "feet To Meter=" $ans2;
		;;

	3)
		read -p  "Inch" inch;
  		ans3=$( ( echo " $inch / 12 " | bc -l ) );
 		echo "Inch to Feet=" $ans3;
		;;

	4)
		read -p  "Meter=" meter;
      ans4=$( ( echo " $meter * 3.281 " | bc -l ) );
      echo "Meter To Feet=" $ans4;
		;;

	esac

	if [ $option -gt 4 ]
	then 
		echo "Enter Valid Option";
	fi

 


