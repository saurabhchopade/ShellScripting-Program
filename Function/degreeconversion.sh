#!/bin/bash -x
	function convertCF() {
		calc=$(( echo " $1 * 1.8 " | bc -l  ) );
		degF=$(( echo " $calc + 32 " | bc -l ) );
		echo $degF;
   }

	function convertFC() {
		calc=$(( echo " $1 - 32 " | bc -l  ) );
      degC=$((echo " $calc * 0.5555 " | bc -l ) );
      echo $degC;    
   }

	echo "Degree Conversion";
	echo "1) Celsius to Fahrenheit"
	echo "2) Fahrenheit to Celsius";
	read -p 	"Enter Option=" option;

	case $option in
		1)
			read -p "Enter Celsius=" celsius;
			converted="$( convertCF $celsius )"
			echo "FAHRENHEIT=" $converted;
    		;;
		2)
			read -p "Enter Fahrenheit=" fahrenheit;
			converted="$( convertFC $fahrenheit )";
			echo "CELSIUS=" $converted;
         ;;
		*)
			echo -p "Wrong Option";
	esac
