#!/bin/sh

#Bitwarden
rclone sync -v --stats-one-line Local:/data/bitwarden_rs-local-backup/backups Nextcloud:/Bitwarden >> /proc/1/fd/1 2>&1

#Home Assistant
rclone sync -v --stats-one-line Local:/data/homeassistant/backups Nextcloud:/Home_Assistant >> /proc/1/fd/1 2>&1

#Nextcloud
rclone sync -v --stats-one-line Local:/data/nextcloud/backups Nextcloud:/Nextcloud >> /proc/1/fd/1 2>&1