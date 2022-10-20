#!/bin/bash
count=$#
arg=$1
sum=$1
echo –e "$arg + \c" 
while [ "$count" -gt 1 ]
do
  shift #increment by one argument 
  arg=$1
  sum=`expr $sum + $arg`
if test $count -eq 2
then
  echo "$arg = $sum" 
else
  echo –e "$arg + \c" 
fi
count=`expr $count - 1` 
done
echo
exit 0
