#!/bin/bash

myArray=($@)
npos=$#
i=0
sum=0
add=+
mult=x
subt=-
div=/




while test $i -lt $npos
do


function subt
{
        if [[ ${myArray[i]} == ${myArray[1]} ]]
        then
                val=$((${myArray[i-1]} - ${myArray[i+1]}))
        else
                val=$(($sum - ${myArray[i+1]}))
        fi
}


function add
{
# Fix Condition of this funciton // The condition is not checked, the first command is executed regardless of where the '+' element is in$

        if [[ ${myArray[i]} == ${myArray[1]} ]]
        then
                sum=$((${myArray[i-1]} + ${myArray[i+1]}))
        else
                sum=$(($val + ${myArray[i+1]}))
        fi
}


        case ${myArray[i]} in
        $subt)
                subt;;
        $add)
                add;;
        esac





        ((i=$i+1))

done

echo -e "${myArray[*]} \c"
((twe=$val+20))

echo "= $twe"
#echo "Added value: $sum"
