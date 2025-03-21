#!/bin/bash
#CREATING BACKUP BY USING FUN

function create_path {
	echo "path: $0 path of source dir"
}

if [ $# -eq 0 ] || [ ! -d $1 ]; then
	echo "please provide a valid path"
	create_path
	exit 1
fi

source_dir=$1
destination_dir="/home/ubuntu/git3"

function create_backup {

	timestamp=$(date '+%y-%m-%d-%H' )
	backup_dir="${destination_dir}/backup_${timestamp}"
	sudo mkdir -p "$backup_dir"
	sudo chmod 755 "$backup_dir"
	sudo cp -r "$source_dir"/* "$backup_dir"
	echo "backup created succesfully"
}


create_backup
