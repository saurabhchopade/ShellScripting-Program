#!/bin/bash -x

#   Write a program that takes a input and determines if the number is a prime.




read -p "Enter Number To prime Factorization" num;

	for (( primer=2; primer<=13; primer++))
   do

		flag=0;

   	for (( counter=2; counter<$primer; counter++ ))
     	do
	              
     		prime=$(( $primer%$counter ));
         
         if [ $prime -eq 0 ] then 

   	   	flag=1;

         fi                   

      done

      if [ $flag -eq 0 ];  then 
      
      	for (( var =1; var<=100 ; var++ ))
			do
	     	 
				checking=$(( $num%$primer ))
   	    	
             if [ $checking -eq 0 ]  then

            	 num=$(($num/$primer));
         	   
                echo "==============" $primer;
         
				else
                      
           		break              
            
            fi            
         
			done
 
      fi 
 
	done










