#!/bin/bash


jobCount=0
runinngProcess=""
clock=0
timeQuantum=1
status=9
i=0
myArray=(`cat $1`)




   # Here we populate arrays by value of lines
                while read -r line;
                do
                        arrayTemp=($line)
                        nameProcess+=("${arrayTemp[0]}")
                        timeArrival+=("${arrayTemp[1]}")
                        timeBurst+=("${arrayTemp[2]}")


                done < "$1"

readyQueue=()

#for ((j=$i; j<${#arrayTemp[*]}; j++))
#do


while test $i -lt ${#arrayTemp[*]}
do

        # This "if statement" checks if the arrival time is equivilant to the time, the running process is empty and the Burst time is more$
        if [ "${timeArrival[$i]}" -eq "$clock" ] && [ -z "$runningProcess" ] && [ "${timeBurst[$i]}" -gt 0 ]
        then
                readyQueue+=("${nameProcess[$i]}")
                runningProcess="${nameProcess[$i]}"
                timeOfBurst="${timeBurst[$i]}"
                timeBurst[$i]=$(( $timeOfBurst-$timeQuantum ))
                stringOutput="$stringOutput R"

        elif [ "${timeArrival[$i]}" -eq "$clock" ] && [ ! -z "$runningProcess" ]
        then
                stringOutput="$stringOutput W"

        else [ "${timeArrival[$i]}" -gt "$clock" ]
                stringOutput="$stringOutput -"

        fi


((i=$i+1))


done
echo $stringOutput
