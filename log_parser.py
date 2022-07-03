#!/bin/python3
import sys
import re

file = open(sys.argv[1],"r")
#print(file.read())
regex_out=re.findall("[a-zA-Z0-9]+\.[a-z]{2,3}\\b",file.read())
print("Following are the domains: \n")
print(*regex_out,sep="\n")