#/bin/bash

YYYY=2020
MM=10
DD=12
bucket=""
bucketArray=()
i=0
taskId=8012744
j=0
e=0
g=0

#Count number of files/folders in dir
count=(`ls -l | wc -l`)

#mkdir -p archive/GroupId=none/

#cd archive/GroupId=none/


while test $i -lt $count 
do 	
	
	if [ -z "$bucket" ] && [ ! "$bucketArray[$i]" = CollectionDate=$YYYY-$MM-$DD/ ]
	then 
		bucket=CollectionDate=$YYYY-$MM-$DD/
	    bucketArray+="CollectionDate=$YYYY-$MM-$DD/"
		

#<< com   
	else [ "$bucketArray[$i]" = CollectionDate=$YYYY-$MM-$DD/ ] && [ ! -z "$bucket" ]

		if [ $YYYY -gt 2019 ] && [ $YYYY -lt 2023 ]
        then
            ((YYYY=$YYYY+1))

        elif [ $YYYY -gt 2023 ] || [ $YYYY -eq 2023 ] 
        then
		    ((YYYY=$YYYY-5))

		fi

		mkdir CollectionDate=$YYYY-$MM-$DD/
		cd CollectionDate=$YYYY-$MM-$DD/


		mkdir DataFeedId=2
		cd DataFeedId=2
		
#... Here should go the value of the dataFeedId=2 


		while test $j -lt $count 
			do 	

			if [ $taskId -gt 7012744 ] && [ $taskId -lt 8012745 ]
			then
				
				
				while test $e -lt $count 
        		do
					mkdir DataFeedTaskId=$taskId/
					echo "$taskId is going upppp!"
					pwd
					((taskId=$taskId-1))
				((e=$e+1))
				
				done

			elif [ $taskId -gt 8012744 ] || [ $taskId -eq 8012744 ] 
			then
				((taskId=$taskId-11))
			fi
		((j=$j+1))
		done
		
		#	echo "DataFeedTaskId is > 7012744 & < 8012745"
		#			mkdir DataFeedTaskId=$taskId/

			cd ../..
		#	pwd
		



		




        bucketArray+=CollectionDate=$YYYY-$MM-$DD/
		
		if [ $MM -gt 3 ] && [ $MM -lt 11 ]
		then
			((MM=$MM+1))
		elif [ $MM -gt 11 ] || [ $MM -eq 11 ] 
		then
			((MM=$MM-5))
		fi

		if [ $DD -gt 3 ] || [ $DD -lt 29 ]
        then
            ((DD=$DD+1))
        else
            ((DD=$DD-17))
        fi

((i=$i+1))

	fi
done


#/DataFeedId=2/DataFeedTaskId=893026/
