#!/bin/bash

ls -ld /var/tmp/mallik > /dev/null 2>&1

if [ $? -ne 0 ] 
then
    echo "mallik directory not found. Creating..."
    mkdir -p /var/tmp/mallik > /dev/null 2>&1

if [ $? -ne 0 ]
    then 
        echo "creating mallik directory .... Failure"
        exit 1
    else 
        echo "creating  mallik directory .... Success"
    fi
else 
        echo "creating  mallik directory .... Already  created"
    fi