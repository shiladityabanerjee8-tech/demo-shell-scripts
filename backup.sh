#!/bin/bash

<<info
this shell script will take periodic backups
eg. 
./backup.sh <source> <dest>
src= /home/ubuntu/scripts
dest= /home/ubuntu/backups
info
src=$1
dest=$2

echo "Source = $src"
echo "Destination = $dest"

timestamp=$( date '+%Y-%m-%d-%H-%M')

zip -r  "$dest/backup-$timestamp.zip" $src > /dev/null

aws s3 sync $dest s3://shiladitya-batch9-backup

echo "backup done and uploaded to s3"





