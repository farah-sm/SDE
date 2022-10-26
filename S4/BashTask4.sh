#!/bin/bash



if test -f $1
then
        myArray=(`cat $1`)
        numstr=${#myArray[*]}
        count=0
                #echo "${myArray[$count]}"
                echo "The number of strings in the file is: $numstr"
                #echo "The number of characters in the file is: "


        i=0
        while test $i -lt $numstr
        do
                ((dynamic+=${#myArray[$i]}))

        ((i=$i+1))
        done


echo "The Total is = $dynamic"
fi
