#!/bin/bash
set -x
#! #!= shebang
#  #=sharp
#  !=bang

echo "hello from the main OS"


#permissions of the file
# r = 4
# w = 2
# x = 1

# when executing a script ./<srcipt>
# . represent the directory
# .. parent directory
# naming of the script does not matter. As long as it is able to be ran
# the script will run. 
# script can be named "test" vs "test.sh"


#echo command
#displays the expression it is passed
#shell built in command
# to check if it is a shell built command
# type <command>
# -a for all paths

#for shell built in command use the help <command> statement
#for non shell built in commands use the man <command> statement


WORD='script'
WORD2="testScript"
#A-word not valid
#<number>Word not valid

echo '$WORD'
echo "$WORD"

#the difference between the two echo statements with referening
#single quotes for exactly what you specify
#double quotes for if the variables is wished to be interpreted

#what about echo $word
#no quotes is what?

echo "what about this? $WORD2"
echo 'what about this? $WORD2'

#append text to the variable

echo "${WORD}ing is fun"
echo "${WORD}${WORD2}ing is fun"

#{} is used for variable expansion
#help delineate the boundaries of the variable. 
#Expansion
#Array Variables
#Parameter Expansion
#Default values and substitution
