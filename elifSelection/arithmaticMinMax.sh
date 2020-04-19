#!/bin/bash -x
read -p "Num1= " num1;
read -p "Num2= " num2;
read -p "Num2= " num3;
op1=$(( (( $num1 + $num2 ))* $num3  ));
op2=$(( $((  $num1 % $num2  )) + $num3 ));
op3=$(($(( $num3 + $num1 ))/ $num2));
op4=$(($(( $num1 * $num2 ))+ $num3));

	if [ $op1 -gt $op2 ] && [ $op1 -gt $op3 ]&& [ $op1 -gt $op4 ] ;
	then
		echo "Max= " $op1;
	elif [ $op2 -gt $op1  ] && [ $op2 -gt $op3 ] && [ $op2 -gt $op4 ];
   then
		echo "Max =" $op2;
	elif [ $op3 -gt  $op1 ]  && [ $op3 -gt $num2 ] && [ $op3 -gt $op4 ];
   then
		echo "Max" $op3;
	elif [ $op4 -gt  $op1 ]  && [ $op4 -gt $op2 ] && [ $op4 -gt $op3 ];
	then
		echo "Max" $op4;
	else 
		echo "Equal Numbers"; 
	fi

	if [ $op1 -lt $op2 ] && [ $op1 -lt $op3 ]&& [ $op1 -lt $op4 ] ;
	then
		echo "Min= " $op1;
	elif [ $op2 -lt $op1  ] && [ $op2 -lt $op3 ] && [ $op2 -lt $op4 ];
   then
		echo "Min =" $op2;
   elif [ $op3 -lt $op1 ]  && [ $op3 -lt $num2 ] && [ $op3 -lt $op4 ];
   then
		echo "Min" $op3;
   elif [ $op4 -lt  $op1 ]  && [ $op4 -lt $op2 ] && [ $op4 -lt $op3 ];
   then
		echo "Min" $op4;
	else 
		echo "Equal Numbers"; 

	fi


