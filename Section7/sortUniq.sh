#!/bin/bash

#sort command. just sorting out data in a specific order. 

sort fruits.txt

#reverse
sort -r fruits.txt

#numberss

sort -n number.txt


#The uniq command in Linux is a command-line utility that reports or filters out the repeated lines in a file. 
#In simple words, uniq is the tool that helps to detect the adjacent duplicate lines and also deletes the duplicate lines. 
#uniq filters out the adjacent matching lines from the input file(that is required as an argument) and writes the filtered data to the output file. 



#shows one of each
uniq kt.txt

echo
#counts the repeat
uniq -c kt.txt


#display repeated lines
uniq -d kt.txt


#dipslay all duplicate lines
uniq -D kt.txt


#unique lines. 
uniq -u kt.txt

