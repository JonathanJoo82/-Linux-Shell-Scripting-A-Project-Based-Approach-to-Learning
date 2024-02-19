#!/bin/bash

#case statements in bash scripting
#Multi line comment section. 
#Press Control V
#Highlight the lines to comments
#Shift I to enter insert mode
#add the comment character
#press esacpe. 
#
#to delete same but instead of going
#to insert mode press 'x' after selecting the comment block


case "${1}" in
    start)
        echo 'starting'
        ;;
    stop)
        echo 'stopping'
        ;;
    status|state|--status|--state)
        echo 'status'
        ;;
    exit)
        echo 'exiting'
        ;;
    *)
        echo 'not a valid case' >&2
        exit 1
        ;;
esac
