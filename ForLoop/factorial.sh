#!/bin/bash -x
read -p "Enter Number To find factorial=" num1;
facto=1;

	for (( counter=2; counter<=$num1; counter++ ))
	do
		facto=$(( $facto * $counter ));
      echo $facto;
	done


echo "factorial of $num1 is=" $facto;




