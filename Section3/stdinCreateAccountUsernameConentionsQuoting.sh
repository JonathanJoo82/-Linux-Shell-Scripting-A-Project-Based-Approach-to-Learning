#!/bin/bash

set -x
#this script creates an account on the local system
#you will be prompted for the account name and pw

#ask for the user name. 
read -p 'Enter the username to create:' USER_NAME
#echo ${USER_NAME}
#ask for the real name. 
read -p 'Enter the your real name to create:' REAL_NAME
#echo ${REAL_NAME}
#ask for the password
read -p 'Enter the password to create:' PASSWORD
#echo ${PASSWORD}

#create the user
useradd -c "${REAL_NAME}" -m ${USER_NAME}


#set the paasword for the user
echo ${PASSWORD} | sudo passwd ${USER_NAME} 

#force the user to change on the first log in
passwd -e ${USER_NAME}

echo ${PASSWORD} | passwd --stdin ${USER_NAME} 


#how to print out all known users under useradd cut -d: -f1 /etc/passwd

#how to delete username under useradd
#sudo userdel -r <name>