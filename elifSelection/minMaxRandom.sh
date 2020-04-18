#!/bin/bash -x
#Write a program that reads 5 Random 2 Digit values , then find their

#Sum time value of num1 is less than 10 and that is not two digit so we set it as minimum 10 two digit

num1=$(( RANDOM%1000 ));
num2=$(( RANDOM%1000 ));
num3=$(( RANDOM%1000 ));
num4=$(( RANDOM%1000 ));
num5=$(( RANDOM%1000 ));


   if [ $num1 -lt 100 ]
     then 
      num1=100;
      flag=1;
   fi
   
    if [ $num2 -lt 100 ]
     then 
      num2=100;
      flag=1;
   fi

    if [ $num3 -lt 100 ]
     then 
      num3=100;
      flag=1;
   fi

    if [ $num4 -lt 100 ]
     then 
      num4=100;
      flag=1;
   fi

    if [ $num5 -lt 100 ]
     then 
      num5=100;
      flag=1;
   fi

#for mazimum

if  [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ] && [ $num1 -gt $num4 ] && [ $num1 -gt $num5 ];
    
    then 
      echo "Max Number=" $num1;

    

elif  [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ] && [ $num2 -gt $num4 ] && [ $num2 -gt $num5 ]; 
    
    then 
      echo "Max Number=" $num2;
    

elif  [ $num3 -gt $num1 ] && [ $num3 -gt $num2 ] && [ $num3 -gt $num4 ] && [ $num3 -gt $num5 ]; 
    
    then 
      echo "Max Number=" $num3;
    

elif  [ $num4 -gt $num1 ] && [ $num4 -gt $num2 ] && [ $num4 -gt $num3 ] && [ $num4 -gt $num5 ]; 
    
    then 
      echo "Max Number=" $num4;

else
    echo "Max Number=" $num5;
fi




if  [ $num1 -lt $num2 ] && [ $num1 -lt $num3 ] && [ $num1 -lt $num4 ] && [ $num1 -lt $num5 ];
    
    then 
      echo "Min Number=" $num1;

    

elif  [ $num2 -lt $num1 ] && [ $num2 -lt $num3 ] && [ $num2 -lt $num4 ] && [ $num2 -lt $num5 ]; 
    
    then 
      echo "Min Number=" $num2;
    

elif  [ $num3 -lt $num1 ] && [ $num3 -lt $num2 ] && [ $num3 -lt $num4 ] && [ $num3 -lt $num5 ]; 
    
    then 
      echo "Min Number=" $num3;
    

elif  [ $num4 -lt $num1 ] && [ $num4 -lt $num2 ] && [ $num4 -lt $num3 ] && [ $num4 -lt $num5 ]; 
    
    then 
      echo "Min Number=" $num4;

else
    echo "Min Number=" $num5;
fi



