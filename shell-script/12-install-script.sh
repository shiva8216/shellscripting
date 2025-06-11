#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo " ERROR:: you must have root access to excute this script"
    exit 1 #other than 0
fi

dnf list installed mysql

if [ $?  -ne 0 ]
then #  not installed 
    dnf install mysql -y
if [ $? -ne 0 ]
then 
    echo "Installing MYsql ...... Failure"
    exit 1
else
    echo "Installing Mysql.... Successfull"
fi

else 
    echo  "Mysql already  INSTALLED"
fi




dnf list installed git

if [ $? -ne 0 ]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
        echo "Installing Git ... FAILURE"
        exit 1
    else
        echo "Installing Git ... SUCCESS"
    fi
else
    echo "Git is already ... INSTALLED"
fi