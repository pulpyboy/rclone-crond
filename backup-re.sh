#!/bin/bash

# set the path to the folder you want to check
folder_path="Nextcloud:/Bitwarden"

# get the most recently modified file in the folder
most_recent_file=$(rclone ls -t "$folder_path" | head -1)

# print the name of the most recently modified file
echo "The most recent file in $folder_path is: $most_recent_file"
