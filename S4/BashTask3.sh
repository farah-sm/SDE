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
fi 



i=0
j=0



while test $i -gt numstr
do 
((i=$i+1))

	while test $j -lt ((numstr-$i-1))
	do
	((j=$j+1)
		if test ${myArray[$j]} -gt ${myArray[$(($j+1))]}
		test
			#swap
			temp=${myArray[$j]}
			myArray[$j]=${myArray[$(($j+1))]}
			myArray[$(($j+1))]=$temp
		fi
	done
done

echo "Array in sorted order:"
echo ${myArray[*]}
