#!/bin/bash

set -e
#set -x

echo "==========================="
echo " Linux server health check "
echo "==========================="

echo ""
echo "hostname and details"
hostname && hostnamectl

echo ""
echo "current date and time"
date

echo ""
echo "system up time"
uptime

echo ""
echo "CPU load"
top -bn1 | grep "load average"

echo ""
echo "memory usage"
free -h

echo ""
echo "disk usage"
df -h | head

echo ""
echo "Top 5 Memory consuming processes"
top -eo pid,ppid,cmd,%cpu,%mem --sort=-%mem | head -6

echo ""
echo "Top 5 CPU consuming processes"
top -eo pid,ppid,cmd,%cpu,%mem --sort=-%cpu | head -6

echo ""
echo "Running services"
systemctl list-units --type=services --state=running | head 

echo "------------------------"
echo " health check completed "
echo "------------------------"
