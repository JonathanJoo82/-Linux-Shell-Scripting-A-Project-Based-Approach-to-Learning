#!/bin/bash

set -x
#demonstrates I/O redirection
#0 standard input
#1 standard output
#2 standard error
#the syntax to redirect a stream to another file descripter is >&
#
#

#redirect stdout to a file
FILE="log.txt"

head -n1 /etc/passwd > ${FILE}

#redirect stdin to a program
read LINE < ${FILE}
echo "Line contains: ${LINE}"  

#to append to a known file use >>
echo "imma append" >> ${FILE}

#usage of single arrow will override it and create a new version of the file

#2>&1
#this is used to redirect both stdout and stderror to the same destingation
#2> redirects stderr
#& indicates the destination
#1 stdout
#&> redirects both stdout and stderr

echo "test to see what happens with this redirect"

