#!/bin/bash
set -x


#demonstrate the use of shift and while loops
echo $0
echo $1

sleep 3s
#suspends the execution for the logic for a specific amount of time. 

#display the frist three parameters
if [[ "${#}" -lt 3 ]]; then
    echo "must have more then 1 arguements"
    exit 1;
else
    echo "Parameter 1: ${1}"
    echo "Parameter 2: ${2}"
    echo "Parameter 3: ${3}"
fi

#loop through all positional parameters
while [[ "${#}" -gt 0 ]]
do 
    echo "number of parameters ${#}"
    echo "Parameter 1: $1"
    echo "Parameter 2: $2"
    echo "Parameter 3: $3"
    echo

    shift
    #removes the first arguement and moves up the rest
done