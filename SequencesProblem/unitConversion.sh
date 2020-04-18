#!/bin/bash -x


# Unit Conversion
# a. 1ft = 12 in then 42 in = ? ft
# b. Rectangular Plot of 60 feet x 40 feet in meters
# c. Calculate area of 25 such plots in acres
# A

	inch=42;
	feet=$((echo "$inch/12" | bc -l  ) ) ;

	echo "Conversion in feet=" $feet ;

# B

	feet1=40;
	feet2=60;

	sqrFeet=$(( $feet1 * $feet2 ));

	sMeter=$(( echo " $sqrFeet*0.092903" | bc -l ) );

	meter=$(( echo " sqrt($sMeter)" | bc -l  ) ) ;

	echo "Meter=" $meter;

# C

	area25=$(( echo "$sMeter * 25" | bc -l ) );

	acre=$(( echo " $area25*0.000247105" | bc -l ) );



echo "Area of 25 plot in ACRE =" $acre;


