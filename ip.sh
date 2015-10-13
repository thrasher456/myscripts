#Simple script to identify class of input IP 
#! /bin/bash
echo "Enter the IP :"
read a
echo $a >> ip.txt
b=`awk -F. {'print $1'} ip.txt`
if [ $b -ge 1 ] && [ $b -le 126 ] ; then
 echo class A
elif [ $b -ge 128 ] && [ $b -le 191 ] ; then
 echo class B
elif [ $b -ge 192 ] && [ $b -le 223 ] ; then
 echo class C
elif [ $b -ge 224 ] && [ $b -le 239 ] ; then
 echo class D
else 
 echo class E
fi
rm ip.txt
rm ip.txt.save

