#!/bin/bash

# options
YEAR=2017

# /options


TARGET=$(date -d"$YEAR"-01-01 +%s); 

while sleep 1; 
	REMAINING=$(($TARGET - `date +%s`)); 
	clear; 
	test $REMAINING -gt 0; 
do 
	# print remaining seconds
	# requires "figlet" package
	figlet -W $REMAINING; 
done; 

echo 'Happy New Year!'
