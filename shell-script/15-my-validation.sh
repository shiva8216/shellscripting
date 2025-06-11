#!/bin/bash

USERID=$(id -u)

mkdir /tmp/simla
VALIDATE $? "Creating directory"

# dnf install git -y
# VALIDATE $? "Installing Git"