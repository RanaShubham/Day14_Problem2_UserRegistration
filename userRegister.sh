#!/bin/bash -x

echo "Welcome to user verification program"

read -p "Enter a valid first name: " FirstName

FnPattern="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $FirstName =~ $FnPattern ]]
then
	echo "Valid name"
else
	echo "Invalid name"
fi
