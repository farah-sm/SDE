#!/bin/bash

npos=$#
pos1=$1

echo "Number of Positional Parameters is: $npos"

if test -f $pos1
then
        echo "$pos1 is a File"
        cat $pos1
else
        echo "$pos1 is not a File"
fi









