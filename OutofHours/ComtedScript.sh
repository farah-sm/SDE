#!/bin/bash
 
#creating a variable called npospar and initialising it with '$#' which is the number of positional parameters passed into the program
npospar=$# #pick up the number of pos parameters typed
 
#creating a variable and initialising it with a 0, this is our counter
i=0 
 
#creating and initialising the len variable, value is equal to npospar - 1. This is the length of our arguments index
((len=$npospar-1))
 
#creating intialising our total variable with 0, this our running outcome so we n
total=0
 
#Begin a while loop. The keyword "test ..." is the same as "[ ... ]", which allows you to evaluate 
#a conditional expression. Next we have "$i -le $len" which is a conditional expression that says
#only continue the loop if the value in variable $i is less than the value in variable in $len.
while test $i -le $len
 
#this starts the loop sequence.
do
 
#This recreates a variable named total and reinitialises with the previous total variable and add the value
#of the value stored in the positional variable $1.
((total=$total+$1))
 
#Here we have a conditional expression that will check if "$i -eq $len", which checks if the value in
#$i is equal to value in $len. We are doing this to check if we are processing if we are on the last index.
if test $i -eq $len
 
#If the above conditional expression is true (we are processing the last positional variable) then:
then
 
#Print out to the user the value in variable $1. The -e is a flag that tells the computer that you can utilise
#the backslash special commands (and it doesn't print them literally). For example, the "\c" tells the computer
#to stay on the same line and not go on the same line.
#e.g. the output will be "1 + 2 + 3..." and not 
# "1"
# "+ 2"
# "+ 3"
echo -e "$1 \c"
 
#Otherwise if we are not yet on the last positional argument, then we proceed with the else case.
else
 
#Print out to the user the value of the variable $1 and " + ".
echo -e "$1 + \c"
 
#End conditional sequence if statment.
fi
 
#Perform shift command which basically gets rid of the first positional variable. i.e. $1"Ali" $2"Mehdi" $3"Saed"
#becomes $1"Mehdi" $2"Saed".
shift
 
#This will increment the variable $1 by 1. Same as we did before in $total.
((i=$i+1))
 
#This marks the end of the commands in the while loop. Now the condition of the while loop will be asssesed
#to decide whether to go through the while loop again.
done
 
#Finally, print out the "= $total", where $total is the value in the variable $total.
echo "= $total"
