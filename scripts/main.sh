#!/bin/bash
source ../config/threshold.sh
 
CPU_VALUE=$(./cpu_monitor.sh)
DISK_VALUE=$(./disk_monitor.sh)
MEMORY_VALUE=$(./memory_monitor.sh)

if [ "$CPU_VALUE" -gt "$CPU_LIMIT" ]; 
then
	echo "ERROR : $CPU_VALUE"
else
	echo " CPU IS OKAYY : '$CPU_VALUE'"
fi

if [ "$DISK_VALUE" -gt "$DISK_LIMIT" ];
then
        echo "ERROR : $CPU_VALUE"
else
        echo " DISK IS OKAYY : '$DISK_VALUE'"
fi
 
if [ "$MEMORY_VALUE" -gt "$RAM_LIMIT" ];
then
        echo "ERROR : $CPU_VALUE"
else
        echo " RAM IS OKAYY : '$MEMORY_VALUE'"
fi



