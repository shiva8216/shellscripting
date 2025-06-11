#!/bin/bash

# Check if Git is installed
dnf list installed git > /dev/null 2>&1

if [ $? -ne 0 ]; then
    echo "Git is not installed. Installing..."
    dnf install git -y > /dev/null 2>&1

    if [ $? -ne 0 ]; then
        echo "Installing Git ... FAILURE"
        exit 1
    else
        echo "Installing Git ... SUCCESS"
    fi
else
    echo "Git is already ... INSTALLED"
fi


# dnf list installed git

# if [ $? -ne 0 ]
# then
#     dnf install git -y
#     if [ $? -ne 0 ]
#     then
#         echo "Installing Git ... FAILURE"
#         exit 1
#     else
#         echo "Installing Git ... SUCCESS"
#     fi
#     else
#     echo "Git is already ... INSTALLED"
# fi