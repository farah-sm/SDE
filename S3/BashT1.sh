#!/bin/bash

# Set the number of positional parameters to the variable $npos (Number of Position)
npos=$#

# Set the ($i) counter to 0
i=0

# Set the $sum variable to 0
sum=0

# Calculate the length of the positional parameters. As the count is index 0, we subtract 1 to get the human index count (starting from 1)
((len=$npos-1))

# Print the number of positional parameters
echo "The number of positional parameters is: $npos"

# The use of a while loop with the condition that the number of positional parameters ($npos) is greater than the cuonter ($1) - the counter is incremented by 1 each loop.
while test $npos -gt $i
do



        # The use of an if statement with the condition that the counter ($1) - which is incremented by one is equal to the length of the positional parameters ($len)
        if test $i -eq $len
        then
                # If the two are equal print the first positional parameter - the use of "echo -e" allows you to print and for it to recognise the escape key (\c) which brings the next line to the same line
                echo -e "$1 \c"
        else
                # If the two are not equal print the first positional parameter with an addition (+) sign
                echo -e "$1 + \c"
        fi





        # Calculate the total sum by incrementing it by the positional parameter
        ((sum=$sum+$1))
        
        # The use of shift, increments the positional parameters to the next one eg. if $1 = 2, $2 = 8 & $3 = 9 then after the shift command $1 = 8, $2 = 9 etc.
        shift
        ((i=$i+1))
        
# The end of the while loop        
done

#print the total sum of all of the positional parameters added together
echo "= $sum"
