#!/bin/bash


myArray=($@)
numstr=${#myArray[*]}


        i=0
        ((numstr = $numstr - 1 ))
        while test $i -lt $numstr
        do

                j=0
                while test $j -lt $numstr
                do

                        if [[ ${myArray[$j]} > ${myArray[$(($j+1))]} ]]
                        then
                                echo "swap $j"
                                temp=${myArray[$j]}
                                myArray[$j]=${myArray[$j+1]}
                                myArray[$j+1]=$temp
                        fi

                ((j=$j+1))
                done
        ((i=$i+1))
        done

echo -e "Array in sorted order: \c"
echo ${myArray[*]}

