#Script to read contents of passwd and shadow file (Needs root)
#! /bin/bash
a=`awk -F: '/root/ {print $1}' /etc/shadow`
b=`awk -F: '/root/ {print $2}' /etc/shadow`
red='\033[1;35m'
echo -e "${red}Password of $a is $b"
echo "Press any key to continue reading the passwd and shadow file for users "
read x
awk -F: '{print }' /etc/passwd | less
awk -F: '{print }' /etc/shadow | less

