#!/bin/bash

# NUMBER1=$1
# NUMBER2=$2

# TIMESTAMP=$(date)
# echo "script excuted at: $TIMESTAMP"
# SUM=$(($NUMBER1+$NUMBER2))

# echo "sum of $NUMBER1 and $NUMBER2 is: $SUM"


TIMESTAMP=$(date)
echo "script excuted at: $TIMESTAMP"

Filesystems=$(df -h)

echo " to display filesystems: $filesystems
