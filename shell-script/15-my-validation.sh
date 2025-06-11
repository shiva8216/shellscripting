#!/bin/bash

USERID=$(id -u)

mkdir /tmp/parrot
VALIDATE $?  "Creating directory"

# dnf install git -y
# VALIDATE $? "Installing Git"