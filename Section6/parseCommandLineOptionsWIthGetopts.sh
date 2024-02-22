#!/bin/bash

#getopts
# used by shell procedures to parse positional parameters as options


#generate a random password


#user can set the password length with -l and add a special character with -s

#verbose mode enabled with -v

#set a default pw length

LENGTH=48
while getopts vl:s OPTION
do 
    case ${OPTION} in
    v)
        VERBOSE='true'
        echo "Verbose mode on"
        ;;
    l)
        LENGTH="${OPTARG}"
        ::
    s)