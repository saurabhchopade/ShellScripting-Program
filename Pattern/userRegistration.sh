

#!/bin/bash -x
	for (( ptrCounter=1; ptrCounter<=100; ptrCounter++ ))
	do
		echo "1)First And Last  Name Validation";
		echo "2)Email Validation";
		echo "3)Mobile validation";
		echo "4)Password Validation"
		read -p "Choose Option=" option;

		case $option in
			1)
				read -p "Enter Name=" name;
				#capital+small  1+2=3  Minimum
				#This is for first Name ^[A-Z]{1}[a-z]{2,}$ 
				# this is For Cap Cap (One Space Allowed)
				namePattern="^[A-Z]{1}[a-z]{2,}[ ]{1}([A-Z]{1}[a-z]{2,})$";
				if [[ $name =~ $namePattern  ]]
				then
					printf "\n\n\n";
					echo "Valid Name";
					printf "\n\n\n";
				else
					printf "\n\n\n";
					echo "Invalid Name";
					printf "\n\n\n";
				fi;
				;;

			2)
				read -p "Enter Email=" email;
				emailPattern="^[a-z0-9]+[\.\-\+]?[a-z0-9]+[\@][a-z0-9]{1,}[\.][a-z]+([\.]?[a-z]+)$";
				if [[ $email =~ $emailPattern ]]
				then
					printf "\n\n\n";
					echo "Valid Email";
					printf "\n\n\n";
				else
					printf "\n\n\n";
					echo "Invalid Email";
					printf "\n\n\n";
					fi;
					;;
			3)
				read -p "Enter Mobile Number=" mobileNum;
				mobilePattern="^(91)[ ][0-9]{10}$"
				 if [[ $mobileNum =~ $mobilePattern ]]
            then
               printf "\n\n\n";
               echo "Valid Mobile";
               printf "\n\n\n";
            else
               printf "\n\n\n";
               echo "Invalid mobile";
               printf "\n\n\n";
               fi;
               ;;
			4) #passPattern="[(0-9)+&(A-Z)+]{2,}$
				read -p "Enter Password=" password;
           # passPattern=[(0-9)+&(a-z)+(\.\@)+]{8,}$"
					passPattern="[(0-9)+&(a-z)+&(?=.*@#$%)@]{8,}$"
			 if [[ $password =~ $passPattern ]]
            then
               printf "\n\n\n";
               echo "Valid Password";
               printf "\n\n\n";
            else
               printf "\n\n\n";
               echo "Invalid password";
               printf "\n\n\n";
               fi;
               ;;
			*)
					echo "enter Valid option";
					;;
		esac
	done
