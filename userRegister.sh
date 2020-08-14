#!/bin/bash -x

echo ""
echo "Welcome to user verification program"
echo ""

read -p "Enter a valid first name: " FirstName

read -p "Enter a valid last name: " LastName

NamePattern="^[[:upper:]]{1}[[:lower:]]{2,}$"

if [[ $FirstName =~ $NamePattern && $LastName =~ $NamePattern ]]
then
	echo "Valid name"
else
	echo "Invalid name"
fi
echo ""

read -p "Enter a valid email ID: " email

ePattern="^[[:lower:]]{1,}([._+-][0-9a-z]{1,})*[0-9]{0,}@([0-9]|[[:lower:]]){1,}[.][[:lower:]]{2,4}([.][[:lower:]]{2,4}){0,1}$"

if [[ $email =~ $ePattern ]]
then
	echo "Valid email"
else
	echo "Invaid email"
fi
echo ""

read -p "Enter mobile number: " MobileNumber

mPattern="^[91]{0,}[7-9]{1}[0-9]{9}$"

if [[ $MobileNumber =~ $mPattern  ]]
then
	echo "Valid mobile number"
else
	echo "Invalid mobile number"
fi
echo ""

read -p "Enter password: " pass

specialCharCount=0

if [[ ${#pass} -ge 8 && $pass = *[[:upper:]]* && $pass = *[[:digit:]]* ]]
then

	for (( i=0; i<${#pass}; i++ ))
	do

        x="${pass:$i:1}"

        if [[ ! $x =~ [[:alnum:]] ]]
        then
		((specialCharCount++))
        fi
	done



	if [[ $specialCharCount -eq 1 ]]
        then
                echo "valid password"

        elif [[ $specialCharCount -eq 0 ]]
        then
                echo "Invalid password. Add a special character in password"

        elif [[ $specialCharCount -ge 2 || $specialCharCount -eq 2 ]]
        then
                echo "Invalid password. Dont add more than one special character"
        fi

else
	echo "Invalid password"
fi
echo ""
