#!/bin/bash

echo "All variables passed: $@"
echo "Number of variables: $#"
echo "Script name: $0"
echo "Present working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "Which user is running this script: $USER"
echo "Process id of current script: $$"
sleep 60 &
echo "Process id of last command in background: $!"

# output:

# [ root@ip-172-31-93-134 ~/shellscripting/shell-script ]# sh 09-specrial-vars.sh  12 23 4 5 6
# All variables passed: 12 23 4 5 6
# Number of variables: 5
# Script name: 09-specrial-vars.sh
# Present working directory: /root/shellscripting/shell-script
# Home directory of current user: /root
# Which user is running this script: root
# Process id of current script: 2785
# Process id of last command in background: 2786
