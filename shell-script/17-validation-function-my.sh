#!/bin/bash

validate() {
    if [ $1 -ne 0 ]; then
        echo "$2 ... FAILURE"
        exit 1
    else
        echo "$2 ... SUCCESS"
    fi
}

echo "Creating directory..."
mkdir /tmp/test123 > /dev/null 2>&1
validate $? "Creating /tmp/test123"

echo "Installing Git..."
dnf install git -y > /dev/null 2>&1
validate $? "Installing Git"

echo "Installing gcc..."
dnf install gcc -y > /dev/null 2>&1
validate $? "Installing gcc"
