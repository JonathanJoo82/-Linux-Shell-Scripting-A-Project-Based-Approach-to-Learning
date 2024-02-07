#!/bin/bash

#script generates a list random passwords
PASSWORD="${RANDOM}"
echo "${PASSWORD}"

#three random numbers
THREE_PASSWORD="${RANDOM}${RANDOM}${RANDOM}"
echo "${THREE_PASSWORD}"


#use the current date/time as the basis of the pw
PASSWORD_TIME_DATE=$(date +%s%N)

PASSWORD_MORE_ADVANCE=$(date +%s%N | sha256sum | head -c48)
#pipe operator
#connect the standard output of one command to the standard input of the another command
#take the stdout of the first and manipualte with the second one.


echo "${PASSWORD_TIME_DATE}"