#!/bin/bash
j=0
for i in {1..10000}
do
	j=$( echo "$j+0.1" | bc)
	d=$( echo "(c($j))^2" | bc -l)
	bash circle.sh $d
	#echo $d
	sleep 0.08
	clear
done
