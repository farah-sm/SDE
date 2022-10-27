#!/bin/bash

if test -f $1
then
        echo "This is a file"
elif test -d $1
then
        echo "This is a directory"

fi
