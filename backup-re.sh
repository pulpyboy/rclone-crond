#!/bin/bash

# set the path to the folder you want to check
folder_path="/data/Ark-Office"

# get the most recently modified file in the folder
# rclone lsl Nextcloud:/Bitwarden --max-age 12h
most_recent_file=$(ls -t "$folder_path" | head -1)

# print the name of the most recently modified file
echo "The most recent file in $folder_path is: $most_recent_file"
