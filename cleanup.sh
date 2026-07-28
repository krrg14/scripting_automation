#!/bin/bash
set -e

echo "starting the cleanup...."

echo "removing the temporary files"
sudo systemd-tmpfiles --clean

echo "Cleaning package cache.."
apt clean 2>/dev/null
yum clean all 2>/dev/null
dnf clean all 2>/dev/null

echo "Deleting old Log files..."
find /var/log -type f --name "*.log" -mtime +30 -delete

echo "deleting Old core dumps.."
find / -type f -name "core*" -delete 2>/dev/null

echo "Cleanup Completed Successfully."