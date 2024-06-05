#!/bin/bash

# Variables
SOURCE_DIR="/path/to/source"
DEST_DIR="/path/to/destination"
LOG_FILE="/path/to/logfile.log"

# Perform the backup
rsync -av --delete $SOURCE_DIR $DEST_DIR

# Check if the backup was successful
if [ $? -eq 0 ]; then
  echo "Backup completed successfully at $(date)" >> $LOG_FILE
else
  echo "Backup failed at $(date)" >> $LOG_FILE
fi
