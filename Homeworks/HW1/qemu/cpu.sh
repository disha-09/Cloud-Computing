#! /bin/bash

echo "CPU TEST MODE"

PRIMES=("10000" "100000" "1000000")
MAX_TIME=("10" "30" "60")
THREADS=("1" "4" "16")

for ((i=1; i<=3;i++))
do
	echo "~ Starting ${i} Test Case ~"
	for (( j=1; j <=5; j++ ))
	do
		echo "Run: ${j} of Test Case ${i}"
		sysbench cpu --threads=${THREADS[$i]} --cpu-max-prime=${PRIMES[$i]} --time=${MAX_TIME[$i]} run
		echo "Completed run:${j} of Test Case ${i}"
	done
	echo "~ Completed ${i} Test Case ~"
done