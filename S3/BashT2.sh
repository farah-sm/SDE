#!/bin/bash

npos=$#
myArray=($@)
i=0
sum=0
((len=$npos-1))

echo "The number of positional parameters is: $npos"


while test $npos -gt $i
do




        if test $i -eq $len
        then
                echo -e "${myArray[i]} \c"
        else
                echo -e "${myArray[i]} + \c"
        fi






        ((sum=$sum+${myArray[i]}))
        shift
        ((i=$i+1))
done


echo "= $sum"
