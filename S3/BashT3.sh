#!/bin/bash

# This demonstrates the use of an if statement with the condition if the input in positional parameter is a file 
if test -f $1
then
        # If the condition is true then print the following statement
        echo "This is a file"

# If the condition is not true it will then be passed into the else if (elif) part of the statement which checks for the condition if the name input into $1 is a directory
elif test -d $1
then    
        # If this condition is true it will print the following statement
        echo "This is a directory"

# The use of "fi" ends the if statement
fi
