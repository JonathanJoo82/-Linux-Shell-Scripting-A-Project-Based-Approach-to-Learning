#!/bin/bash


#set command to change the values of shell options and display variables in Bash scripts.
#set [option] [argument]

#When a query returns a non-zero status, the -e flag stops the script. It also detects errors in the currently executing script.
set -e

#Using the -C flag ensures that we cannot overwrite an existing file with the same name:
set -C

#-x parameter when debugging our scripts to determine the output of individual commands.
set -x

#use this flag to ensure that Bash does not overlook the non-existent variables in our script.
set -u 