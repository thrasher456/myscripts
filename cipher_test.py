#!/bin/python3
import string
import codecs

plain_text=input("Enter plain text to convert: ")
num=input("Enter ceaser cipher num: ")
enc = ""
for i in range(0,len(plain_text)):
	if plain_text[i]==" ":
		enc+=plain_text[i].replace(" ","@")
	else:
		enc+=(chr(ord(plain_text[i])+int(num)%26))
print(enc,end="")