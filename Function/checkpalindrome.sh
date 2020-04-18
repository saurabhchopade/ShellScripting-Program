#!/bin/bash -x

sum1=0;
sum2=0;

	function checkPalindrome() {

      number=$1;

		while [ $number -gt 0 ]
		do
			lastDigit=$(($number%10));

			sum1=$((sum1*10));

			sum2=$((sum1+lastDigit));
       
			sum1=$sum2;

			number=$(($number/10));

		done

		echo $sum2;

   }

	for(( numIncrese=1; numIncrese<=2; numIncrese++ ));
	do

	   read -p "Enter Number to check Palindrome or Not =" num;

		check="$( checkPalindrome $num )";

		if [ $check -eq $num ]; then

			echo "Number is Paliindrome";

		else

			echo "Number is not palindrome";

		fi

	done

