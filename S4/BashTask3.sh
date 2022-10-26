  GNU nano 4.8                                                                                                     bashtask.sh                                                                                                     Modified  #!/bin/bash




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
fi



i=0
j=0



while test $i -gt numstr
do


        while test $j -lt numstr
        do

                if test ${myArray[$j]} -gt ${myArray[$(($j+1))]}
                test
                        #swap
                        temp=${myArray[$j]}
                        myArray[$j]=${myArray[$(($j+1))]}
                        myArray[$(($j+1))]=$temp
                fi

        ((i=$i+1))
        done
((j=$j+1))
done

echo "Array in sorted order:"
echo ${myArray[*]}
