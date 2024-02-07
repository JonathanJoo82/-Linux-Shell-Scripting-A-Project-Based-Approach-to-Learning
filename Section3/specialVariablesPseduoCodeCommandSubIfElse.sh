#!/bin/bash
set -x
#special variables
#pseudocode
#command substitution
#if statement
#conditional

#Display the user running the script and UID
#diplay is the user is the root user or not. 

#Display UID
echo "your UID is ${UID}"

#Display username
USER_NAME=$(id -un)
echo "your username is ${USER_NAME}"
echo "the date is $(date)"
#Display the root user or not


#if condition
if [[ "${UID}" -eq 1000 ]];then
    echo 'you are root.'
else
    echo 'you are not root.'
fi

if [[ "${UID}" -eq 0 ]];then
    echo 'you are root.'
else
    echo 'you are not root.'
fi

#what is the difference between if [ <Conditional Expression> ] vs if [[ <Conditional Expression> ]]?
#the single bracket is the old way of writing 
#the double bracket is the new way
#the difference is 
#single bracket can have issues with special characters and requires quoting
#double does not need to worry about it and has addition features with operators. 
#way to go is the double bracket route. 
#when using an integer use the -eq operator for equal check. Strings use ==
