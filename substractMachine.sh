#!/bin/bash

# In the Bash script it will take 2 command agruments.
# count down the differences of 1 on two agruments by substraction.
# Argument should have a differnce of 1.



# For the argruments less then 2
if [ $# -lt 2 ]
then
	echo  "At the most 2 arguments are needed"
	echo  "Exit..."
	exit 1

# For the arguments grater then 2
elif [ $# -gt 2 ]
then
	echo  "No need for more than 2 arguments to execute this script."
	echo  "Exit..."
	exit 2

# For agruments equal to  2
elif [ $# -eq 2 ]
then
	# Checking if the agruments are different 
	if [ $1 -eq $2 ]
	then
		echo  "The difference of the two arguments are 0"
		echo  "Exit..."
		exit 3	
	# Checking if the agruments is greater
	elif [ $1 -gt $2 ]
	then
		diff=$(( $1-$2 ))
		echo  "The difference between $1 and $2 is $diff"
	else
		diff=$(( $2-$1 ))
		echo  "The difference between $2 and $1 is $diff"
	fi
	# Display difference count down
	while [ $diff -gt 0 ]
	do
		echo  "Count Down = $diff"
		((diff--))	
	done

fi


