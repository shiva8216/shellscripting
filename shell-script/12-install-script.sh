#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
    echo " ERROR:: you must have root access to excute this script"
    exit 1 #other than 0
fi

dnf list installed mysqll

if [ $?  -ne 0 ]
then 
    echo "ERRO:: package is not inastalled"
    exit 1
fi