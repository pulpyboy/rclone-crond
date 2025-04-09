#!/bin/sh

#Ark-Office Data
rclone sync -v --stats-one-line ark-ofc: /data/Ark-Office >> /proc/1/fd/1 2>&1

#Ankit-Data
rclone sync -v --stats-one-line ankit-od: /data/Ankit-od >> /proc/1/fd/1 2>&1

#Sunny-Data
rclone move -v --stats-one-line sunny-od: /data/Sunny-od >> /proc/1/fd/1 2>&1
