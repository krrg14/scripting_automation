#!/bin/bash
set -e
LOG_DIR="/var/log"
BACKUP_DIR="/var/log/archive"

mkdir -p $BACKUP_DIR

echo "Starting log Rotation.."

find $LOG_DIR -name "*.log" -mtime +7 -exec gzip {} \;

find $LOG_DIR -name "*.gz" -exec mv {} $BACKUP_DIR \;

find $BACKUP_DIR -name "*.gz" -mtime +30 -delete

echo "Log Rotation Completed."
