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

	function checkPrime() {
		number=$1;
		flag=0;
		for(( numIncre=2; numIncre<number/2; numIncre++ ))
		do
			reminder=$(($number%$numIncre))
			if [ $reminder -eq 0 ]; then
				flag=1;
			fi
		done

		if [ $flag -eq 0 ]; then
			echo "1";
		else
			echo "0";
		fi
	}

read -p "Enter Number to check Palindrome or Not =" num;
check1="$( checkPrime $num)";

		 if [ $check1 -eq 1 ]; then
         echo "=========Number Prime ";
      else
         echo "=========Number is Not prime";
      fi

check2="$( checkPalindrome $num )";

		if [ $check2 -eq $num ]; then
			echo "=========Number is Paliindrome";
			check3="$( checkPrime check2 )";

				if [ $check3 -eq 1 ]; then
		         echo "=========Number Which Is palindrome is Also Prime";
		     else
		         echo "=========Number is which Palinndrome  Not prime";
		      fi
		 else
				echo "=========Number is not palindrome";
		fi



