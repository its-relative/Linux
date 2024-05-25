#!/bin/bash

#which bash
#to check for shebang path

echo "Lets do the file check shall we"

if [ -f ./ifscript.sh ]
then
	echo "The file exists"
else
	echo "The file doesn't exist"
fi
