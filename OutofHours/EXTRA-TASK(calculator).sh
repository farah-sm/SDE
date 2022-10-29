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

function add
{
        sum=$((${myArray[i-1]} + ${myArray[i+1]}))
}


function subt
{
        sum=$((${myArray[i-1]} - ${myArray[i+1]}))
}

function div
{
        sum=$((${myArray[i-1]} / ${myArray[i+1]}))
}

function mult
{
        sum=$((${myArray[i-1]} * ${myArray[i+1]}))
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





        ((i=$i+1))
done

echo "${myArray[*]} = $sum"







