#!/bin/bash




if test -f $1
then
        myArray=(`cat $1`)
        numstr=${#myArray[*]}
        count=0
        while test $count -lt $numstr
        do
                echo "${myArray[$count]}"
                ((count = $count + 1))
        done
        echo "$1 is a File"
else
        echo "$1 is not a File"
fi

