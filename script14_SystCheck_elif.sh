#!/bin/bash

# Description: System Inventory
# Author: Alfred
# Date: Oct.2019


## Checking if User is root

if [ $UID -ne 0 ]
then 
     echo -e "\n You need root access...\n"
     exit 1
fi

echo -e "\nPlease make a choice below: \n
        *********************************
        *       1==> CPU                *
        *       2==> Memory             *
        *       3==> Os Version         *
        *       4==> Processes          *
        *       5==> System bits        *
        *       6==> Mount points       *
        *       7==> Ip address         *
        *       8==> Hostname           *
        *       9==> Kernel version     *
        *      10==> Update OS          *
        *********************************"
echo -n " Enter your choice (1 - 10): "
read ans

if [ ${ans} -eq 1 ]
then
lscpu
elif [ ${ans} -eq 2 ]
then
free -m
elif [ [ ${ans} -eq 3 ]
then 
cat /etc/*release
elif [ ${ans} -eq 4 ]
then 
ps -ef |wc -l
elif [ ${ans} -eq 5 ]
then 
getconf LONG_BIT
elif [ ${ans} -eq 6 ]
then
df -h
elif [ ${ans} -eq 7 ]
then
ip a
elif [ ${ans} -eq 8 ]
then
hostname
elif [ ${ans} -eq 9 ]
then
uname
elif [ ${ans} -eq 10]
then 
yum update -y

else
echo -e "\nPlease enter a valid choice (1-10) \n"
exit 2
fi


