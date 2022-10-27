#!/bin/bash

npos=$#
i=0
sum=0
((len=$npos-1))

echo "The number of positional parameters is: $npos"


while test $npos -gt $i
do




        if test $i -eq $len
        then
                echo -e "$1 \c"
        else
                echo -e "$1 + \c"
        fi






        ((sum=$sum+$1))
        shift
        ((i=$i+1))
done


echo "= $sum"
