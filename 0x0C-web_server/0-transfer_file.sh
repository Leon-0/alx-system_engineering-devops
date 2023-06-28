#!/bin/bash

# Check if all required parameters are provided
if [ $# -lt 4 ]; then
    echo "Usage: $0 PATH_TO_FILE IP USERNAME PATH_TO_SSH_KEY"
    exit 1
fi

# Assign the provided parameters to variables
file_path="$1"
server_ip="$2"
username="$3"
ssh_key_path="$4"

# Transfer the file using scp
scp -o StrictHostKeyChecking=no -i "$ssh_key_path" "$file_path" "$username@$server_ip:~/"

# Check the exit status of scp command
if [ $? -eq 0 ]; then
    echo "File transferred successfully."
else
    echo "Failed to transfer the file."
fi
