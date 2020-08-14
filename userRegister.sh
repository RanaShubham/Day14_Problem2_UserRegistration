#!/bin/bash -x

echo "Welcome to user verification program"

read -p "Enter a valid first name: " FirstName
read -p "Enter a valid last name: " LastName

NamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $FirstName =~ $NamePattern || $LastName =~ $NamePattern ]]
then
	echo "Valid name"
else
	echo "Invalid name"
fi
