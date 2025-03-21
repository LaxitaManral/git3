#!/bin/bash
#CREATING MONITER PROCESS


read -p "enter the choice (status/pid): " choice

if [ "$choice" == "status" ]; then
	systemctl status $1
	echo "system status"
elif [ "$choice" == "pid" ]; then
	pgrep $1
	echo " pid "
else
	echo "wrong choice"
fi

