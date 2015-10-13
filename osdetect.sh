#Simple script to detect OS
#! /bin/bash
echo "Enter the IP to ping :"
read a
ping -c 1 $a >> ping.txt
b=`awk '/ttl=55/{print "55"}' ping.txt`
c=`awk '/ttl=64/{print "64"}' ping.txt`
d=`awk '/ttl=128/{print "128"}' ping.txt`
e=`awk '/ttl=254/{print "254"}' ping.txt`
if [ $b="55" ]
then
 echo Kali/Linux
elif [ $c="64" ]
then
 echo Linux
elif [ $d="128" ]
then
 echo Windows
else 
 echo Solaris/AIX/Unknown
fi
rm ping.txt
exit 0

