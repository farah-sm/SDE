#!/bin/bash

if test -f $1
then
        myArray=(`cat $1`)
        numstr=${#myArray[*]}
        secFile=$2
        count=0
        while test $count -lt $numstr
        do
                echo "${myArray[$count]}"
                ((count = $count + 1))
        done
        echo "$1 is a File"
fi



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


echo "Array in sorted order:"
echo "${myArray[*]}" > $secFile
