#!/bin/bash -x

# Read a single digit number and write the number in word

read -p "Enter Number=" check;
           
        if [ $check -gt 10 ]

          then 
	       echo "Enter Single Digit  Number"; 
        else

        if [ $check -eq 0 ]
           then
                echo "Zero";

	elif [ $check -eq 1 ]
           then
                echo "One";

        elif [ $check -eq 2 ]
           then
                echo "Two";
        elif [ $check -eq 3 ]
           then
                echo "three";

        elif [ $check -eq 4 ]
           then
                echo "four";

        elif [ $check -eq 5 ]
           then
                echo "Five";

        elif [ $check -eq 6 ]
           then
                echo "Six";

        elif [ $check -eq 7 ]
           then
                echo "Seven";

        elif [ $check -eq 8 ]
           then
                echo "Eight";

        elif [ $check -eq 9 ]
           then
                echo "Nine";

        fi
       
        fi
