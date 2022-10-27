#!/bin/bash


if test -f $1
then
        myArray=(`cat $1`)
        numstr=${#myArray[*]}
        count=0

        i=0
        amountOfTimes=0
        while test $i -lt $numstr
        do
                ((dynamic+=${#myArray[$i]}))

                #Compare the second parameter to the value in each array and increase the amountOfTimes
                #Counter by 1 each time

                case ${myArray[$i]} in
                $2)

                        ((amountOfTimes+=1));;
                esac


        ((i=$i+1))
        done

echo -e "The number of strings in the file is: $numstr \nThe Amount of times is: $amountOfTimes \nThe total number of chars is: $dynamic" >> $1
echo -e "The number of strings in the file is: $numstr \nThe Amount of times is: $amountOfTimes \nThe total number of chars is: $dynamic"
fi
