#!/bin/bash

myArray=($@)
npos=$#
i=0
sum=0
add=+
mult=x
subt=-
div=/
#total=0
#total_s=0
#total_d=1
#total_m=1




while test $i -lt $npos
do

function add
{
        sum=$((${myArray[i-1]} + ${myArray[i+1]}))
#       total=$sum
}


function subt
{
        sum=$((${myArray[i-1]} - ${myArray[i+1]}))
#       total_s=$sum
}

function div
{
        sum=$((${myArray[i-1]} / ${myArray[i+1]}))
#       total_d=$sum
}

function mult
{
        sum=$((${myArray[i-1]} * ${myArray[i+1]}))
#       total_m=$sum
}






        case ${myArray[i]} in
        $add)
                add;;
        $div)
                div;;
        $mult)
                mult;;
        $subt)
                subt;;
        esac


#final=$(($total + $total_s + $total_d + $total_m))



        ((i=$i+1))
done

echo "${myArray[*]} = $sum"
