#!/bin/bash

#take input from user
read -p "Input Number: " num1
read -p "Input Second number: " num2

#convert from string to int and store in variable
diff="$((num1 * num2))"

#print the entire equation
echo "$num1 x $num2 = $diff"
