#!/bin/bash


#this script generates a random password for each user

#display what the user types on the command line

echo "You executed this command: ${0}"

#parameter is a variable that is used inside the shell script
#arguement is the data passed into the shell script

#arguement is supplied on the command line 
#ex: script.sh <arguement1> <arguement2>

#<arguement1> <arguement2> are the data that is passed by the command line 
#used as parameters witih the shell script


#display the path and filename of the script
echo "dirname and basename commands"
echo "you used $(dirname ${0}) as the path to the $(basename ${0}) script."
#direname: returns the directory portion of the path
#basename: returns the filename portion of the path



#tell how many arguements they passed in
#(inside the script there are parameters outside they are arguments

number_OF_parameters="${#}"
echo "you supplied ${number_OF_parameters} argument(s) on the command line."

if [[ "${number_OF_parameters}" -lt 1 ]]; then
    echo "must have more then 1 arguements"
    exit 1;
fi



#generate and display a password for each parameter

for USER_NAME in "${@}"
do 
    PASSWORD=$(date +%s%N | sha256sum | head -c48)
    echo "${USER_NAME}: ${PASSWORD}"
done