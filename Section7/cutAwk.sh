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
cut -f 2 state.txt

#-complement
cut state.txt -f 1 --complement




echo 
echo
echo

echo "awk"

#manipulating data and generating reports.
#AWK is most often used for processing files. AWK processes a condition if one is provided and then takes an action. The default action is to print whatever meets the criteria of the condition. To search a file for a regular expression pattern match:
#awk ‘/regex/’ <file>


awk '/manager/ {print}' employee.txt 


#split line into fields
awk '{print $1,$4}' employee.txt 

