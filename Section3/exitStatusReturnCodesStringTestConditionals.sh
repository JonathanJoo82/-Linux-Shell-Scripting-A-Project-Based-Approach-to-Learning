#!/bin/bash
set -x
UID_TO_TEST_FOR='1000'
VAGRANT_USER='vagrant'
#dipslay the UID and username of the user executing the script
#display if the user is the vagrant user or not

#display the UID
#echo "your UID is ${UID}"

#only display if the uid does not match 1000

if [[ "${UID}" -ne "${UID_TO_TEST_FOR}" ]]; then
    echo "Your UID does not match ${UID_TO_TEST_FOR}."
    #man useradd
    #help test
    exit 1
fi

#diplay the username
#USER_NAME=$(id -un)
USER_NAME='andy'
#test if the command worked or not
if [[ "${?}" -ne 0 ]]; then
    echo "the id command did not work right"
    exit 1 
else
    #test for != (not equal for the string)
    #echo "your user name is ${USER_NAME}"
    if [[ "${USER_NAME}" != "${VAGRANT_USER}" ]]
    then
        echo "${USER_NAME} is not a vagrant user"
    else
        echo "Is a vagrant user"
    fi

    if [[ "${USER_NAME}" = 'jon' ]]
    then
        echo "User is jon"
    else
        echo "User is not jon"
        #exit 1;
    fi
    #you can use a string test conditional
    #this is not the way to do so. double equals sign == is used for pattern matching
    if [[ "${USER_NAME}" == 'jon' ]]
    then
        echo "User is jon but checking with =="
    else
        echo "User is not jon but checking with =="
    fi
fi




