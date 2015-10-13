#Script to print table of number
#! /bin/bash
echo "Enter the number to print its table"
read a
for (( i=1;i<=10;i++ ))
do
 echo "$a * $i = " $(($a*$i))
done

