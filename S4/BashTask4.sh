#!/bin/bash

if test -f $1
then
        myArray=(`cat $1`)
        numstr=${#myArray[*]}
        count=0
        i=0

        while test $i -lt $numstr
        do
                ((dynamic+=${#myArray[$i]}))
                ((i=$i+1))
        done

echo "The total number of strings in $1 is: $numstr"
echo "The total number of chars in $1 is = $dynamic"
fi
