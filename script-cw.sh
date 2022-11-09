#!/bin/bash

myArray=(` cat $1 `)
numstr=${#myArray[*]}
i=0

while test $i -lt $numstr
do

        echo "Index $i = ${myArray[i]}"

((i=$i+1))
done
