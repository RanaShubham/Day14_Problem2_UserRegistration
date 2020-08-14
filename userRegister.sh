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

read -p "Enter a valid email ID: " email

ePattern="^[[:lower:]]{1,}([.][[:lower:]]{1,}){0,}@[[:lower:]]{2,}[.][[:lower:]]{2,4}([.][[:lower:]]{2,}){0,1}$"

if [[ $email =~ $ePattern ]]
then
	echo "Valid email"
else
	echo "Invaid email"
fi

read -p "Enter mobile number: " MobileNumber

mPattern="^[91]{0,}[7-9]{1}[0-9]{9}$"

if [[ $MobileNumber =~ $mPattern  ]]
then
	echo "Valid mobile number"
else
	echo "Invalid mobile number"
fi
