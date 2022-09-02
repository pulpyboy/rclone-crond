#!/bin/sh


rclone sync Local:data/bitwarden_rs-local-backup/backups Nextcloud:Bitwarden
# rclone sync Local:/data Nextcloud:
