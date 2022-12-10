#!/bin/bash
#Create a new user or not if it already exists

echo "Hello! Please enter your name to verify if you need an account created or if it already exists:"
read username
echo "Please standy by while we check your status"

if getent passwd "$username" > /dev/null 2>&1;
 then
        echo "Username already exists within our system. Please login with your credentials"
else
        echo "It appears we need to create the account. Default password will be username@linux"
        sudo useradd -m $username
        password="$username@linux"
        echo -e "$password\n$password\n" | sudo passwd $username
        echo "Account created!"
fi
