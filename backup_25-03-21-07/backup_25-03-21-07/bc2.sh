#!/bin/bash
#
#!/bin/bash

# Function to display usage information
function display_usage {
    echo "Usage: $0 /path/to/source_directory"
}

# Debug: Show received arguments
echo "DEBUG: Argument received: '$1'"

# Check if a valid directory path is provided
if [ $# -eq 0 ]; then
    echo "Error: No directory path provided."
    display_usage
    exit 1
fi

if [ ! -d "$1" ]; then
    echo "Error: The directory '$1' does not exist."
    exit 1
fi

# Storing the source directory path
source_dir="$1"
destination_dir="/home/ubuntu/git2"

# Function to create a timestamped backup folder
function create_backup {
    timestamp=$(date '+%Y-%m-%d-%H%M%S')  # Current timestamp
    backup_dir="${destination_dir}/gitbackup_${timestamp}"

    echo "Creating backup in: $backup_dir"
    mkdir -p "$backup_dir"
    echo "Backup completed successfully!"
}
#call the backup fun
create_backup
#Call the backup function
# ROTATION WITH }


