#!/bin/bash

# Set the number of positional parameters to the variable $npos (Number of Position)
npos=$#

# Initialise the value of the array with the content input into the positional parameter
myArray=($@)

# Set the ($i) counter to 0
i=0

# Set the $sum variable to 0
sum=0

# Calculate the length of the positional parameters. As the count is index 0, we subtract 1 to get the human index count (starting from 1)
((len=$npos-1))

# Print the number of positional parameters
echo "The number of positional parameters is: $npos"

# The use of a while loop with the condition that the number of positional parameters ($npos)
while test $npos -gt $i
do



        # The use of an if statement with the condition that the counter ($1) - which is incremented by one is equal to the length of the positional parameters ($len)
        if test $i -eq $len
        then
                 # If the two are equal print the element(s) of the array - the use of "echo -e" allows you to print and for it to recognise the escape key (\c) which brings the next line to the same line
                echo -e "${myArray[i]} \c"
        else
                # If the two are not equal print the element(s) of the array with an addition (+) sign
                echo -e "${myArray[i]} + \c"
        fi





        # Calculate the total sum by incrementing it by the each element in the array as after each loop the value of $i is incremented by 1
        ((sum=$sum+${myArray[i]}))
        
        # Calculate the total sum by incrementing it by the positional parameter
        shift
        
        # Increment the variable $i by 1 each time during the loop
        ((i=$i+1))
# The end of the while loop 
done

#print the total sum of all of the positional parameters added together
echo "= $sum"
