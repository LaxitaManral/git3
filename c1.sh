#!/bin/bash
#creating a user 

<< help
username="iti"
password="test@123"

sudo useradd -m $username
echo "$password\n$password" | sudo passwd "$username"

echo "user created "
help


#Creating user by asking user input 
<< help
read -p "enter the username: " username
read -s -p "enter the password: " password
read -s -p "re-enter the password: " password_confrim
sudo useradd -m "$username"
echo -e "$password/n$password" | sudo passwd "$username"

echo "user created sucessfully"
help

#creating user by using if else


read -p "enter the username: " username

if id "$username" &>/dev/null; then
	echo "user alrdy exits"
	exit 1
fi
read -s -p "enter the password: " password
read -s -p "enter the password: " password_confrim

if [ "$password" != "$password_confrim" ]; then
	echo " password do not match "
	exit 1
fi

sudo useradd -m "$username"
if [ $? -nq 0 ]; then
	echo " user creation fail "
	exit 1
fi

echo -e "$password\n$password" | sudo passwd "$username"
if [ $? -eq 0 ]; then
	echo " user craeted successfully "
	exit 1
fi
