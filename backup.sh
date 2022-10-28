#!/bin/sh

#Bitwarden
rclone sync Local:/data/bitwarden_rs-local-backup/backups Nextcloud:/Bitwarden
# rclone sync Local:/data Nextcloud:

#Home Assistant
rclone sync Local:/data/homeassistant/backups Nextcloud:/Home_Assistant

#Nextcloud
rclone sync Local:/data/nextcloud/backups Nextcloud:/Nextcloud