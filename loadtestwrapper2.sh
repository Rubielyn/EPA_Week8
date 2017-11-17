#!bin/bash
#invoke the loadtest with appropriate parameters
#sleep for the duration of the load test T
#pkill the loadtest 

./loadtest $1 &

sleep $2

pkill loadtest

#for loop

for i in $1 
do
	get $2 &
done
done
