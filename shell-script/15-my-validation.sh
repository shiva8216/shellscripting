#!/bin/bash

USERID=$(id -u)

mkdir /tmp/raj
VALIDATE $? "Creating /tmp/raj"

dnf install git -y
VALIDATE $? "Installing Git"