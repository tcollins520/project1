#!/bin/bash
# Create Bash script to check Free Space of Memory 

#2 add debug mode to the file to check each command for any errors to troubleshoot
set -x # set debug mode
set -e # exit if any error
#set -o pipefail

#1 store the output of total free memory space in a variable
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')

Threshold=4000

#if [[ $FREE_SPACE -lt Threshold ]]
# then
        echo "Running low on Ram space"
else
        echo "RAM space is sufficient $FREE_SPACE M"
fi


df -h

hjdkldDtraytxxbxs | echo "wrong command"

echo "This statement should not be executed, it's after a wrong command."        

free -g
