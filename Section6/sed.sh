#!/bin/bash

#SED command in UNIX stands for stream editor and it can perform lots of functions on file like searching, find and replace, insertion or deletion. 
#Though most common use of SED command in UNIX is for substitution or for find and replace. 


#sed command replaces the word “unix” with “linux” in the file
sed 's/unix/linux/' geekfile.txt

#Replacing the nth occurrence of a pattern in a line
#The below command replaces the second occurrence of the word “unix” with “linux” in a line.
sed 's/unix/linux/2' geekfile.txt

#to change to global occurance change. switch the 2 from above to g
sed 's/unix/linux/g' geekfile.txt

#to change global after a specific amount of cases. after the second occurance switch the rest. 
sed 's/unix/linux/2g' geekfile.txt


#there are way more cases for manipulation of the stdout of a command as well