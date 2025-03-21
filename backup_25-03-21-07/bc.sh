#!/bin/bash
#CREATING A BACKUP WITH ROTATION
#CREATING A FUNCTION
<< help
this is multi line comment for this 

help

function display_usage {
	echo "usage: $0 path of sourcedir"
}


#checking the dir is exits or not

if [ $# -eq 0 ] || [ ! -d "$1" ]; then
	echo " invalid dir path"
	display_usage
	exit 1
fi
  
#STORING THE SOURCE DIR PATH IN $

source_dir="$1"
destination_dir="/home/ubuntu/git2"
function create_backup {
	timestamp=$(date '+%y-%m-%d-%H')
	backup_dir="${source_dir}/backup_${timestamp}"
	mkdir -p "$destination_dir/gitbackup"
	echo "backup fot gitbackup is completed"
}

#ROTATION OF BACKUP









 


