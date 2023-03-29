#! /bin/bash

echo "FILE TEST MODE"

TOTAL_FILE_SIZE=("2G" "5G" "10G")
MODES=("rndwr" "seqwr" "seqrewr")
THREADS=("4" "8" "16")

for ((i=1; i<=3;i++))
do
	echo "~ Starting ${i}st Test Case ~"
	for (( j=1; j <=5; j++ ))
	do
		echo "Run: ${j} of Test Case ${i}"
		sysbench --threads=${THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZE[$i]} --file-test-mode=${MODES[i]} prepare
		sysbench --threads=${THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZE[$i]} --file-test-mode=${MODES[i]} run
		sysbench --threads=${THREADS[$i]} fileio --file-total-size=${TOTAL_FILE_SIZE[$i]} --file-test-mode=${MODES[i]} cleanup
		echo "Completed run:${j} of Test Case ${i}"
	done
	echo "~ Completed ${i}st Test Case ~"
done		