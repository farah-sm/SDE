#!/bin/bash

echo -e "\nThis game is rated 18+\nWelcome to our custom Calculator"

read -p "But first we must ask you a few questions. (PRESS ENTER)" enter 
echo -e "\n"
read -p "What is your name: " name
read -p "How old are you: " age

#This converts the string into int's and performs the (-) operation
diff="$((18 - $age))"


if (( $age > 18 ))
then
	echo -e "\nChoose an operator"
	read -p "(x, /, + or -) : " op
  
#begin commenting out
<<com
	if(( $op -eq "x" || $op -eq "/" || $op -eq "+" || $op -eq "-" )) 
	then
		read -p "Input number: " number1
		read -p "Input second number: " number2
		if [ $op == "x" ]
		then 
				ans = "$((number1 * number2))"
				echo "$number1 x $number2 = $ans"
	else
		echo -e "\nHey $name, you have input an invalid operator. Goodbye."

	fi
  

com
#end of commenting 
else
	echo -e "\nHey $name, unfortunately you dont meet the age. "
	echo -e "Please wait \c" 
	echo -e "$diff \c"
	echo -e "more year(s). Goodbye.\n\n"  

fi
