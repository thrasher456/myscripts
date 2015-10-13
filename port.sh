#Check if particular port on the host is open or closed 
#! /bin/bash
echo "Enter the host IP : "
read a
echo "Enter the host port : "
read b
nc -w5 -z $a $b 
c=$?
if test $c -eq 0
then
 echo "Port $b is open for host $a"
else
 echo "Port $b is closed for host $a"
fi

