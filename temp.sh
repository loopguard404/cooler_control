#!/bin/bash 

armbianmonitor -M > temp.txt &
sleep 1
cat temp.txt | sed '1,3d' | awk '{print $11}' > result_temp.txt
echo "temp=$(cat result_temp.txt)'C"
pkill armbianmonitor
