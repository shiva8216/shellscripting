#!/bin/bash

USERID=$(id -u)

mkdir /tmp/testdir
VALIDATE $? "Creating /tmp/testdir"

dnf install git -y
VALIDATE $? "Installing Git"