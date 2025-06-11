#!/bin/bash

# Get current date and hostname
DATE=$(date '+%Y-%m-%d %H:%M:%S')
HOST=$(hostname)

# TIMESTAMP=$(date)
# echo "script excuted at: $TIMESTAMP"

 echo "Disk Usage Report for $HOST on $DATE"
  echo "-------------------------------------"

# # Show overall disk usage
 df -hT | awk 'NR==1 || $2=="ext4" || $2=="xfs" || $2=="btrfs"'

 echo "--------------------"
 echo "Top 10 largest directories in / (root):"
 du -ah / | sort -rh | head -n 10





# out put:

# df -hT: Shows disk usage with:

# -h: human-readable sizes (e.g., GB, MB)

# -T: includes the filesystem type (e.g., ext4, xfs)

# awk '...': Processes the output line-by-line:

# NR==1: Match the first line (header)

# $2=="ext4": Match lines where the 2nd column (filesystem type) is "ext4"

# ||: Logical OR – include the line if any condition is true


