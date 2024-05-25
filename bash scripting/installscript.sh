#!/bin/bash

#command=/usr/bin/htop

#if [ -f $commmand ]
#then
#	echo "The command is $command"
#	$command
#else
#	echo "Nothing to see here"
#fi


#lets see the two syntax of if statements
#this first one was for test commands

#this one is for command itself

program=htop

if command -v $program
then
	echo "This program does exist and now we execute it."
	$program
else
	echo "The program doesn't exist and to execute it we need to install it first."
	#sudo apt-get update && sudo apt-get intsall htop
fi
