#!/bin/bash

NUMBER=$1

# -gt , -lt, -eq, -ge, -le

if  [ $NUMBER -gt 100 ]

then
    echo "given number is greater than equal 100"

else 
    echo "given number is lessthan or equal 100"

fi



