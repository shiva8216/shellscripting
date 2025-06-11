#!/bin/bash

# Get current date and hostname
DATE=$(date '+%Y-%m-%d %H:%M:%S')
HOST=$(hostname)

TIMESTAMP=$(date)
echo "script excuted at: $TIMESTAMP"

 echo "Disk Usage Report for $HOST on $DATE"
 echo "-------------------------------------"

# Show overall disk usage
df -hT | awk 'NR==1 || $2=="ext4" || $2=="xfs" || $2=="btrfs"'

echo "----------------------------"
echo "Top 10 largest directories in / (root):"
du -ah / | sort -rh | head -n 10
