#!/bin/bash

ls -ld /var/tmp/mallik > /dev/null 2>&1

if [ $? -ne 0 ]
    echo "mallik directory not found. Creating..."
    mkdir -p /var/tmp/mallik > /dev/null 2>&1

if [ $? -ne 0]
    then 
        echo "creating mallik directory ....Failure"
        exit 1
    else 
        echo "creating  Mallik directory ....Success"
    fi
else
    echo "mallik directory is ...already therere

    fi






# dnf list installed git > /dev/null 2>&1

# if [ $? -ne 0 ]; then
#     echo "Git is not installed. Installing..."
#     dnf install git -y > /dev/null 2>&1

#     if [ $? -ne 0 ]; then
#         echo "Installing Git ... FAILURE"
#         exit 1
#     else
#         echo "Installing Git ... SUCCESS"
#     fi
# else
#     echo "Git is already ... INSTALLED"
# fi
