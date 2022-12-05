#!/bin/bash
#Create a new user or not if it already exists

echo "Hello! Please enter your name to verify if you need an account created or one is already setup for you:"
read username
echo "Please standy by while we check your status"

if getent passwd "$username" > /dev/null 2>&1;
 then
	echo "Username already exists within our database"
else
	echo "It appears we need to create the account, enter password to create the account."
	sudo useradd -m $username
	echo "Account created!"
fi
