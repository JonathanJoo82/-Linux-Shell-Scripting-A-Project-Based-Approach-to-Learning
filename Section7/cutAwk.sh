#!/bin/bash


#cut: to take parts of a string and put to output

#can have the options

# bytes -b
cut -b 1,2,3,4,8 state.txt

echo "with range"
cut  -b 1-3,5-7 state.txt

#character -c
#extract first 4 characters
echo "Cut option"
cut -c 1-4 state.txt

#delimiter -d
echo "delimiter"
cut -d, -f 1-4 state.txt
#-f fields

#-n

#-complement